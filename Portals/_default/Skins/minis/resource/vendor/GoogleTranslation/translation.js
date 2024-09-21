function googleTranslateElementInit() {
	if(typeof $.contentbuilder == "function") return;

	if(typeof jQuery.cookie !="function"){
		jQuery.cookie=function(name,value,options){if(typeof value!="undefined"){options=options||{};if(value===null){value="";options.expires=-1}var expires="";if(options.expires&&(typeof options.expires=="number"||options.expires.toUTCString)){var date;if(typeof options.expires=="number"){date=new Date();date.setTime(date.getTime()+(options.expires*24*60*60*1000))}else{date=options.expires}expires="; expires="+date.toUTCString()}var path=options.path?"; path="+options.path:"";var domain=options.domain?"; domain="+options.domain:"";var secure=options.secure?"; secure":"";document.cookie=[name,"=",encodeURIComponent(value),expires,path,domain,secure].join("")}else{var cookieValue=null;if(document.cookie&&document.cookie!=""){var cookies=document.cookie.split(";");for(var i=0;i<cookies.length;i++){var cookie=jQuery.trim(cookies[i]);if(cookie.substring(0,name.length+1)==(name+"=")){cookieValue=decodeURIComponent(cookie.substring(name.length+1));break}}}return cookieValue}};
	}

    $("head link[onload]").off().removeAttr("onload").removeAttr("title").on("load", function () {
        this.media = "all";
    });

    $("body").append('<div id="google_translate_element" style="display:none"></div>');
    new google.translate.TranslateElement({
        pageLanguage: jQuery('.google-translation-box .lang-list button').eq(0).data("lang"),
        layout: google.translate.TranslateElement.FloatPosition.TOP_LEFT
    }, 'google_translate_element');
    var comboGoogleTradutor = document.getElementById("google_translate_element").querySelector(".goog-te-combo");

    function changeEvent(el) {
        if (el.fireEvent) {
            el.fireEvent('onchange');
        } else {
            var evObj = document.createEvent("HTMLEvents");
            evObj.initEvent("change", false, true);
            el.dispatchEvent(evObj);
        }
    }

    jQuery('.google-translation-box .lang-list button').on("click", function (event) {
        event.preventDefault();
        if(!$(this).data("lang")){
            comboGoogleTradutor.value = "";
            $.cookie('translate', null, {path: "/"});
            if($(".goog-te-banner-frame").length){
                $($(".goog-te-banner-frame")[0].contentWindow.document).find('.goog-te-button button[id*="restore"]').trigger("click");
            }
        }else{
            comboGoogleTradutor.value = $(this).data("lang");
            $.cookie('translate', $(this).data("lang"), {path: "/"});
        }
        changeEvent(comboGoogleTradutor);
        $(this).addClass("active").siblings().removeClass("active");
		if($(this).data("text")){jQuery(".google-translation-box .current-lang").html($(this).data("text"))};
		jQuery('.google-translation-box .lang-list').stop().slideUp();
        jQuery('.google-translation-box .current-lang').attr("aria-expanded","false");
    }).each(function(){
        $(this).data("text",$(this).text())
    });
    if($.cookie('translate')){
        jQuery('.google-translation-box .lang-list button[data-lang="' + $.cookie('translate') + '"]').addClass("active").trigger("click");
		jQuery(".google-translation-box .current-lang").html(jQuery('.google-translation-box .lang-list button[data-lang="' + $.cookie('translate') + '"]').text())
    }else{
        jQuery('.google-translation-box .lang-list button').eq(0).addClass("active");
		jQuery(".google-translation-box .current-lang").html(jQuery('.google-translation-box .lang-list button').eq(0).text())
    }
	jQuery('.google-translation-box .current-lang').on("click", function (event) { 
        event.preventDefault();
		jQuery('.google-translation-box .lang-list').stop().slideToggle();

        $(this).attr("aria-expanded",$(this).attr("aria-expanded") == "true" ? "false" : "true");

        if($(this).attr("aria-expanded") == "true"){
            jQuery('.google-translation-box .lang-list button').eq(0).trigger("focus");
        }


    });
	
	$(document).on("click", function (event) {
		if (!$(".google-translation-box").is(event.target) && $(".google-translation-box").has(event.target).length === 0) {
			jQuery('.google-translation-box .lang-list').stop().slideUp();
            jQuery('.google-translation-box .current-lang').attr("aria-expanded","false");
		}
	})
    jQuery('.google-translation-box .lang-list').find("button,input,a").on("blur", function () {
        if (!jQuery('.google-translation-box .lang-list').is(":focus-within")) {
			jQuery('.google-translation-box .lang-list').stop().slideUp();
            jQuery('.google-translation-box .current-lang').attr("aria-expanded","false");
        }
    })

}