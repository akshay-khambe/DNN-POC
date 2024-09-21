<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<div class="is-category-list">
    <!--<a href="<%= SkinPath %>" data-cat="0">Default</a>-->
    <div  id="SectionCat">
        <div>Simple Start:</div>

    </div>
    <div>
        <div> &nbsp; </div>
        <a href="<%= SkinPath %>" class="more-examples">More</a>
        <a href="<%= SkinPath %>" class="custom-examples">Custom</a>
    </div>
</div>

<div id="morecat" class="is-more-categories">
</div>


<div class="is-design-list">
</div>
<div class="is-design-list2">
    <div class="design-console">
      
        <div class="search">
            <input type="text" class="text" />
            <button class="button">SEARCH</button>
            <span class="icon ion-android-close close lnr lnr-cross2"></span>
        </div>
        <label title="Import" class="import" for="importfile"><svg class="svg-icon" viewBox="0 0 20 20">
                <path  d="M8.416,3.943l1.12-1.12v9.031c0,0.257,0.208,0.464,0.464,0.464c0.256,0,0.464-0.207,0.464-0.464V2.823l1.12,1.12c0.182,0.182,0.476,0.182,0.656,0c0.182-0.181,0.182-0.475,0-0.656l-1.744-1.745c-0.018-0.081-0.048-0.16-0.112-0.224C10.279,1.214,10.137,1.177,10,1.194c-0.137-0.017-0.279,0.02-0.384,0.125C9.551,1.384,9.518,1.465,9.499,1.548L7.76,3.288c-0.182,0.181-0.182,0.475,0,0.656C7.941,4.125,8.234,4.125,8.416,3.943z M15.569,6.286h-2.32v0.928h2.32c0.512,0,0.928,0.416,0.928,0.928v8.817c0,0.513-0.416,0.929-0.928,0.929H4.432c-0.513,0-0.928-0.416-0.928-0.929V8.142c0-0.513,0.416-0.928,0.928-0.928h2.32V6.286h-2.32c-1.025,0-1.856,0.831-1.856,1.856v8.817c0,1.025,0.832,1.856,1.856,1.856h11.138c1.024,0,1.855-0.831,1.855-1.856V8.142C17.425,7.117,16.594,6.286,15.569,6.286z"></path>
            </svg>
            <input type="file" style="display:none" accept=".json" id="importfile" name="importfile">
        </label>

        <a class="export" title="Export" href="<%= SkinPath %>#"><svg class="svg-icon" viewBox="0 0 20 20" >
            <path d="M15.608,6.262h-2.338v0.935h2.338c0.516,0,0.934,0.418,0.934,0.935v8.879c0,0.517-0.418,0.935-0.934,0.935H4.392c-0.516,0-0.935-0.418-0.935-0.935V8.131c0-0.516,0.419-0.935,0.935-0.935h2.336V6.262H4.392c-1.032,0-1.869,0.837-1.869,1.869v8.879c0,1.031,0.837,1.869,1.869,1.869h11.216c1.031,0,1.869-0.838,1.869-1.869V8.131C17.478,7.099,16.64,6.262,15.608,6.262z M9.513,11.973c0.017,0.082,0.047,0.162,0.109,0.226c0.104,0.106,0.243,0.143,0.378,0.126c0.135,0.017,0.274-0.02,0.377-0.126c0.064-0.065,0.097-0.147,0.115-0.231l1.708-1.751c0.178-0.183,0.178-0.479,0-0.662c-0.178-0.182-0.467-0.182-0.645,0l-1.101,1.129V1.588c0-0.258-0.204-0.467-0.456-0.467c-0.252,0-0.456,0.209-0.456,0.467v9.094L8.443,9.553c-0.178-0.182-0.467-0.182-0.645,0c-0.178,0.184-0.178,0.479,0,0.662L9.513,11.973z"></path>
        </svg></a>

            <div class="message"></div>


    </div>      
</div>



<script src="<%= SkinPath %>../scripts/jquery.min.js"></script>
<script src="<%= SkinPath %>basic.min.js" type="text/javascript"></script>   
    
<script>
    /* Utils */
    function makeid() {//http://stackoverflow.com/questions/1349404/generate-a-string-of-5-random-characters-in-javascript
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


    var indexes ={};
    if(parent.data_basic.snippets){
        parent.data_basic.snippets.forEach((item,index,array)=>{
            if(item["name"]){indexes[item["name"]] = index}
        })
    }

    var getSnippetCode = function(name,id){
        if(id){
        return parent.data_basic.snippets[indexes[name]].html.replace(/{id}/g,id);
        }else{
            return parent.data_basic.snippets[indexes[name]].html;
        }            
    }
    var csstemplate = parent.csstemplate;

</script>

<!-- 
<script src="<%= SkinPath %>examples.min.js" type="text/javascript"></script>   -->
<script src="<%= SkinPath %>../../template/section.js" type="text/javascript"></script>  
<script>

var selSectionCat = parent.selSectionCat ;
var customSectionCode = parent.customSectionCode ;
var GetSectionDetailServiceUrl = parent.GetSectionDetailServiceUrl;
var DeleteSectionServiceUrl = parent.DeleteSectionServiceUrl;


     

var getcustomSectionCode =function(){ 
     
        if(parent.customSectionCodeIndex){
            customSectionCode = parent.customSectionCode ;
            customSectionCode.forEach(item =>{
                    if (item) {
                        jQuery('.is-design-list2').append('<div data-id="' + item["ID"] + '" data-name="' + item["Title"] + '" class="loading"><i class="delete"></i><img src="<%= SkinPath %>'+item["Image"] + '"><span class="name">'+item["Title"]+'</span></div>');
                    }
                }); 
                $(".loading img").each(function(){$(this).on("load",function(){$(this).parents(".loading").removeClass("loading")})
                })

        }else{
            setTimeout(function(){getcustomSectionCode()},1000)
        }
    }
   

var currParent = parent;
if(selSectionCat){
    var catindex= 0;
    for( var key in selSectionCat ){
        catindex++;
        if(catindex>= (currParent.SectionCatNumber?currParent.SectionCatNumber+1:12)){
            $('#morecat').append(`<a href="<%= SkinPath %>" data-cat="${selSectionCat[key]}">${key}</a>`);
        }else{
            $('#SectionCat').append(`<a href="<%= SkinPath %>" data-cat="${selSectionCat[key]}">${key}</a>`);
        }
    }
}
    var defaultCat = 1; //Show 'Header' category
    var disableStaticSection = false;
    try {
        disableStaticSection = currParent.jQuery('.is-wrapper').data("contentbox").settings.disableStaticSection;
    } catch (e) { }
    if (disableStaticSection) jQuery('.static-section').css('display', 'none');

    var image_path =window.parent.image_path;
 
    jQuery(document).ready(function ($) {

        jQuery('.is-category-list').find('[data-cat=' + defaultCat + ']').addClass('active');
        jQuery('#morecat').find('[data-cat=' + defaultCat + ']').addClass('active');
        jQuery('#morebasic').find('[data-cat=' + defaultCat + ']').addClass('active');
        jQuery('.is-category-list').css('visibility', 'visible');
        jQuery('.is-more-categories').css('visibility', 'visible');

        var nIndex = 1;

        jQuery.each(data_basic.designs, function () {

            var isdefault = false;
            var catSplit = this.category.split(',');
            for (var j = 0; j < catSplit.length; j++) {
                if (catSplit[j] == defaultCat) {
                    isdefault = true;
                }
            }

            this.id = nIndex; //Give id to each record

            if (isdefault) {
                jQuery('.is-design-list').append('<div data-id="' + this.id + '" data-cat="' + this.category + '" class="loading"><img src="<%= SkinPath %>'+image_path + this.thumbnail + '"></div>');
            }

            nIndex++;
        });
        $(".loading img").each(function(){$(this).on("load",function(){$(this).parents(".loading").removeClass("loading")})})
        


        jQuery('.more-examples').click(function () {
            jQuery('.is-more-categories').removeClass('active');
            jQuery(this).addClass('active');
            jQuery('#morecat').addClass('active');
            var top = jQuery(this).offset().top - jQuery(window).scrollTop();
            var left = jQuery(this).offset().left;
            top = top + 42;
            jQuery('#morecat').css('top', top + 'px');
            jQuery('#morecat').css('left', left + 'px');
        });

        jQuery('.more-basic').click(function () {
            jQuery('.is-more-categories').removeClass('active');
            jQuery(this).addClass('active');
            jQuery('#morebasic').addClass('active');
            var top = jQuery(this).offset().top - jQuery(window).scrollTop();
            var left = jQuery(this).offset().left;
            top = top + 42;
            jQuery('#morebasic').css('top', top + 'px');
            jQuery('#morebasic').css('left', left + 'px');
        });

        jQuery('.is-more-categories a').click(function () {
            $(".is-design-list2").hide();
            $(".is-design-list").css("display","flex").fadeIn(100);

            var cat = jQuery(this).attr('data-cat');

            if (jQuery('.is-design-list').children('[data-cat=' + cat + ']').length == 0) {

                jQuery.each(data_basic.designs, function () {

                    if (cat == this.category) {
                        jQuery('.is-design-list').append('<div data-id="' + this.id + '" data-cat="' + this.category + '" class="loading"><img src="<%= SkinPath %>' +image_path+ this.thumbnail + '"></div>');
                    }

                });
                $(".loading img").each(function(){$(this).on("load",function(){$(this).parents(".loading").removeClass("loading")})})
       

            }

            jQuery('.is-category-list a').removeClass('active');
            jQuery('.is-more-categories a').removeClass('active');
            jQuery(this).addClass('active');

            if (cat) {
                jQuery('.is-design-list > div').fadeOut(0, function () {
                });
                jQuery('.is-design-list > div').each(function () {

                    var catSplit = jQuery(this).attr('data-cat').split(',');
                    for (var j = 0; j < catSplit.length; j++) {
                        if (catSplit[j] == cat) {
                            jQuery(this).fadeIn(300);
                        }
                    }

                });

            }

            jQuery('.is-more-categories').removeClass('active');

            jQuery('.is-design-list > div').off('click');
            jQuery('.is-design-list > div').click(function () {

                var designid = jQuery(this).attr('data-id');
                addDesign(designid);

            });




            return false;

        });

        jQuery('html').click(function (e) {
            if (jQuery(e.target).parents('.is-more-categories').length > 0) return false;
            if (jQuery(e.target).hasClass('is-more-categories')) return false;

            jQuery('.is-more-categories').removeClass('active');
            jQuery('.more-basic').removeClass('active');
            jQuery('.more-examples').removeClass('active');
        });

        parent.jQuery('html').click(function (e) {       
            jQuery('.is-more-categories').removeClass('active');
            jQuery('.more-basic').removeClass('active');
            jQuery('.more-examples').removeClass('active');           
        });

        jQuery('.is-category-list a').click(function () {
            $(".is-design-list2").hide();
            $(".is-design-list").fadeIn(100);
            var cat = jQuery(this).attr('data-cat');

            if (jQuery('.is-design-list').children('[data-cat=' + cat + ']').length == 0) {

                jQuery.each(data_basic.designs, function () {

                    if (cat == this.category) {
                        jQuery('.is-design-list').append('<div data-id="' + this.id + '" data-cat="' + this.category + '" class="loading"><img src="<%= SkinPath %>'+image_path + this.thumbnail + '"></div>');
                    }

                });
                $(".loading img").each(function(){$(this).on("load",function(){$(this).parents(".loading").removeClass("loading")})})


            }

            if (cat) {
                jQuery('.is-category-list a').removeClass('active');
                jQuery('.is-more-categories').removeClass('active');
                jQuery('.is-more-categories a').removeClass('active');
                jQuery(this).addClass('active');

                jQuery('.is-design-list > div').fadeOut(0, function () {
                });
                jQuery('.is-design-list > div').each(function () {

                    var catSplit = jQuery(this).attr('data-cat').split(',');
                    for (var j = 0; j < catSplit.length; j++) {
                        if (catSplit[j] == cat) {
                            jQuery(this).fadeIn(300);
                        }
                    }

                });

            }

            jQuery('.is-design-list > div').off('click');
            jQuery('.is-design-list > div').click(function () {

                var designid = jQuery(this).attr('data-id');
                addDesign(designid);

            });

            return false;

        });


        jQuery('.is-design-list > div').off('click');
        jQuery('.is-design-list > div').click(function () {

            var designid = jQuery(this).attr('data-id');
            addDesign(designid);

        });

        jQuery(".custom-examples").on("click",function(){
            $("#SectionCat a").removeClass("active");
            $(this).addClass("active");

            if(!$(".is-design-list2").hasClass("complete")){
                 getcustomSectionCode();
            }

            $(".is-design-list").hide();
            $(".is-design-list2").addClass("complete").css("display","flex").fadeIn(100);


        })

        jQuery('.is-design-list2').on("click",">div:not(.design-console)",function () {
            if($(this).data("id")){
                $.post(GetSectionDetailServiceUrl+currParent.jQuery(".is-wrapper").data("mid")+"&id="+$(this).data("id"),function (data) {
                    if(data){
                        data = jQuery.parseJSON(data);
                        var html = data["Results"]["Content"].replace(/\[SkinPath\]/g,parent.SkinPath);
                        if(html){
                            addDesign(false,html);
                        }
                    } 
                })
            }
        })


        var search = function (v) {
                if (v.length >= 1) {
                    v = v.toLowerCase();

                    v = v.split(" ");

                    var name = '.is-design-list2 > div:not(.design-console)';
                    v.forEach(function (v, i) {
                        if (v) {
                            name += `[data-name *= "${v}"]`;
                        }
                    })
                    $("#searchStyle").html(`
                            .is-design-list2 > div:not(.design-console){
                                display:none;
                              
                            }
                            ${name}{display:inline-block; }
                           
                        `);

                    $("#divIcons h3").hide();
                } else if (!v) {
                    $("#searchStyle").html(" ");
                    $("#divIcons h3").show();
                }
            }

            $(".search .text").on("change input", function () {
                search($(this).val());
                if($(this).val()){
                    $(".search .close").show();
                }else{
                    $(".search .close").hide();
                }
            })
            $(".search .button").on("click", function () {
                search($(".search .text").val());
            })
            $(".search .close").on("click", function () {
                $(".search .text").val("");
                search("");
                $(this).hide();
            })

        jQuery('.is-design-list2').on("click",".delete",function (event) {
            event.stopPropagation();
            if(confirm("Are you sure you want to delete this item?")){
                var curr =$(this).parent();
                $.post(DeleteSectionServiceUrl+currParent.jQuery(".is-wrapper").data("mid")+"&id="+curr.data("id"),function (data) {
                    curr.fadeOut(function(){
                        var name = curr.data("name");
                        parent.customSectionCode.forEach(function (v, i) { 
                            if(v["Title"] == name){
                                parent.customSectionCode.splice(i, 1);
                            }
                        })                        
                        curr.remove();
                    });
                  

                })
            }
        })



        jQuery('.is-design-list2 .import input[type="file"]').on("change",function () {


                jQuery("body").addClass("loading");
                var formData = new FormData();
                    var file = this.files[0];
                    formData.append("importfile", file);

                    $.ajax({
                    url:currParent.SectionImportServiceUrl+currParent.jQuery(".is-wrapper").data("mid"),
                    type:"POST",
                    data:formData,
                    processData : false,
                    contentType : false,
                    dataType : 'json',
                    async : false,
                    success : function (result) {
                        jQuery("body").removeClass("loading");
 
                        if(!result.Success){
                             $(".is-design-list2 .message").html(result.Message).addClass("error").stop().fadeIn(200).delay(3000).fadeOut(200);
                        }else{

                          //  $(".is-design-list2 .message").html("OK!!!").removeClass("error").stop().fadeIn(200).delay(3000).fadeOut(200);

                          if(result.Results){
                              
                            result.Results.forEach(item =>{
                                if (item) {
                                    jQuery('.is-design-list2').append('<div data-id="' + item["ID"] + '" data-name="' + item["Title"] + '" class="loading"><i class="delete"></i><img src="<%= SkinPath %>'+item["Image"] + '"><span class="name">'+item["Title"]+'</span></div>');
                                }
                            }); 
                            $(".loading img").each(function(){$(this).on("load",function(){$(this).parents(".loading").removeClass("loading")})})   
                            $(".is-design-list2 .message").html("Imported successfully.").removeClass("error").stop().fadeIn(200).delay(3000).fadeOut(200);
                          }


                        }  
      
                    }    
                    })  


        })
        jQuery('.is-design-list2 .export').attr("href",currParent.SectionExportServiceUrl+currParent.jQuery(".is-wrapper").data("mid"))

    });

    function addDesign(designid,html) {

        if(designid){
        var framework = currParent.jQuery('.is-wrapper').data("contentbox").settings.framework;
        var snippetPathReplace = currParent.jQuery('.is-wrapper').data("contentbox").settings.snippetPathReplace;
        var contentStylePath = currParent.jQuery('.is-wrapper').data("contentbox").settings.contentStylePath;
        var html = '';

        var result = $.grep(data_basic.designs, function (element, index) {
            return element.id == designid;
        });
      /*   if (result.length==0) {
            result = $.grep(data_examples.designs, function (element, index) {
                return element.id == designid;
            });
        } */
        
     

        var html = result[0].html;
        var googleFonts = result[0].googleFonts;
        var contentCss = result[0].contentCss;
        var contentClass = result[0].contentClass;
        }

        $('#codeview').val(html);
        //To Bootstrap
        if (framework == 'bootstrap') {
           // html = html.replace(new RegExp(' container', 'g'), ' container-fluid');
            html = html.replace(new RegExp('row clearfix', 'g'), 'row');
            html = html.replace(new RegExp('column full', 'g'), 'col-md-12');
            html = html.replace(new RegExp('column half', 'g'), 'col-md-6');
            html = html.replace(new RegExp('column third', 'g'), 'col-md-4');
            html = html.replace(new RegExp('column fourth', 'g'), 'col-md-3');
            html = html.replace(new RegExp('column fifth', 'g'), 'col-md-2');
            html = html.replace(new RegExp('column sixth', 'g'), 'col-md-2');
            html = html.replace(new RegExp('column two-third', 'g'), 'col-md-8');
            html = html.replace(new RegExp('column two-fourth', 'g'), 'col-md-9');
            html = html.replace(new RegExp('column two-sixth', 'g'), 'col-md-10');
            html = html.replace(new RegExp('btn btn-primary', 'g'), 'btn btn-primary btn-lg');
            html = html.replace(new RegExp('btn btn-default', 'g'), 'btn btn-default btn-lg');
        }

        //To Foundation
        if (framework == 'foundation') {
            //html = html.replace(new RegExp(' container', 'g'), ' container');
            html = html.replace(new RegExp('row clearfix', 'g'), 'row');
            html = html.replace(new RegExp('column full', 'g'), 'large-12 columns');
            html = html.replace(new RegExp('column half', 'g'), 'large-6 columns');
            html = html.replace(new RegExp('column third', 'g'), 'large-4 columns');
            html = html.replace(new RegExp('column fourth', 'g'), 'large-3 columns');
            html = html.replace(new RegExp('column fifth', 'g'), 'large-2 columns');
            html = html.replace(new RegExp('column sixth', 'g'), 'large-2 columns');
            html = html.replace(new RegExp('column two-third', 'g'), 'large-8 columns');
            html = html.replace(new RegExp('column two-fourth', 'g'), 'large-9 columns');
            html = html.replace(new RegExp('column two-sixth', 'g'), 'large-10 columns');
            html = html.replace(new RegExp('btn btn-primary', 'g'), 'button');
            html = html.replace(new RegExp('btn btn-default', 'g'), 'secondary button');
        }

        //To UIKit
        if (framework == 'uikit') {
            html = html.replace(new RegExp(' container', 'g'), ' uk-container uk-container-center');
            html = html.replace(new RegExp('row clearfix', 'g'), 'uk-grid');
            html = html.replace(new RegExp('column full', 'g'), 'uk-width-1-1');
            html = html.replace(new RegExp('column half', 'g'), 'uk-width-1-2');
            html = html.replace(new RegExp('column third', 'g'), 'uk-width-1-3');
            html = html.replace(new RegExp('column fourth', 'g'), 'uk-width-1-4');
            html = html.replace(new RegExp('column fifth', 'g'), 'uk-width-1-5');
            html = html.replace(new RegExp('column sixth', 'g'), 'uk-width-1-6');
            html = html.replace(new RegExp('column two-third', 'g'), 'uk-width-2-3');
            html = html.replace(new RegExp('column two-fourth', 'g'), 'uk-width-3-4');
            html = html.replace(new RegExp('column two-sixth', 'g'), 'uk-width-5-6');
            html = html.replace(new RegExp('btn btn-primary', 'g'), 'uk-button uk-button-primary uk-button-large');
            html = html.replace(new RegExp('btn btn-default', 'g'), 'uk-button uk-button-large');
        }

        //To Material
        if (framework == 'material') {
            html = html.replace(new RegExp(' container', 'g'), '');
            html = html.replace(new RegExp('row clearfix', 'g'), 'mdl-grid');
            html = html.replace(new RegExp('column full', 'g'), 'mdl-cell mdl-cell--12-col');
            html = html.replace(new RegExp('column half', 'g'), 'mdl-cell mdl-cell--6-col');
            html = html.replace(new RegExp('column third', 'g'), 'mdl-cell mdl-cell--4-col');
            html = html.replace(new RegExp('column fourth', 'g'), 'mdl-cell mdl-cell--3-col');
            html = html.replace(new RegExp('column fifth', 'g'), 'mdl-cell mdl-cell--2-col');
            html = html.replace(new RegExp('column sixth', 'g'), 'mdl-cell mdl-cell--2-col');
            html = html.replace(new RegExp('column two-third', 'g'), 'mdl-cell mdl-cell--8-col');
            html = html.replace(new RegExp('column two-fourth', 'g'), 'mdl-cell mdl-cell--9-col');
            html = html.replace(new RegExp('column two-sixth', 'g'), 'mdl-cell mdl-cell--10-col');
            html = html.replace(new RegExp('btn btn-primary', 'g'), 'mdl-button mdl-js-button mdl-button--raised mdl-button--accent');
            html = html.replace(new RegExp('btn btn-default', 'g'), 'mdl-button mdl-js-button mdl-button--raised');
        }

        html = html.replace(/{id}/g, makeid()).replace(/{id2}/g, makeid()).replace(/{id3}/g, makeid()).replace(/{id4}/g, makeid()).replace(/{id5}/g, makeid()).replace(/{id6}/g, makeid()).replace(/{id7}/g, makeid()).replace(/{id8}/g, makeid()).replace(/{id9}/g, makeid()).replace(/{id10}/g, makeid()).replace(/{id11}/g, makeid()).replace(/{id12}/g, makeid()).replace(/{id13}/g, makeid()).replace(/{id14}/g, makeid()).replace(/{id15}/g, makeid()).replace(/{id16}/g, makeid()).replace(/{id17}/g, makeid()).replace(/{id18}/g, makeid()).replace(/{id19}/g, makeid()).replace(/{id20}/g, makeid());
        
     //   html = html.replace(/{id(.*?)}/g, makeid()+"$1");

        html = html.replace(/\[\%IMAGE_PATH\%\]/g, image_path);
        html = html.replace(/\%5B\%25IMAGE_PATH\%25\%5D/g, image_path);
        html = html.replace(/is-section /g, "is-section new-is-section ").replace(/is-section"/g, "is-section new-is-section\"");
        try {
            if (snippetPathReplace[0] != '') {
                var regex = new RegExp(snippetPathReplace[0], 'g');
                html = html.replace(regex, snippetPathReplace[1]);

                var string1 = snippetPathReplace[0].replace(/\//g, '%2F');
                var string2 = snippetPathReplace[1].replace(/\//g, '%2F');

                var regex2 = new RegExp(string1, 'g');
                html = html.replace(regex2, string2);
            }
        } catch (e) { }

        //Add html
        
        //is-bg-grey
        
        var hasClassName = false;

        if($(html).hasClass("is-bg-grey")){
            hasClassName =true;
        }


        currParent.jQuery('.is-wrapper').data("contentbox").addIdea(html);


       

        //Add googleFonts
        if(googleFonts){
            $.each(googleFonts, function (index, line) {
                //line => https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,600,700
                //get fontname
                line = line.replace(/\+/g, ' ').replace(/%20/g, ' ');
                var fontname = line.substr(line.indexOf('family=') + 7);
                if (fontname.indexOf(':') != -1) {
                    fontname = fontname.split(':')[0];
                }

                //check if already included
                var exist = false;
                var links = parent.document.getElementsByTagName("link");
                for (var i = 0; i < links.length; i++) {
                    var src = links[i].href.toLowerCase();
                    src = src.replace(/\+/g, ' ').replace(/%20/g, ' ');
                    if (fontname && src.indexOf(fontname.toLowerCase()) != -1) exist = true;
                }

                if (!exist) currParent.jQuery('.is-wrapper').append(line);

            });
        }
        //Add contentCss
        var exist = false;
        var links = parent.document.getElementsByTagName("link");
        for (var i = 0; i < links.length; i++) {
            var src = links[i].href.toLowerCase();
            if (contentCss && src.indexOf(contentCss.toLowerCase()) != -1) exist = true;
        }

       // if (!exist) parent.jQuery('.is-wrapper').append('<link data-name="contentstyle" data-class="' + contentClass + '" href="<%= SkinPath %>' + contentStylePath + contentCss + '" rel="stylesheet">');

        //Remove dummy DIV after last section
        currParent.jQuery('.is-wrapper').children('div.is-dummy').remove();
        currParent.jQuery('.is-wrapper').append('<div class="is-dummy" style="height:0px"></div>'); //always on the last


        if(!hasClassName){
         currParent.jQuery('.is-wrapper').children('.is-section').last().removeClass("is-bg-grey");
        }


       // addDesign

    var newsection = parent.jQuery(".is-wrapper > .new-is-section").removeClass("new-is-section");

    if(parent.$isSection && parent.$isSection.length && newsection.length){
        parent.$isSection.after(newsection);
        if(newsection.eq(0).offset().top){
            parent.jQuery('body,html').stop().animate({
                    scrollTop: newsection.eq(0).offset().top
            }, 800);
        }

    }

        //INFO: for cleanup unused, see ContentBox.js' cleanupUnused() method
    }



    /*! 
    pace 1.0.0 
    Copyright (c) 2013 HubSpot, Inc.
    MIT License
    */
    (function () { var a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X = [].slice, Y = {}.hasOwnProperty, Z = function (a, b) { function c() { this.constructor = a } for (var d in b) Y.call(b, d) && (a[d] = b[d]); return c.prototype = b.prototype, a.prototype = new c, a.__super__ = b.prototype, a }, $ = [].indexOf || function (a) { for (var b = 0, c = this.length; c > b; b++) if (b in this && this[b] === a) return b; return -1 }; for (u = { catchupTime: 100, initialRate: .03, minTime: 250, ghostTime: 100, maxProgressPerFrame: 20, easeFactor: 1.25, startOnPageLoad: !0, restartOnPushState: !0, restartOnRequestAfter: 500, target: "body", elements: { checkInterval: 100, selectors: ["body"] }, eventLag: { minSamples: 10, sampleCount: 3, lagThreshold: 3 }, ajax: { trackMethods: ["GET"], trackWebSockets: !0, ignoreURLs: []} }, C = function () { var a; return null != (a = "undefined" != typeof performance && null !== performance && "function" == typeof performance.now ? performance.now() : void 0) ? a : +new Date }, E = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame, t = window.cancelAnimationFrame || window.mozCancelAnimationFrame, null == E && (E = function (a) { return setTimeout(a, 50) }, t = function (a) { return clearTimeout(a) }), G = function (a) { var b, c; return b = C(), (c = function () { var d; return d = C() - b, d >= 33 ? (b = C(), a(d, function () { return E(c) })) : setTimeout(c, 33 - d) })() }, F = function () { var a, b, c; return c = arguments[0], b = arguments[1], a = 3 <= arguments.length ? X.call(arguments, 2) : [], "function" == typeof c[b] ? c[b].apply(c, a) : c[b] }, v = function () { var a, b, c, d, e, f, g; for (b = arguments[0], d = 2 <= arguments.length ? X.call(arguments, 1) : [], f = 0, g = d.length; g > f; f++) if (c = d[f]) for (a in c) Y.call(c, a) && (e = c[a], null != b[a] && "object" == typeof b[a] && null != e && "object" == typeof e ? v(b[a], e) : b[a] = e); return b }, q = function (a) { var b, c, d, e, f; for (c = b = 0, e = 0, f = a.length; f > e; e++) d = a[e], c += Math.abs(d), b++; return c / b }, x = function (a, b) { var c, d, e; if (null == a && (a = "options"), null == b && (b = !0), e = document.querySelector("[data-pace-" + a + "]")) { if (c = e.getAttribute("data-pace-" + a), !b) return c; try { return JSON.parse(c) } catch (f) { return d = f, "undefined" != typeof console && null !== console ? console.error("Error parsing inline pace options", d) : void 0 } } }, g = function () { function a() { } return a.prototype.on = function (a, b, c, d) { var e; return null == d && (d = !1), null == this.bindings && (this.bindings = {}), null == (e = this.bindings)[a] && (e[a] = []), this.bindings[a].push({ handler: b, ctx: c, once: d }) }, a.prototype.once = function (a, b, c) { return this.on(a, b, c, !0) }, a.prototype.off = function (a, b) { var c, d, e; if (null != (null != (d = this.bindings) ? d[a] : void 0)) { if (null == b) return delete this.bindings[a]; for (c = 0, e = []; c < this.bindings[a].length; ) e.push(this.bindings[a][c].handler === b ? this.bindings[a].splice(c, 1) : c++); return e } }, a.prototype.trigger = function () { var a, b, c, d, e, f, g, h, i; if (c = arguments[0], a = 2 <= arguments.length ? X.call(arguments, 1) : [], null != (g = this.bindings) ? g[c] : void 0) { for (e = 0, i = []; e < this.bindings[c].length; ) h = this.bindings[c][e], d = h.handler, b = h.ctx, f = h.once, d.apply(null != b ? b : this, a), i.push(f ? this.bindings[c].splice(e, 1) : e++); return i } }, a } (), j = window.Pace || {}, window.Pace = j, v(j, g.prototype), D = j.options = v({}, u, window.paceOptions, x()), U = ["ajax", "document", "eventLag", "elements"], Q = 0, S = U.length; S > Q; Q++) K = U[Q], D[K] === !0 && (D[K] = u[K]); i = function (a) { function b() { return V = b.__super__.constructor.apply(this, arguments) } return Z(b, a), b } (Error), b = function () { function a() { this.progress = 0 } return a.prototype.getElement = function () { var a; if (null == this.el) { if (a = document.querySelector(D.target), !a) throw new i; this.el = document.createElement("div"), this.el.className = "pace pace-active", document.body.className = document.body.className.replace(/pace-done/g, ""), document.body.className += " pace-running", this.el.innerHTML = '<div class="pace-progress">\n  <div class="pace-progress-inner"></div>\n</div>\n<div class="pace-activity"></div>', null != a.firstChild ? a.insertBefore(this.el, a.firstChild) : a.appendChild(this.el) } return this.el }, a.prototype.finish = function () { var a; return a = this.getElement(), a.className = a.className.replace("pace-active", ""), a.className += " pace-inactive", document.body.className = document.body.className.replace("pace-running", ""), document.body.className += " pace-done" }, a.prototype.update = function (a) { return this.progress = a, this.render() }, a.prototype.destroy = function () { try { this.getElement().parentNode.removeChild(this.getElement()) } catch (a) { i = a } return this.el = void 0 }, a.prototype.render = function () { var a, b, c, d, e, f, g; if (null == document.querySelector(D.target)) return !1; for (a = this.getElement(), d = "translate3d(" + this.progress + "%, 0, 0)", g = ["webkitTransform", "msTransform", "transform"], e = 0, f = g.length; f > e; e++) b = g[e], a.children[0].style[b] = d; return (!this.lastRenderedProgress || this.lastRenderedProgress | 0 !== this.progress | 0) && (a.children[0].setAttribute("data-progress-text", "" + (0 | this.progress) + "%"), this.progress >= 100 ? c = "99" : (c = this.progress < 10 ? "0" : "", c += 0 | this.progress), a.children[0].setAttribute("data-progress", "" + c)), this.lastRenderedProgress = this.progress }, a.prototype.done = function () { return this.progress >= 100 }, a } (), h = function () { function a() { this.bindings = {} } return a.prototype.trigger = function (a, b) { var c, d, e, f, g; if (null != this.bindings[a]) { for (f = this.bindings[a], g = [], d = 0, e = f.length; e > d; d++) c = f[d], g.push(c.call(this, b)); return g } }, a.prototype.on = function (a, b) { var c; return null == (c = this.bindings)[a] && (c[a] = []), this.bindings[a].push(b) }, a } (), P = window.XMLHttpRequest, O = window.XDomainRequest, N = window.WebSocket, w = function (a, b) { var c, d, e, f; f = []; for (d in b.prototype) try { e = b.prototype[d], f.push(null == a[d] && "function" != typeof e ? a[d] = e : void 0) } catch (g) { c = g } return f }, A = [], j.ignore = function () { var a, b, c; return b = arguments[0], a = 2 <= arguments.length ? X.call(arguments, 1) : [], A.unshift("ignore"), c = b.apply(null, a), A.shift(), c }, j.track = function () { var a, b, c; return b = arguments[0], a = 2 <= arguments.length ? X.call(arguments, 1) : [], A.unshift("track"), c = b.apply(null, a), A.shift(), c }, J = function (a) { var b; if (null == a && (a = "GET"), "track" === A[0]) return "force"; if (!A.length && D.ajax) { if ("socket" === a && D.ajax.trackWebSockets) return !0; if (b = a.toUpperCase(), $.call(D.ajax.trackMethods, b) >= 0) return !0 } return !1 }, k = function (a) { function b() { var a, c = this; b.__super__.constructor.apply(this, arguments), a = function (a) { var b; return b = a.open, a.open = function (d, e) { return J(d) && c.trigger("request", { type: d, url: e, request: a }), b.apply(a, arguments) } }, window.XMLHttpRequest = function (b) { var c; return c = new P(b), a(c), c }; try { w(window.XMLHttpRequest, P) } catch (d) { } if (null != O) { window.XDomainRequest = function () { var b; return b = new O, a(b), b }; try { w(window.XDomainRequest, O) } catch (d) { } } if (null != N && D.ajax.trackWebSockets) { window.WebSocket = function (a, b) { var d; return d = null != b ? new N(a, b) : new N(a), J("socket") && c.trigger("request", { type: "socket", url: a, protocols: b, request: d }), d }; try { w(window.WebSocket, N) } catch (d) { } } } return Z(b, a), b } (h), R = null, y = function () { return null == R && (R = new k), R }, I = function (a) { var b, c, d, e; for (e = D.ajax.ignoreURLs, c = 0, d = e.length; d > c; c++) if (b = e[c], "string" == typeof b) { if (-1 !== a.indexOf(b)) return !0 } else if (b.test(a)) return !0; return !1 }, y().on("request", function (b) { var c, d, e, f, g; return f = b.type, e = b.request, g = b.url, I(g) ? void 0 : j.running || D.restartOnRequestAfter === !1 && "force" !== J(f) ? void 0 : (d = arguments, c = D.restartOnRequestAfter || 0, "boolean" == typeof c && (c = 0), setTimeout(function () { var b, c, g, h, i, k; if (b = "socket" === f ? e.readyState < 2 : 0 < (h = e.readyState) && 4 > h) { for (j.restart(), i = j.sources, k = [], c = 0, g = i.length; g > c; c++) { if (K = i[c], K instanceof a) { K.watch.apply(K, d); break } k.push(void 0) } return k } }, c)) }), a = function () { function a() { var a = this; this.elements = [], y().on("request", function () { return a.watch.apply(a, arguments) }) } return a.prototype.watch = function (a) { var b, c, d, e; return d = a.type, b = a.request, e = a.url, I(e) ? void 0 : (c = "socket" === d ? new n(b) : new o(b), this.elements.push(c)) }, a } (), o = function () { function a(a) { var b, c, d, e, f, g, h = this; if (this.progress = 0, null != window.ProgressEvent) for (c = null, a.addEventListener("progress", function (a) { return h.progress = a.lengthComputable ? 100 * a.loaded / a.total : h.progress + (100 - h.progress) / 2 }, !1), g = ["load", "abort", "timeout", "error"], d = 0, e = g.length; e > d; d++) b = g[d], a.addEventListener(b, function () { return h.progress = 100 }, !1); else f = a.onreadystatechange, a.onreadystatechange = function () { var b; return 0 === (b = a.readyState) || 4 === b ? h.progress = 100 : 3 === a.readyState && (h.progress = 50), "function" == typeof f ? f.apply(null, arguments) : void 0 } } return a } (), n = function () { function a(a) { var b, c, d, e, f = this; for (this.progress = 0, e = ["error", "open"], c = 0, d = e.length; d > c; c++) b = e[c], a.addEventListener(b, function () { return f.progress = 100 }, !1) } return a } (), d = function () { function a(a) { var b, c, d, f; for (null == a && (a = {}), this.elements = [], null == a.selectors && (a.selectors = []), f = a.selectors, c = 0, d = f.length; d > c; c++) b = f[c], this.elements.push(new e(b)) } return a } (), e = function () { function a(a) { this.selector = a, this.progress = 0, this.check() } return a.prototype.check = function () { var a = this; return document.querySelector(this.selector) ? this.done() : setTimeout(function () { return a.check() }, D.elements.checkInterval) }, a.prototype.done = function () { return this.progress = 100 }, a } (), c = function () { function a() { var a, b, c = this; this.progress = null != (b = this.states[document.readyState]) ? b : 100, a = document.onreadystatechange, document.onreadystatechange = function () { return null != c.states[document.readyState] && (c.progress = c.states[document.readyState]), "function" == typeof a ? a.apply(null, arguments) : void 0 } } return a.prototype.states = { loading: 0, interactive: 50, complete: 100 }, a } (), f = function () { function a() { var a, b, c, d, e, f = this; this.progress = 0, a = 0, e = [], d = 0, c = C(), b = setInterval(function () { var g; return g = C() - c - 50, c = C(), e.push(g), e.length > D.eventLag.sampleCount && e.shift(), a = q(e), ++d >= D.eventLag.minSamples && a < D.eventLag.lagThreshold ? (f.progress = 100, clearInterval(b)) : f.progress = 100 * (3 / (a + 3)) }, 50) } return a } (), m = function () { function a(a) { this.source = a, this.last = this.sinceLastUpdate = 0, this.rate = D.initialRate, this.catchup = 0, this.progress = this.lastProgress = 0, null != this.source && (this.progress = F(this.source, "progress")) } return a.prototype.tick = function (a, b) { var c; return null == b && (b = F(this.source, "progress")), b >= 100 && (this.done = !0), b === this.last ? this.sinceLastUpdate += a : (this.sinceLastUpdate && (this.rate = (b - this.last) / this.sinceLastUpdate), this.catchup = (b - this.progress) / D.catchupTime, this.sinceLastUpdate = 0, this.last = b), b > this.progress && (this.progress += this.catchup * a), c = 1 - Math.pow(this.progress / 100, D.easeFactor), this.progress += c * this.rate * a, this.progress = Math.min(this.lastProgress + D.maxProgressPerFrame, this.progress), this.progress = Math.max(0, this.progress), this.progress = Math.min(100, this.progress), this.lastProgress = this.progress, this.progress }, a } (), L = null, H = null, r = null, M = null, p = null, s = null, j.running = !1, z = function () { return D.restartOnPushState ? j.restart() : void 0 }, null != window.history.pushState && (T = window.history.pushState, window.history.pushState = function () { return z(), T.apply(window.history, arguments) }), null != window.history.replaceState && (W = window.history.replaceState, window.history.replaceState = function () { return z(), W.apply(window.history, arguments) }), l = { ajax: a, elements: d, document: c, eventLag: f }, (B = function () { var a, c, d, e, f, g, h, i; for (j.sources = L = [], g = ["ajax", "elements", "document", "eventLag"], c = 0, e = g.length; e > c; c++) a = g[c], D[a] !== !1 && L.push(new l[a](D[a])); for (i = null != (h = D.extraSources) ? h : [], d = 0, f = i.length; f > d; d++) K = i[d], L.push(new K(D)); return j.bar = r = new b, H = [], M = new m })(), j.stop = function () { return j.trigger("stop"), j.running = !1, r.destroy(), s = !0, null != p && ("function" == typeof t && t(p), p = null), B() }, j.restart = function () { return j.trigger("restart"), j.stop(), j.start() }, j.go = function () { var a; return j.running = !0, r.render(), a = C(), s = !1, p = G(function (b, c) { var d, e, f, g, h, i, k, l, n, o, p, q, t, u, v, w; for (l = 100 - r.progress, e = p = 0, f = !0, i = q = 0, u = L.length; u > q; i = ++q) for (K = L[i], o = null != H[i] ? H[i] : H[i] = [], h = null != (w = K.elements) ? w : [K], k = t = 0, v = h.length; v > t; k = ++t) g = h[k], n = null != o[k] ? o[k] : o[k] = new m(g), f &= n.done, n.done || (e++, p += n.tick(b)); return d = p / e, r.update(M.tick(b, d)), r.done() || f || s ? (r.update(100), j.trigger("done"), setTimeout(function () { return r.finish(), j.running = !1, j.trigger("hide") }, Math.max(D.ghostTime, Math.max(D.minTime - (C() - a), 0)))) : c() }) }, j.start = function (a) { v(D, a), j.running = !0; try { r.render() } catch (b) { i = b } return document.querySelector(".pace") ? (j.trigger("start"), j.go()) : setTimeout(j.start, 50) }, "function" == typeof define && define.amd ? define(function () { return j }) : "object" == typeof exports ? module.exports = j : D.startOnPageLoad && j.start() }).call(this);
    Pace.on("hide", function () {
        $('.pace-inactive').remove();
        $(".is-category-list").css("display","flex");
        $(".is-design-list").css("display","flex").fadeIn();
    });

    parent.jQuery("#add-section-Update-list").on("change",function(){
        var section = parent.customSectionCodeNew;
        if($(".is-design-list2 > div[data-id=\""+section["ID"]+"\"]").length){
            $(".is-design-list2 > div[data-id=\""+section["ID"]+"\"]").find("img").attr("src",section["Image"]);
        }else{
            jQuery('.is-design-list2').append('<div data-id="'+section["ID"]+'" data-name="' + section["Title"] + '"><i class="delete"></i><img src="<%= SkinPath %>'+section["Image"] + '"><span class="name">'+section["Title"]+'</span></div>');
        }
        


    })

 


</script>

<textarea id="codeview" style="width:300px;height:100px;position:fixed;bottom:0;right:0;display:none;">

</textarea>

