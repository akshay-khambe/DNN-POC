<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


    <div id="imageList"></div>
    <div class="info">Drag image to change the position. Click image to edit the details.</div>

    <!-- <form id="slideform" name="slideform2" method="post" action="" target="slideframe" enctype="multipart/form-data">
        <input id="fileImage" name="fileImage" type="file" style="font-size:17px;width:250px;" accept="image/*" />
        <input id="hidCustomVal" name="hidCustomVal" type="hidden" />
        <div class="loading">
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
        </div>
    </form> -->

    <button id="fileImageButton">Add Image</button>


    <iframe id="slideframe" name="slideframe" style="width:1px;height:1px;border:none;visibility:hidden;position:absolute"></iframe>
   
    <br />
    <div class="chk-list">
    <label>
        <input id="chkAuto" type="checkbox"  /> Autoplay
        &nbsp;&nbsp;
        Autoplay Delay: <input id="chkAutoDelay" type="number"  value="5000" style="width: 60px;height: 30px; text-align: center;" /> ms
        &nbsp;&nbsp;

    </label>

   
    

 
    <label>
        <input id="chkArrow" type="checkbox"/> Arrow Navigation &nbsp;&nbsp;
    </label>
    
    <label>
        <input id="chkDots" type="checkbox"/> Dots Navigation &nbsp;&nbsp;
    </label>

    <label>
        <input id="chkFade" type="checkbox"  /> Fade &nbsp;&nbsp;
    </label><br /><br />
    <label>
        Speed: <input id="chkspeed" type="number" value="300"  value="5000" style="width: 60px;height: 30px; text-align: center;" /> ms
         &nbsp;&nbsp;
 
     </label>


</div>


    <script src="<%= SkinPath %>../scripts/jquery.min.js"></script>

    <script src="<%= SkinPath %>../scripts/jquery-ui.min.js"></script>
    <script>
        var $activeModule;
        var image_path=parent.image_path;
        var currParent =parent;
        jQuery(document).ready(function ($) {

            //Passing custom value (defined by customval param when initiating ContentBox.js or ContentBuilder.js). Can be used to pass userid in a CMS app to save file on user's folder.
            var customval = getCustomVal();
            jQuery('#hidCustomVal').val(customval);

            //Show or hide Slider Height setting. Height is needed if slider is embedded on content. For embedding in a box, height is set 100% automatically.
            if (isModuleInBox()) {
                $('#divHeight').css('display', 'none');
            } else {
                $('#divHeight').css('display', 'inline-block');
            }

            //Get current Settings

            /*
            [
                {
                    auto: false, 
                    arrow: true, 
                    dots: true, 
                    fade: false, 
                    height: '300px',
                    images: [
                        {
                            src: 'test1.jpg',
                            caption: 'Lorem ipsum',
                            position: 'bottom left'
                        },
                        {
                            src: 'test2.jpg',
                            caption: 'Lorem ipsum',
                            position: 'bottom left'
                        }
                    ]
                }
            ]
            */
            var settings = getSettings();
            if (settings != 'undefined') {
                try {
                    var json = $.parseJSON(settings);
                    $(json).each(function (i, val) {
                        $.each(val, function (k, v) {
                            //alert(k  + ' ' + v)
                            if (k == 'auto') jQuery("#chkAuto").prop("checked", v);
                            if (k == 'autodelay') jQuery("#chkAutoDelay").val(v);
                            if (k == 'arrow') jQuery("#chkArrow").prop("checked", v);
                            if (k == 'dots') jQuery("#chkDots").prop("checked", v);
                            if (k == 'fade') jQuery("#chkFade").prop("checked", v);
                            if (k == 'speed') jQuery("#chkspeed").val(v);
                           
                            if (k == 'height') jQuery("#txtHeight").val(v);
                            if (k == 'images') {
                                $.each(v, function (m, n) {
                                    jQuery('#imageList').append('<div><img src="<%= SkinPath %>' + n.src + '" data-caption="' + (n.caption + '' == 'undefined' ? '' : n.caption) + '" data-width="' + n.width + '" data-link="' + (n.link + '' == 'undefined' ? '' : n.link) + '" data-align="' + (n.align + '' == 'undefined' ? '' : n.align) + '" data-position="' + n.position + '" /><span>&#10005;</span></div>');
                                    constructList();
                                });
                            }
                        });
                    });
                } catch (e) { }
            }

            //Upload image
            var handler = getModuleConfig('moduleSaveImageHandler');
            jQuery('#fileImage').bind('change', function (e) {
                jQuery('.loading').css('display', 'inline-block');
                jQuery('#slideform').attr('action', handler);
                jQuery('#slideform').submit();
            });

            jQuery('#fileImageButton').on("click",function(){
                currParent.jQuery("#DnnMediaBox").attr("type","modules").attr("multiple","true").fadeIn().find("iframe").attr("src",currParent.getMediaUrl({mimid:currParent.jQuery(".is-wrapper").data("mid")}));   
            })

            currParent.jQuery("#modulesImageVal").on("change",function(){
                var v= $(this).val();
                    
                v = v.split(",");
                var curr="";
                jQuery('#imageList img').each(function(i){
                    if(i){curr +=","};
                    curr +=$(this).attr("src");
                })
                curr = curr.split(",");

                for (u in v){
                    if(curr.indexOf( v[u])==-1){
                     jQuery('#imageList').append('<div><img src="<%= SkinPath %>' + v[u] + '" /><span>&#10005;</span></div>');
                    }
                }
           
                currParent.jQuery("#DnnMediaBox").removeAttr("multiple");
                $(this).off();
                constructList();
                applyBehaviour();

            })

            

            //If there is no settings, so read directly from the html (dom).
           // $activeModule = currParent.jQuery('#divCustomModuleTool').data('active');
           
        var  $activeModuleHTML = $( decodeURIComponent(currParent.jQuery("[data-module-active]").attr("data-html")));

            
            if (jQuery("#imageList").children().length == 0) {
                $activeModuleHTML.find('.swiper-slide').each(function () {
                    if (jQuery(this).css('background-image').indexOf('url(') != -1) {
                        var bgurl = jQuery(this).css('background-image');
                        bgurl = /^url\((['"]?)(.*)\1\)$/.exec(bgurl);
                        bgurl = bgurl ? bgurl[2] : "";
                        jQuery('#imageList').append('<div><img src="<%= SkinPath %>' + bgurl + '" /><i>&#10005;</i></div>')
                        constructList();
                    }
                });
            }

           //Apply events
            jQuery('.chk-list input').bind('change', function (e) {
                constructList();
            });
           

            applyBehaviour();

            //Make image list sortable
            jQuery("#imageList").sortable({
                stop: function () {
                    constructList();
                },
                delay: 200
            });
            jQuery("#imageList").on("click","i,span",function(){
                $(this).parent().remove();
                constructList();
            })


            jQuery(document).unbind('mousedown');
            jQuery(document).bind('mousedown', function (event) {
                if (jQuery(event.target).parents('#divCaption').length > 0 || jQuery(event.target).attr("id") == 'divCaption' || jQuery(event.target).prop("tagName").toLowerCase() == 'img') {

                } else {

                    if (parseInt(jQuery('#divCaption').css('right')) == 0) {//Close                        
                        jQuery('#divCaption').animate({
                            right: '-=400px'
                        }, 200);
                    }

                }
            });

        });

        //Function called each time an image has been uploaded.r
        function sliderImageSaved(s) {
            jQuery('#imageList').append('<div><img src="<%= SkinPath %>' + s + '" /><span>&#10005;</span></div>');
            jQuery('.loading').css('display', 'none');
            jQuery('#fileImage').val('');
            constructList();
            applyBehaviour();
        }

        function applyBehaviour(){
            jQuery("#imageList img").unbind('click');
            jQuery("#imageList img").click(function () {
                jQuery("#imageList img").removeClass('selected');
                jQuery(this).addClass('selected');

                if (parseInt(jQuery('#divCaption').css('right')) < 0) {//Open                        
                    jQuery('#divCaption').animate({
                        right: '+=400px'
                    }, 200);
                }

                if (jQuery('#divCaption').find('#imgSelected').length == 0) {
                    jQuery('#divCaption').prepend('<img id="imgSelected" src="<%= SkinPath %>' + jQuery(this).attr('src') + '" style="height:50px;opacity:0.75;"/>');
                } else {
                    jQuery('#imgSelected').attr('src', jQuery(this).attr('src'));
                }

                var s = decodeURIComponent(jQuery(this).attr('data-caption'));
                if (s == 'undefined') s = '';
                jQuery('#txtCaption').val(s);

                var s2 = jQuery(this).attr('data-link')+'';
                if (s2 == 'undefined') s2 = '';
                jQuery('#txtLink').val(s2);

                var s3 = jQuery(this).attr('data-position') + '';
                if (s3 == 'undefined') s3 = '';
                jQuery('#selPlacement').val(s3);

                var s4 = jQuery(this).attr('data-width') + '';
                if (s4 == 'undefined') s4 = '';
                jQuery('#txtWidth').val(s4);

                var s5 = jQuery(this).attr('data-align') + '';
                if (s5 == 'undefined') s5 = '';
                jQuery('#selAlign').val(s5);

                constructList();
            });

            jQuery("#imageList > div > span").unbind('click');
           
        }

        //Generate html code, based on the image list and configuration
        function constructList() {
            
            var html = '';

                var op ='';

                if(jQuery("#chkAuto").is(":checked")){
                   
                    op += ' data-autoplay=\'{"delay":'+(jQuery("#chkAutoDelay").val()?jQuery("#chkAutoDelay").val():5000)+'}\'';
                }
                if(!jQuery("#chkArrow").is(":checked")){
                    op += ' data-navigation="false"';
                }
                if(!jQuery("#chkDots").is(":checked")){
                    op += ' data-pagination="false"';
                }
                if(jQuery("#chkFade").is(":checked")){
                    op += ' data-effect="fade"';
                }
                if(jQuery("#chkspeed").val()){
                    op += ' data-speed="'+jQuery("#chkspeed").val()+'"';
                }


                html = '<div id="{id}" class="swiper-container section-carousel-bg" '+op+'><div class="swiper-wrapper">';
            var imglist = '';
            jQuery('#imageList img').each(function () {
                var imgSrc = jQuery(this).attr('src');
                html += '<div class="swiper-slide" style="background-image: url(\'' + imgSrc + '\');"></div>';
            });
            html += '</div></div>';
 

            html = html.replace(/{id}/g, makeid()).replace(/{id2}/g, makeid()).replace(/{id3}/g, makeid()).replace(/{id4}/g, makeid()).replace(/{id5}/g, makeid()).replace(/{id6}/g, makeid()).replace(/{id7}/g, makeid()).replace(/{id8}/g, makeid()).replace(/{id9}/g, makeid()).replace(/{id10}/g, makeid()).replace(/{id11}/g, makeid()).replace(/{id12}/g, makeid()).replace(/{id13}/g, makeid()).replace(/{id14}/g, makeid()).replace(/{id15}/g, makeid()).replace(/{id16}/g, makeid()).replace(/{id17}/g, makeid()).replace(/{id18}/g, makeid()).replace(/{id19}/g, makeid()).replace(/{id20}/g, makeid());
            html = html.replace(/\[\%IMAGE_PATH\%\]/g, image_path);
            html = html.replace(/\%5B\%25IMAGE_PATH\%25\%5D/g, image_path);

            setHtml(html);

       
            var settings = '[{"auto":' + jQuery("#chkAuto").is(":checked") + ',"autodelay":' + jQuery("#chkAutoDelay").val() + ',"arrow":' + jQuery("#chkArrow").is(":checked") + ',"dots":' + jQuery("#chkDots").is(":checked") + ',"fade":' + jQuery("#chkFade").is(":checked") + ',"speed":'+$("#chkspeed").val()+',"images":[' + imglist + ']}]';


            
            setSettings(settings);
        }

        /*! jQuery UI Touch Punch 0.2.3 | Copyright 2011–2014, Dave Furfero | Dual licensed under the MIT or GPL Version 2 licenses. */
        eval(function (p, a, c, k, e, r) { e = function (c) { return (c < a ? '' : e(parseInt(c / a))) + ((c = c % a) > 35 ? String.fromCharCode(c + 29) : c.toString(36)) }; if (!''.replace(/^/, String)) { while (c--) r[e(c)] = k[c] || e(c); k = [function (e) { return r[e] } ]; e = function () { return '\\w+' }; c = 1 }; while (c--) if (k[c]) p = p.replace(new RegExp('\\b' + e(c) + '\\b', 'g'), k[c]); return p } ('(7(4){4.w.8=\'H\'G p;c(!4.w.8){f}d 6=4.U.D.L,g=6.g,h=6.h,a;7 5(2,r){c(2.k.F.J>1){f}2.B();d 8=2.k.q[0],l=p.N(\'O\');l.S(r,i,i,V,1,8.W,8.X,8.Y,8.A,b,b,b,b,0,C);2.z.E(l)}6.m=7(2){d 3=e;c(a||!3.I(2.k.q[0])){f}a=i;3.j=b;5(2,\'K\');5(2,\'s\');5(2,\'M\')};6.n=7(2){c(!a){f}e.j=i;5(2,\'s\')};6.o=7(2){c(!a){f}5(2,\'P\');5(2,\'Q\');c(!e.j){5(2,\'R\')}a=b};6.g=7(){d 3=e;3.u.T({v:4.9(3,\'m\'),x:4.9(3,\'n\'),y:4.9(3,\'o\')});g.t(3)};6.h=7(){d 3=e;3.u.Z({v:4.9(3,\'m\'),x:4.9(3,\'n\'),y:4.9(3,\'o\')});h.t(3)}})(4);', 62, 62, '||event|self|jQuery|simulateMouseEvent|mouseProto|function|touch|proxy|touchHandled|false|if|var|this|return|_mouseInit|_mouseDestroy|true|_touchMoved|originalEvent|simulatedEvent|_touchStart|_touchMove|_touchEnd|document|changedTouches|simulatedType|mousemove|call|element|touchstart|support|touchmove|touchend|target|clientY|preventDefault|null|mouse|dispatchEvent|touches|in|ontouchend|_mouseCapture|length|mouseover|prototype|mousedown|createEvent|MouseEvents|mouseup|mouseout|click|initMouseEvent|bind|ui|window|screenX|screenY|clientX|unbind'.split('|'), 0, {}));

        /* 
        COMMON METHODS FOR MODULE.
        */
        function isModuleInBox() {

            var $activeModule = currParent.jQuery("[data-module-active]"); //get active module
            if ($activeModule.hasClass('is-overlay-content')) {
                //Module in Box
                return true;
            } else {
                //Module on Content
                return false;
            }

        }
        function getCustomVal() {
            var customval;
            if (currParent.jQuery('.is-wrapper').length > 0) {
                customval = currParent.jQuery('.is-wrapper').data('contentbox').settings.customval;
            } else {
                customval = currParent._cb.settings.customval
            }
            return customval;
        }
        function getModuleConfig(key) {
            var config; //Use existing handler to save/upload image.
            if (currParent.jQuery('.is-wrapper').length > 0) {
                config = currParent.jQuery('.is-wrapper').data('contentbox').settings.moduleConfig;
            } else {
                config = currParent._cb.settings.moduleConfig
            }
            var result = '';
            $(config).each(function (i, val) {
                result = eval('val.' + key);
            });
            return result;
        }
        function getHtml() {
            var $activeModule = currParent.jQuery("[data-module-active]"); //get active module    
            return decodeURIComponent($activeModule.attr("data-html"));
        }

        function getSettings() {
            var $activeModule = currParent.jQuery("[data-module-active]"); //get active module 
            return decodeURIComponent($activeModule.attr('data-settings'));
        }

        function setHtml(html) {
            if (isModuleInBox()) {
                //Slider in Box
                currParent.jQuery('#hidModuleCode').val(html);
            } else {
                //Slider on Content
                currParent.jQuery('#hidContentModuleCode').val(html);
            }
        }

        function setSettings(settings) {
            if (isModuleInBox()) {
                //Slider in Box
                currParent.jQuery('#hidModuleSettings').val(settings);
            } else {
                //Slider on Content
                currParent.jQuery('#hidContentModuleSettings').val(settings);
            }
        }

        // source: http://stackoverflow.com/questions/1349404/generate-a-string-of-5-random-characters-in-javascript
        function makeid() {
            var text = "";
            var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            for (var i = 0; i < 2; i++)
                text += possible.charAt(Math.floor(Math.random() * possible.length));

            var text2 = "";
            var possible2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            for (var i = 0; i < 5; i++)
                text2 += possible2.charAt(Math.floor(Math.random() * possible2.length));

            return text + text2;
        }
    </script>


