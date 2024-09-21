<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


    <div id="list-options"></div>

    <iframe id="slideframe" name="slideframe" style="width:1px;height:1px;border:none;visibility:hidden;position:absolute"></iframe>


    <svg xmlns="http://www.w3.org/2000/svg" display="none">
        <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 400" id="lnr-close">
            <path d="M214.124,210.114L327.012,97.437c3.895-3.888,3.895-10.222,0-14.11c-3.896-3.888-10.241-3.888-14.137,0L199.987,196.004   L87.098,83.326c-3.896-3.888-10.241-3.888-14.137,0c-3.896,3.889-3.896,10.223,0,14.11L185.85,210.114L72.961,322.792   c-3.896,3.889-3.896,10.223,0,14.11c1.962,1.959,4.521,2.914,7.078,2.914c2.558,0,5.116-0.975,7.078-2.914l112.889-112.678   l112.889,112.678c1.962,1.959,4.52,2.914,7.078,2.914c2.558,0,5.116-0.975,7.078-2.914c3.895-3.888,3.895-10.222,0-14.11   L214.163,210.114H214.124z"></path>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 400" id="lnr-arrow-up">
            <path d="M182.912,13.457L62.945,133.199c-3.896,3.889-3.896,10.223,0,14.11c3.896,3.889,10.241,3.889,14.137,0L179.973,44.611   v325.161c0,5.506,4.481,9.979,9.998,9.979c5.516,0,9.997-4.473,9.997-9.979V44.611L302.858,147.31   c3.896,3.889,10.242,3.889,14.137,0c1.962-1.958,2.919-4.512,2.919-7.064s-0.977-5.106-2.919-7.065L197.029,13.438   c-3.896-3.888-10.242-3.888-14.137,0L182.912,13.457z"></path>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 400" id="lnr-arrow-down">
            <path d="M197.068,386.814l119.966-119.742c3.896-3.889,3.896-10.223,0-14.11c-3.895-3.889-10.241-3.889-14.137,0L200.006,355.661   V30.5c0-5.506-4.481-9.979-9.997-9.979c-5.516,0-9.998,4.473-9.998,9.979v325.161L77.121,252.962   c-3.896-3.889-10.241-3.889-14.137,0c-1.962,1.959-2.919,4.512-2.919,7.064c0,2.554,0.977,5.106,2.919,7.065l119.967,119.742   c3.895,3.889,10.241,3.889,14.137,0L197.068,386.814z"></path>
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 400" id="lnr-copy">
            <path d="M329.951,80.394h-49.986V30.5c0-16.508-13.453-29.936-29.992-29.936H100.015c-2.656,0-5.194,1.063-7.078,2.914   l-69.98,69.85c-1.884,1.881-2.919,4.414-2.919,7.065v209.55c0,16.507,13.454,29.936,29.992,29.936h49.986v49.893   c0,16.508,13.453,29.936,29.992,29.936h199.944c16.539,0,29.992-13.428,29.992-29.936V110.329   C359.942,93.821,346.489,80.394,329.951,80.394z M100.015,24.653v45.761c0,5.505-4.481,9.979-9.998,9.979H44.17L100.015,24.653z    M50.028,299.922c-5.516,0-9.997-4.474-9.997-9.979V100.351h49.986c16.539,0,29.992-13.429,29.992-29.936V20.522h129.964   c5.516,0,9.998,4.473,9.998,9.979v49.893h-79.978c-2.655,0-5.194,1.062-7.078,2.913l-69.98,69.85   c-1.884,1.881-2.919,4.415-2.919,7.065v139.7H50.028z M179.992,104.482v45.761c0,5.506-4.481,9.979-9.997,9.979h-45.847   L179.992,104.482z M339.948,369.771c0,5.506-4.481,9.979-9.997,9.979H130.006c-5.516,0-9.998-4.473-9.998-9.979V180.179h49.986   c16.539,0,29.992-13.428,29.992-29.936v-49.893h129.964c5.516,0,9.997,4.473,9.997,9.979V369.771z"></path>
        </symbol>
    </svg>

    <script>
        function randomRangeId(num) {
            var returnStr = "",
                charStr = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            for (var i = 0; i < num; i++) {
                var index = Math.round(Math.random() * (charStr.length - 1));
                returnStr += charStr.substring(index, index + 1);
            }
            return returnStr;
        }


        var currParent = parent;
        var $activeModule = currParent.jQuery("[data-module-active]");
        var settings = getSettings();
        var htmlversions = randomRangeId(6);
        var hasicon = false;
        var SkinPath = currParent.SkinPath ? currParent.SkinPath : "";
        var cbModule = false;
        var LinkNavSelect = currParent.LinkNavSelect.clone();
        var extendurl = false;
        var ActiveTabId = currParent.ActiveTabId;
        var GlobalAriaLabel = currParent.GlobalAriaLabel ? currParent.GlobalAriaLabel : [];

        if ($activeModule.attr("data-cb-module")) {
            cbModule = true;
        }
          

    var ImgLoad = function (callback, e) {
        var imgdefereds = [];
        e.each(function () {

            var dfd = jQuery.Deferred();
            jQuery(this).bind('load', function () {
                dfd.resolve();
            }).bind('error', function () {
                dfd.resolve();
            });
            if (this.complete) {
                setTimeout(function () {
                    dfd.resolve();
                }, 1000);
            }
            imgdefereds.push(dfd);

        });
        jQuery.when.apply(null, imgdefereds).done(function () {
            callback();
        });
    };



        $.ajax({
            url: cbModule ? "../../module-template/" + $activeModule.data('template') + ".html" : "../../code-template/" + $activeModule.data('effect') + ".html",
            async: true,
            success: function (data) {


                var tmplbox = $('<script type="text/x-jquery-tmpl">');
                var tmplHTML = $('<script type="text/x-jquery-tmpl">');

                data = data.split('<div class="buildHTML">');
                tmplbox[0].innerHTML = data[0].replace(/\{SkinPath\}/g, SkinPath);

                if (!cbModule) {
                    tmplHTML[0].innerHTML = '<div class="buildHTML">'+data[1].replace(/\{id\}/g, htmlversions).replace(/\{SkinPath\}/g, SkinPath);
                }


                if (settings == "undefined" || settings == undefined || !settings || settings.length < 2 || settings.indexOf("{") == -1) {
                    settings = {};
                } else {
                    settings = JSON.parse(settings);
                }





                settings["style"] = $activeModule.data('style');
                settings["moduleid"] = $activeModule.data('moduleid');


                $("#list-options").append(tmplbox.tmpl(settings));

                if($(".extend-url").length){
                    $("#list-options").append(LinkNavSelect);
                    LinkNavSelect.after('<div class="extend-url-bg"><div>');
                    LinkNavSelect.find("li").on("click",function(){
                        if(extendurl){
                            extendurl.val($(this).attr("data-value"));
                        }
                        LinkNavSelect.removeClass("active");  
                        $(".extend-url-bg").fadeOut();
                    });
                    $(".extend-url-bg").on("click",function(){
                        LinkNavSelect.removeClass("active");  
                        $(".extend-url-bg").fadeOut();
                    });
                }
                if($(".CKEditor").length){
                  
                  var ckeditorCSS = document.createElement('link');
                  ckeditorCSS.href = 'css/jodit.min.css';
                  ckeditorCSS.type = 'text/css';
                  ckeditorCSS.rel = 'stylesheet'; 

                  document.getElementsByTagName('head')[0].appendChild(ckeditorCSS);

                  var ckeditorJS = document.createElement('script');
                  ckeditorJS.src = 'js/jodit.min.js';
                  document.getElementsByTagName('head')[0].appendChild(ckeditorJS);

              }

                if (cbModule) {

                   if ($activeModule.data("modulename") == "DNNGo.AddModule") {
                        if (typeof currParent.GetModulesServiceUrl != "undefined") {

                            var midSelect = $('.ajaxData[name="mid"]');

                            if (midSelect.length) {
                                midSelect.parent().addClass("loading");


                                var HasModule = [];


                                parent.jQuery('.custom-module[ data-modulename="DNNGo.AddModule"]').each(function(){
                                    $(this).data("mid") &&  HasModule.push($(this).data("mid"));
                                })

                           

                                $.ajax({
                                    url: currParent.GetModulesServiceUrl + currParent.jQuery(".is-wrapper").attr("data-mid") + "&ByTabID=" + ActiveTabId + "&Excludes=DNNGo.ContentBuilder&ExcludeCurrentTab=false",
                                    async: true,
                                    success: function (data) {
                                        var data = JSON.parse(data);
                                        midSelect.empty();

                                        for (var key in data) {
                                            if(!HasModule.includes(data[key].ModuleID)){
                                                midSelect.append(`<option value="${data[key].ModuleID}">${data[key].ModuleName} - ${data[key].ModuleTitle}</option>`);
                                            }
                                        }

                                        if (!midSelect.find("option").length) {
                                            midSelect.append(`<option value="">There is no available module on the current page.</option>`);
                                        }

                                        midSelect.find("option[value=\"" + midSelect.data("value") + "\"]").attr("selected", "selected");
                                        midSelect.change();
                                        midSelect.parent().removeClass("loading");

                                        $('.ajaxData[name="tid"]').val(ActiveTabId)

                                    }
                                });
                            }

                            var moduleList = $(".dnn-module-list");

                            if (moduleList.length) {
                                $(".dnn-module-list li").on("click", function () {
                                    $(this).addClass("active").siblings().removeClass("active");
                                })

                                $.ajax({
                                    url: currParent.GetPortalDesktopModules,
                                    async: true,
                                    success: function (data) {
                                        for (var key in data) {
                                            if(data[key].ModuleName != "DNNGo ContentBuilder"){
                                                moduleList.append(`<li data-moduleid="${data[key].ModuleID}"><span class="icon"><img src="<%= SkinPath %>${data[key].ModuleImage}" alt="${data[key].ModuleName}"></span><span class="title">${data[key].ModuleName}</span></li>`);
                                            }
                                        }

                                        

                                        currParent.jQuery(".copy-input-ok").off().on("click", function () {
                                          
                                            $("body").addClass("loading2");
                                            currParent.jQuery(".custommodule button").css("pointer-events","none");

                                            delete settings["moduleid"];
                                            delete settings["style"];      
                                            
                                                                                
                                            if (currParent.jQuery(".custom-module[data-moduleid=\"" + $activeModule.attr('data-moduleid') + "\"]").length > 1) {
                                                var newid = randomRangeId(6);
                                                $activeModule.attr('data-moduleid', newid);
                                                if (!$activeModule.attr("data-cb-module")) {
                                                    $activeModule.attr('id', "module-" + newid);
                                                }
                                            }

                                            if (currParent.jQuery(".d-custom-active").length) {
                                               
                                                var addparame = {};
                                                                                           


                                                var analyzingurl = currParent.jQuery(".is-wrapper").data("analyzingurl");

                                                if (analyzingurl) {

                                                    addparame["xModuleId"] = 0;
                                                    addparame["xTabId"] = ActiveTabId;

                                                    addparame["TemplateName"] = $activeModule.attr("data-template");
                                                    addparame["Settings"] = encodeURIComponent(JSON.stringify(settings));
                                                    addparame["ModuleName"] = $activeModule.attr("data-modulename");
                                                    addparame["SkinPath"] = currParent.SkinPath;

                                                    addparame["DesktopModuleId"] = $(".dnn-module-list li.active").data("moduleid");


                                                    $.ajax({
                                                        url: analyzingurl,
                                                        async: false,
                                                        data: addparame,
                                                        type: "post",
                                                        success: function (data) {
                                                            var data = JSON.parse(data);
                                                            if (data["Success"]) {

                                                                currParent.jQuery(".d-custom-active").attr({"data-mid": data.Results.xModuleId,"data-tid": data.Results.xTabId});
                                                                
                                                                var html = data["Results"]["html"];
                                                                html = '<div class="ajaxmodule-placeholder">' + html + "<p>Please refresh the page to view the module.</p></div>";

                                                                currParent.ModuleStorageHTML[$activeModule.attr("data-moduleid")] = html;

                                                                currParent.jQuery(".d-custom-active").html(html).attr("data-settings", encodeURIComponent(JSON.stringify(settings))).removeClass("d-custom-active");

                                                                $("body").removeClass("loading2");
                                                                currParent.jQuery(".custommodule button").css("pointer-events","");
                                                                currParent.jQuery(".is-modal.custommodule").removeClass("active");
                                                                currParent.jQuery(".copy-input-ok").remove();
                                                                currParent.jQuery(".is-wrapper").data("contentbox").settings.onRender();
                                                                currParent.jQuery(".is-wrapper").data("contentbox").settings.onChange();
                                                                currParent.jQuery(".custommodule .is-modal-overlay").remove();
                                                            }
                                                        }
                                                    })

                                                }   
                                            }
                                            
                                        })

                                        moduleList.children("li").on("click", function () {
                                            $(this).addClass("active").siblings().removeClass("active");
                                            currParent.jQuery(".copy-input-ok").trigger("click");
                                        });

                                    }
                                });
                            }





                        }

                    } else if (typeof currParent.GetTabModulesServiceUrl != "undefined" && $(".ajaxDate").length) {
                        //  ModuleName
                        $.ajax({
                            url: currParent.GetTabModulesServiceUrl + currParent.jQuery(".is-wrapper").attr("data-mid") + "&ModuleName=" + $activeModule.attr("data-modulename"),
                            async: true,
                            success: function (data) {
                                var data = JSON.parse(data);
                                for (var key in data) {
                                    $("select.ajaxDate").append(`<option value="${key}">${data[key]}</option>`);
                                }
                                $("select.ajaxDate").find("option[value=\"" + $("select.ajaxDate").data("value") + "\"]").attr("selected", "selected");
                                $("select.ajaxDate").change();
                            }
                        })
                    }



                }



                var customval = getCustomVal();
                $('#hidCustomVal').val(customval);

                if (isModuleInBox()) {
                    $('#divHeight').css('display', 'none');
                } else {
                    $('#divHeight').css('display', 'inline-block');
                }

                applyDynamicBehaviour();
                $(".dynamic-item").each(function () {
                    $(this).attr("index", randomRangeId(6))
                })
                applyBehaviour();


                var copybuttom = $('<button title="Ok" class="input-ok classic-primary dnn-ok copy-input-ok">Ok</button>');

                currParent.jQuery(".custommodule .input-ok.classic-primary").on("click", function () {
                    $("body").addClass("loading");
                }).hide().after(copybuttom);


                currParent.jQuery(".copy-input-ok").on("click", function () {

                    getOptionsSettings();

                    if(currParent.jQuery(".custom-module[data-moduleid=\""+ $activeModule.attr('data-moduleid')+"\"]").length > 1  ){
                        var newid =randomRangeId(6);
                        $activeModule.attr('data-moduleid', newid);
                        if(!$activeModule.attr("data-cb-module")){
                            $activeModule.attr('id',"module-"+newid);
                        }
	        		}	

                    if (!cbModule) {

                        var html = (tmplHTML.tmpl(settings))[0].innerHTML.replace(/\{LT\}/g, "<").replace(/\{GT\}/g, ">");
                        if (html.indexOf("icon-svg") != -1) {
                            var iconhtml = $("<div>" + html + "</div>");

                            iconhtml.find(".icon-svg svg").each(function () {
                                var icon = $(this).attr("id");
                                var e = $(this);
                                if (icon) {
                                    if (!currParent.svgAnimationIcon) {
                                        $.ajax({
                                            url: SkinPath + "resource/icons-svg/svg-animation-icon.svg",
                                            async: true,
                                            success: function (data) {
                                                currParent.svgAnimationIcon = $(data);
                                                e.append(currParent.svgAnimationIcon.find("#" + icon).html());
                                            }
                                        })
                                    } else {
                                        e.append(currParent.svgAnimationIcon.find("#" + icon).html());
                                    }
                                }
                            })
                            // console.log(iconhtml)
                            html = iconhtml.html();
                        }

                    }

                    delete settings["moduleid"];
                    delete settings["style"];



                    if (currParent.jQuery(".d-custom-active").length) {
                        delete settings["moduleid"];
                        delete settings["style"];
                        if (!cbModule) {

                            currParent.ModuleStorageHTML[$activeModule.attr("data-moduleid")] = html;
                            currParent.jQuery(".d-custom-active").html(html).attr("data-settings", encodeURIComponent(JSON.stringify(settings))).attr("data-html", encodeURIComponent(html)).removeClass("d-custom-active");

                        } else {

                            var modulesource = settings["modulesource"];
                            var addparame = {};

                            if (modulesource) {
                                modulesource = modulesource.split("-");
                            } else {
                                modulesource = [settings["tid"] || 0, settings["mid"] || 0];
                            }
                            currParent.jQuery(".d-custom-active").attr({
                                "data-mid": modulesource[1],
                                "data-tid": modulesource[0]
                            });
                            addparame["xModuleId"] = modulesource[1];
                            addparame["xTabId"] = modulesource[0];

                            var analyzingurl = currParent.jQuery(".is-wrapper").data("analyzingurl");

                            if (analyzingurl) {

                                addparame["TemplateName"] = $activeModule.attr("data-template");
                                addparame["Settings"] = encodeURIComponent(JSON.stringify(settings));
                                addparame["ModuleName"] = $activeModule.attr("data-modulename");
                                addparame["SkinPath"] = currParent.SkinPath;


                                $.ajax({
                                    url: analyzingurl,
                                    async: false,
                                    data: addparame,
                                    type: "post",
                                    success: function (data) {
                                        var data = JSON.parse(data);

                                        if (data["Success"]) {


                                            var html = data["Results"]["html"];
                                            var js = data["Results"]["js"];
                                            var css = data["Results"]["css"];

                                            var mid = $activeModule.attr("data-moduleid");
                                            var name = $activeModule.attr("data-template");
                                            var modejs = '<script class="edit-mode-js" id="js-' + mid + '">moduleEditModeJs("' + name + '","' + mid + '","' + name + '",true);<\/script>';


                                            currParent.ModuleStorageHTML[$activeModule.attr("data-moduleid")] = html + modejs;

                                            if ($activeModule.data("modulename") == "DNNGo.MyModule" || $activeModule.data("modulename") == "DNNGo.AddModule") {
                                                html = '<div class="ajaxmodule-placeholder">' + html + modejs + "<p>Please refresh the page to view the module.</p></div>";
                                            } else {
                                                html += modejs;
                                            }

                                            currParent.ModuleStorageHTML[$activeModule.attr("data-moduleid")] = html;

                                            currParent.jQuery(".d-custom-active").html(html).attr("data-settings", encodeURIComponent(JSON.stringify(settings))).removeClass("d-custom-active");

                                            if (css && css.length) {
                                                css.forEach(function (i) {
                                                    if (!currParent.jQuery('link[href^="' + i["Resource"] + '"]').length) {
                                                        currParent.jQuery("head").append(`<link href="<%= SkinPath %>${i["Resource"]}" ${i["async=\"async\""]?"media=\"none\" title=\"all\" onload=\"this.media=this.title\"":""} type="text/css" rel="stylesheet"/>`)
                                                    }
                                                })
                                            }
                                            if (js && js.length) {
                                                js.forEach(function (i) {
                                                    if (!currParent.jQuery('script[src^="' + i["Resource"] + '"]').length) {
                                                        currParent.jQuery("head").append(`<script src="<%= SkinPath %>${i["Resource"]}" ${i["async"]?"async=\"async\"":""} type="text/javascript"><\/script>`)
                                                    }
                                                })
                                            }

                                        }
                                    }
                                })
                            }
                        }
                        currParent.jQuery(".is-modal.custommodule").removeClass("active");
                        $(this).remove();
                        currParent.jQuery(".copy-input-ok").remove();
                    } else {
                        if (!cbModule) {
                            setHtml(html);
                        }
                        setSettings(JSON.stringify(settings));
                        $(this).siblings(".input-ok").click().show();
                        $(this).remove();
                        currParent.jQuery(".copy-input-ok").remove();
                    }

                    currParent.jQuery(".is-wrapper").data("contentbox").settings.onRender();
                    currParent.jQuery(".is-wrapper").data("contentbox").settings.onChange();
                    currParent.jQuery(".custommodule .is-modal-overlay").remove();
                    $("body").addClass("loading");


                })
                currParent.jQuery(".custommodule .classic-secondary").on("click", function () {
                    $("body").addClass("loading");
                    $(this).siblings(".input-ok").show();
                    $(this).siblings(".copy-input-ok").remove();
                    currParent.jQuery(".d-custom-active").removeClass("d-custom-active");
                })



                setTimeout(function () {
                    $("body").removeClass("loading");
                }, 300)

                if (!cbModule) {
                    setHtml((tmplHTML.tmpl(settings))[0].outerHTML);
                }

                setSettings(JSON.stringify(settings));

                if ($(".getmapcoord").length) {
                    if (!(window.google && window.google.maps)) {
                        var script = document.createElement('script');
                        script.type = 'text/javascript';
                        script.src = 'https://maps.googleapis.com/maps/api/js';
                        if (parent.jQuery("#SkinPath").data("mapapi")) {
                            script.src += '?key=' + parent.jQuery("#SkinPath").data("mapapi");
                        }
                        $("head").append(script);
                    }
                }


            }
        })





        function applyDynamicBehaviour() {

            $("#list-options .dynamic-list").each(function () {
                var list = $(this);
                var itemDOM = list.find(".dynamic-item").clone();
                var footer = list.find(".dynamic-footer");
                var input = footer.find(".dnnOptions");
                var data = input.val();
                list.find(".dynamic-item").remove();
                if (data) {
                    data = JSON.parse(data);
                    var index = 0;
                    for (var key in data) {
                        var item = data[key];
                        index++;

                        var newItem = itemDOM.clone();

                        newItem.html(newItem.html().replace(/\{id\}/g, Math.ceil(Math.random() * 10000)));

                        newItem.find('.dynamicOptions').each(function () {
                            var v = item[$(this).attr("name")];
                            if (!v && $(this).data("default")) {
                                v = $(this).data("default");
                            } else if (v) {
                                if ($(this).hasClass("json")) {
                                    v = JSON.stringify(v)
                                }
                            }

                          

                            if (v) {
                                if ($(this).attr("type") == "checkbox") {
                                    $(this).prop("checked", "checked").change();
                                } if ($(this).attr("type") == "radio") {
                                    if (v == $(this).attr("value")) {
                                        $(this).prop("checked", "checked").change();
                                    }
                                } else if (this.tagName.toLowerCase() == "textarea") {
                                    $(this).html(v);
                                } else if (this.tagName.toLowerCase() == "select") {
                                    $(this).attr("data-value", v);
                                } else {
                                    $(this).attr("value", v);
                                }
                                if( $(this).hasClass("sample-selector")){
                                    $(this).siblings("i").css("background-color",v);
                                }

                            }
                        })

                        newItem.find(".dynamic-title .name").html(item["title"] ? item["title"] : "Item " + index);

                        footer.before(newItem);
                        //  applyBehaviour(newItem);
                    }
                }

                list.on("click", ".dynamic-title", function () {
                    $(this).siblings(".dynamic-content").slideToggle();
                    $(this).parent().siblings().find(".dynamic-content").slideUp();
                })

                list.on("change", 'input[name="title"]', function () {
                    $(this).parents(".dynamic-item").first().find(".dynamic-title .name").html($(this).val())

                })


                list.on("click", ".delete", function () {
                    if (confirm("Are you sure you want to delete this item?")) {
                        $(".hotspot-old-dot[index=\"" + $(this).parents(".dynamic-item").attr("index") + "\"]").remove();
                        $(this).parents(".dynamic-item").eq(0).remove();
                    }
                })
                list.on("click", ".sortdown", function (e) {
                    e.stopPropagation();
                    var p = $(this).parent().parent();
                    p.next(".dynamic-item").after(p);

                })
                list.on("click", ".sortup", function (e) {
                    e.stopPropagation();
                    var p = $(this).parent().parent();
                    p.prev(".dynamic-item").before(p);
                })
                list.on("change","select",function () {
                    var v = $(this).val();
                    $(this).find('option[value="'+v+'"]').attr("selected","selected").siblings().removeAttr("selected");
                })
                list.on("change",'input[type="text"],input[type="number"]',function () {
                    $(this).attr("value",$(this).val())
                })
                list.on("change",'input[type="checkbox"]',function () {
                    if($(this).is(':checked')){
                        $(this).attr("checked","checked");
                    }else{
                        $(this).removeAttr("checked");
                    }
                })
                list.on("click", ".copy", function (e) {
                    e.stopPropagation();
                    var p = $(this).parent().parent().clone();
                  

                    var id = [];
                    p.find('select[id],input[id]').each(function () {
                        id.push($(this).attr("id"));
                    })
                    if (id.length) {
                        id.forEach(function (i) {
                            var id = "random" + randomRangeId(6);
                            p.find("#" + i).attr("id", id);
                            p[0].innerHTML = p[0].innerHTML.replace(new RegExp("#" + i, 'g'), "#" + id);
                        })
                    }

                    footer.before(p);
                    if (p.find('input[name="title"]').length) {
                        p.find('input[name="title"]').val(p.find('input[name="title"]').val() + " (copy)").change();
                    } else {
                        p.find('.dynamic-title .name').html(p.find('.dynamic-title .name').html() + " (copy)");
                    }
                    p.attr("index", randomRangeId(6));
                    p.find(".iconSetting + i").remove();
                    p.addClass("copy-list-box");
                    applyBehaviour(p);
                    p.find(".dynamic-title").click();
                    p.find(".dynamic-content").slideDown();


                })


                list.find(".dynamic-item").eq(0).children(".dynamic-content").show();

                list.find(".Position-images").attr("src", $("#hotsimages").val())


                footer.on("click", function () {
                    var newItem = itemDOM.clone();
                    newItem.find(".dynamic-title .name").html("Item " + (list.find(".dynamic-item").length + 1));
                    newItem.attr("index", randomRangeId(6))
                    newItem.html(newItem.html().replace(/\{id\}/g, Math.ceil(Math.random() * 10000)));
                    footer.before(newItem);
                    applyBehaviour(newItem);
                    footer.prev().find(".dynamic-title").click();
                })

            })
        }

        function applyBehaviour(e) {

            var e = e ? e : $("#list-options");
            if(!e.hasClass("copy-list-box")){
                e.find(".dnnOptions.disabled,.dynamicOptions.disabled").each(function () {
                    if ($(this).data("default") != undefined) {
                        if ($(this).attr("type") == "checkbox") {
                            $(this).attr("checked", "checked").change();
                        } else {
                            $(this).val($(this).data("default")).change();
                            $(this).hasClass("sample-selector") && $(this).siblings("i").css("background-color", $(this).data("default"));
                        }
                    }
                })
                

                e.find('.dnnOptions[type="radio"],.dynamicOptions[type="radio"]').each(function () {
                    if ($(this).attr("value") == settings[$(this).attr("name")]) {
                        $(this).prop("checked", "checked").change();
                    }
                })
            }
            function getsvgurl(name) {
                if (name.indexOf("icon-svg") != -1) {
                    name = name.split("icon-svg icon-")[1];
                    name = "../../../../icons-svg/svg-animation-icon.svg#" + name;
                } else if (name.indexOf("lnr-") != -1) {
                    name = name.split("sico ")[1];
                    name = "../../../../icons-svg/linearicons.svg#" + name;
                } else if (name.indexOf("sico fa") != -1) {
                    name = name.split("sico ")[1];
                    name = "../../../../icons-svg/fontawesome.svg#" + name;
                }
                if (name) {
                    return '<svg><use xlink:href="' + name + '"></use></svg>'
                } else {
                    return '';
                }
            }


            e.find('.dnnOptions.iconSetting,.dynamicOptions.iconSetting').each(function () {
                var e = $(this);
                e.on("click", function () {
                    currParent.jQuery(".is-modal.is-side.viewicons").addClass("active").css("z-index", "10006");
                    currParent.modulesIcon = true;
                    if (currParent.jQuery(".is-modal.is-side.viewicons #ifrIconInsert").attr("src") == "about:blank") {
                        currParent.jQuery(".is-modal.is-side.viewicons #ifrIconInsert").attr("src", currParent.SkinPath + "Resource/vendor/content-builder/assets/ionicons/icons.html?mode=insert").show();
                        currParent.jQuery(".is-modal.is-side.viewicons #ifrIconEdit").attr("src", currParent.SkinPath + "Resource/vendor/content-builder/assets/ionicons/icons.html?mode=edit").hide();
                    }
                    $(".is-active").removeClass("is-active");
                    e.addClass("is-active").blur();
                    currParent.jQuery(".is-modal.custommodule .is-modal-overlay").css("z-index", "2");

                }).after('<i class="' + e.val() + '">' + getsvgurl(e.val()) + '</i>').on("change", function () {

                   e.siblings("i").attr("class", e.val()).html(getsvgurl(e.val()));
                    currParent.modulesIcon = false;
                })

                e.siblings(".clear").on("click", function () {
                    e.val("");
                    e.siblings("i").html("");
                    e.siblings("span").find(".sample-selector").val("");
                })

            })




            currParent.jQuery(".is-modal.custommodule .is-modal-overlay").on("click", function () {
                currParent.jQuery(".is-modal.is-side.viewicons").removeClass("active");
                currParent.jQuery(".is-modal.custommodule .is-modal-overlay").css("z-index", "-1");
                currParent.modulesIcon = false;
            })

            currParent.jQuery("#modulesIcon").on("change", function () {
                $(".iconSetting.is-active").val($(this).val()).change();
                currParent.jQuery(".is-modal.custommodule .is-modal-overlay").css("z-index", "-1");

            })
            if ($(".iconSetting").length) {
                if (!hasicon) {
                    hasicon = true;
                }
            }
            if(!e.hasClass("copy-list-box")){
            e.find("select").each(function () {
                $(this).find("option[value=\"" + $(this).data("value") + "\"]").attr("selected", "selected");
                $(this).change();
            })
            }

            e.find(".checkbox-group").each(function () {
                var e = $(this),
                    v = e.find(".dynamicOptions,.dnnOptions").val();
                if (v) {
                    v = v.split(",");
                    v.forEach(function (i) {
                        e.find('input[value="' + i + '"]').attr("checked", "checked")
                    })
                }
                e.find('input[type="checkbox"]').on("change", function () {
                    var c = '';
                    e.find('input:checked').each(function (i) {
                        if (i > 0) {
                            c += ","
                        };
                        c += $(this).val();
                    })
                    e.find(".dynamicOptions,.dnnOptions").val(c).change()
                })
            })


            e.find(".escape").each(function () {
                if ($(this).val()) {
                    $(this).val(decodeURIComponent($(this).val()))
                }
            })
            e.find('.sample-selector').colorpicker().on("changeColor", function (event) {
                $(this).siblings("i").css('background-color', event.color.toString());
            });
            e.find(".getmapcoord").each(function () {



            })

            e.find(".getmapcoord").on("click", function () {
                if (window.google && window.google.maps && !$(this).siblings(".mapbox").length) {
                    var geocoder = new google.maps.Geocoder();
                    var e = $(this), address = e.val();

                    e.after("<div class=\"mapbox\" style=\"height:280px;display:none;overflow: hidden;background-color: rgb(229, 227, 223);\"></div>");
                    var mapbox = e.siblings(".mapbox");
                    mapbox.slideDown();
                    var center;
                    e.parent().addClass("loading");
                    function mapload() {
                        map = new google.maps.Map(mapbox[0], { zoom: 18, center: center });
                        var marker = new google.maps.Marker({
                            position: center,
                            map: map,
                            draggable: true,
                        });
                        google.maps.event.addListener(marker, 'dragend', function (marker) {
                            var latLng = marker.latLng;
                            e.siblings(".lat").find("input").val(latLng.lat() + "," + latLng.lng());
                        });
                        e.on("change", function () {
                            var e = $(this), address = e.val();
                            e.parent().addClass("loading");
                           
                            if (address) {  
                                geocoder.geocode({
                                    'address': address
                                }, function (results, status) {
                                    if (status == "OK") {
                                        e.siblings(".lat").find("input").val(results[0].geometry.location.lat() + "," + results[0].geometry.location.lng());
                                    } else {
                                        e.siblings(".lat").find("input").val(status);
                                    }
                                    marker.setPosition(results[0].geometry.location);
                                    map.panTo(results[0].geometry.location);
                                    e.parent().removeClass("loading");
                                })
                            }else{
                                e.parent().removeClass("loading"); 
                            }
                        })

                        e.parent().removeClass("loading");
                    }

                    var latval = e.siblings(".lat").find("input").val();
                        latval = latval?latval.split(","):false;
                    if (latval && latval.length == 2 && !isNaN(latval[0]) && latval[0] % 1 !== 0 && !isNaN(latval[1]) && latval[1] % 1 !== 0 ) {
                        center = new google.maps.LatLng(latval[0], latval[1]);
                        mapload();
                    } else {
                        geocoder.geocode({
                            'address': address ? address : "America"
                        }, function (results, status) {
                            center = results[0].geometry.location;
                            mapload();
                        })
                    }
                }
            })


            e.find('.fileImage').on('click', function (e) {
                e.preventDefault();
                var parents = $(this).parents(".slideform").first();
                $(".current-fileImage").removeClass("current-fileImage");
                //if(!$(".current-fileImage").length){
                //   parents.find('.loading').css('display', 'inline-block');
                parents.addClass("current-fileImage").submit();
                // }
                currParent.jQuery(".imgaes-setting-option .loadimg").hide();
                currParent.jQuery(".imgaes-setting-option #imgaesTEXTURL").val($(".current-fileImage .dnnOptions,.current-fileImage .dynamicOptions").eq(0).val()).siblings(".img").css("background-image", "url(" + $(".current-fileImage .dnnOptions,.current-fileImage .dynamicOptions").eq(0).val() + ")");


                currParent.jQuery("#DnnMediaBox").attr("multiple", "true");
                currParent.DisplayMediaIFrame(currParent.getMediaUrl({
                    mimid: currParent.jQuery(".d-wrapper").eq(0).data("mid"),
                    FileType: "image"
                }),"modules")

            });
            e.find('.extend-url').each(function(){
                var e = $(this);
                if(!e.siblings(".link-button").length){

                    e.after('<div class="link-button"><button type="button" class="linkUrlButton" title="Link"></button><button type="button" class="linkImageButton" title="File"></button></div>');
                   
                    e.siblings(".link-button").find(".linkUrlButton").on("click",function(event){
                        event.preventDefault();
                        LinkNavSelect.addClass("active");
                        $(".extend-url-bg").fadeIn();
                        extendurl= e;
                    })
                    e.siblings(".link-button").find(".linkImageButton").on("click",function(event){
                        event.preventDefault();
                        $(".current-fileImage").removeClass("current-fileImage");
                        e.addClass("current-fileImage");
                        currParent.jQuery(".imgaes-setting-option #imgaesTEXTURL").val(e.val());
                        currParent.DisplayMediaIFrame(currParent.getMediaUrl({
                            mimid: currParent.jQuery(".d-wrapper").eq(0).data("mid")//,
                          //  FileType: "image"
                        }),"modules")
                    })
                }
            }) 


            currParent.jQuery("#modulesImageVal").on("change", function () {
                var v = $(this).val();
                var current = $(".current-fileImage");

                //    v = v.split(",");
                var curr = "";

                if (current.hasClass("groupImage")) {

                    current.find(".img").append('<div style=\'background-image: url("' + v + '");\'><span>&#10005;</span></div>');
                    var s2 = '{';
                    current.find(".img div").each(function (index) {
                        var u = $(this).css("background-image").split('"')[1];
                        if (index != 0) {
                            s2 += ',';
                        }
                        s2 += `"img${index}":"${u}"`;
                    })
                    s2 += '}';
                    current.find(".dnnOptions,.dynamicOptions").val(s2);

                }else if(current.hasClass("extend-url")) {
                    current.val(v);

                } else {

                    current.find(".img").html('<div style=\'background-image: url("' + v + '");\'><span>&#10005;</span></div>');
                    current.find(".dnnOptions,.dynamicOptions").val(v).change();
                    if (current.siblings(".imgwidth").length) {
                        var w = current.siblings(".imgwidth"), h = current.siblings(".imgheight");
                        var img = $('<img src="<%= SkinPath %>' + v + '"/>');
                            ImgLoad(function(){
                                w.val(img[0].width);
                                h.val(img[0].height);
                            },img)
                    }
                }

                currParent.jQuery("#DnnMediaBox").removeAttr("multiple");
                //  $(this).off();

                current.removeClass("current-fileImage").find('.loading').css('display', 'none');

            })
            e.find(".slideform").each(function () {
                var e = $(this);
                var v = e.find(".dnnOptions,.dynamicOptions").val();

                if (v) {
                    if (e.hasClass("groupImage")) {
                        v = JSON.parse(v);
                        for (var key in v) {
                            e.find(".img").append('<div style=\'background-image: url("' + v[key] + '");\'><span>&#10005;</span></div>');
                        }
                    } else {
                        e.find(".img").html('<div style=\'background-image: url("' + v + '");\'><span>&#10005;</span></div>');
                    }
                }
                e.find(".img").on("click", "span", function () {
                    $(this).parent().remove();
                    if (e.hasClass("groupImage")) {
                        var new_key = '{';
                        e.find(".img div").each(function (index) {
                            var u = $(this).find("img").attr("src");
                            if (index != 0) {
                                new_key += ',';
                            }
                            new_key += `"img${index}":"${u}"`;
                        })
                        new_key += '}';

                        e.find(".dnnOptions,.dynamicOptions").val(new_key).change();

                    } else {
                        e.find(".dnnOptions,.dynamicOptions").val("").change();
                    }
                })

            })

            e.find(".nav-tabs").each(function () {
                var nav = $(this);
                nav.find("a").each(function (index) {
                    $(this).on("click", function (e) {
                        e.preventDefault();
                        nav.next(".tab-content").children(".tab-pane").eq(index).addClass("active").siblings().removeClass("active");
                        $(this).parent().addClass("active").siblings().removeClass("active");
                        return false;
                    })
                })

            })



            e.find("#hotsimages").on("change", function () {
                $(".Position-images").attr("src", $(this).val())
            })
            e.find(".Position-images").attr("src", $("#hotsimages").val())
            var x = 0,
                y = 0,
                isDown = false;


            e.find(".hotsimagesBox").each(function () {
                var x = $(this).find(".position-x").val(),
                    y = $(this).find(".position-y").val(),
                    box = $(this);
                box.find(".hotspot-dot").css({
                    "left": x,
                    "top": y
                });
                var index = box.parents(".dynamic-item").attr("index");
                box.parents(".dynamic-item").siblings().find(".hotsimagesBox").each(function () {
                    var nx = $(this).find(".position-x").val(),
                        ny = $(this).find(".position-y").val();
                    var n_index = $(this).parents(".dynamic-item").attr("index");
                    if (!box.find(".hotspot-old-dot[index=" + n_index + "]").length) {
                        box.append(`<span class="hotspot-old-dot" index="${n_index}" style="top:${ny};left:${nx};"></span>`);
                    }
                    if (!$(this).find(".hotspot-old-dot[index=" + index + "]").length) {
                        $(this).append(`<span class="hotspot-old-dot" index="${index}" style="top:${y};left:${x};"></span>`);
                    }
                })
            })





            e.find(".hotsimagesBox").on("mousedown", function (event) {
                var w = parseInt($(this).width()),
                    h = parseInt($(this).height());
                x = (Math.round(event.offsetX / w * 10000) / 100.00 + "%");
                y = (Math.round(event.offsetY / h * 10000) / 100.00 + "%");
                $(this).find(".hotspot-dot").css({
                    "left": x,
                    "top": y
                })
                isDown = true;
            }).on("mousemove mouseup", function (event) {
                if (isDown == false) {
                    return;
                }
                var w = parseInt($(this).width()),
                    h = parseInt($(this).height());
                x = (Math.round(event.offsetX / w * 10000) / 100.00 + "%");
                y = (Math.round(event.offsetY / h * 10000) / 100.00 + "%");
                var box = $(this);
                box.find(".hotspot-dot").css({
                    "left": x,
                    "top": y
                })
                $(this).find(".position-x").val(x);
                $(this).find(".position-y").val(y);
                $(".hotspot-old-dot[index=" + $(this).parents(".dynamic-item").attr("index") + "]").css({
                    "left": x,
                    "top": y
                })
            })

            $(window).on("mouseup", function () {
                isDown = false;


            })

            if(e.hasClass("copy-list-box")){
                e.removeClass("copy-list-box")
            }


            e.find(".conditional").conditionize();
            e.find(".CKEditor").each(function(){
                if(typeof CKEditorLoad =="function" && !$(this).siblings(".jodit-container").length){
                    CKEditorLoad($(this))
                }
            });

        }

        function getOptionsSettings() {

            $("#list-options .dynamic-list").each(function () {
                if ($(this).children(".dynamic-item").length) {
                    var options = {};
                    $(this).children(".dynamic-item").each(function (index) {
                        var item = {};

                        $(this).find(".dynamicOptions:not(.disabled)").each(function () {
                            var t = $(this);
                            if (t.attr("type") == "checkbox") {
                                if (t.is(':checked')) {
                                    item[t.attr("name")] = "checked";
                                }
                            } else if (t.attr("type") == "radio") {
                                if (t.is(':checked')) {
                                    item[t.attr("name")] = t.val();
                                }
                            } else {

                                var val = t.val();
                                if (val) {
                                    if (t.hasClass("escape")) {
                                        val = val ? encodeURIComponent(val) : "";
                                    } else if (t.hasClass("json")) {
                                        val = val ? JSON.parse(val) : "";
                                    }
                                    item[$(this).attr("name")] = val;
                                }
                            }
                        })

                        item["i"] = index+1;
                        options[index] = item;
                    })

                    $(this).find(".dynamic-footer .dnnOptions").val(JSON.stringify(options)).change();

                }else{
                    $(this).find(".dynamic-footer .dnnOptions").val("").change(); 
                }
            })

            $("#list-options").find(".dnnOptions").each(function () {
                var t = $(this);
                if (t.hasClass("disabled")) {
                    delete settings[t.attr("name")];
                } else {
                    if (t.attr("type") == "checkbox") {
                        if (t.is(':checked')) {
                            settings[t.attr("name")] = "checked";
                        } else {
                            delete settings[t.attr("name")];
                        }
                    } else if (t.attr("type") == "radio") {
                        if (t.is(':checked')) {
                            settings[t.attr("name")] = t.val();
                        }
                    } else {
                        var val = t.val();
                        if (val) {
                            if (t.hasClass("escape")) {
                                val = val ? encodeURIComponent(val) : "";
                            } else if (t.hasClass("json")) {
                                val = val ? JSON.parse(val) : "";
                            }
                            settings[t.attr("name")] = val;
                        } else {
                            delete settings[t.attr("name")];
                        }
                    }
                }
            })


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

        //Function called each time an image has been uploaded.r

        //Generate html code, based on the image list and configuration
        function constructList() {
            var html = $("#chkAuto").val();
            setHtml(html);
        }

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


