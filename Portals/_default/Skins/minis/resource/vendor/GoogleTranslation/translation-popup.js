function googleTranslateElementInit() {
	

	if(typeof jQuery.cookie !="function"){
		jQuery.cookie=function(name,value,options){if(typeof value!="undefined"){options=options||{};if(value===null){value="";options.expires=-1}var expires="";if(options.expires&&(typeof options.expires=="number"||options.expires.toUTCString)){var date;if(typeof options.expires=="number"){date=new Date();date.setTime(date.getTime()+(options.expires*24*60*60*1000))}else{date=options.expires}expires="; expires="+date.toUTCString()}var path=options.path?"; path="+options.path:"";var domain=options.domain?"; domain="+options.domain:"";var secure=options.secure?"; secure":"";document.cookie=[name,"=",encodeURIComponent(value),expires,path,domain,secure].join("")}else{var cookieValue=null;if(document.cookie&&document.cookie!=""){var cookies=document.cookie.split(";");for(var i=0;i<cookies.length;i++){var cookie=jQuery.trim(cookies[i]);if(cookie.substring(0,name.length+1)==(name+"=")){cookieValue=decodeURIComponent(cookie.substring(name.length+1));break}}}return cookieValue}};
	}

    $("head link[onload]").off().removeAttr("onload").removeAttr("title").on("load", function () {
        this.media = "all";
    });

    $("body").append('<div id="google_translate_element" style="display:none"></div>');


    if(typeof $.contentbuilder != "function"){
        new google.translate.TranslateElement({
            //  pageLanguage: "en",
              layout: google.translate.TranslateElement.FloatPosition.TOP_LEFT
          }, 'google_translate_element');
          var comboGoogleTradutor = document.getElementById("google_translate_element").querySelector(".goog-te-combo");

    }
    
    $("body").append('<div id="google-translation-popup" role="dialog"><div class="popup-box"><span tabindex="0" class="focus-before"></span><button type="button" class="lang-original">Show original</button><button type="button" aria-label="Close" class="close-lang"></button> <div class="lang-list"><button type="button" data-lang="af">Afrikaans</button><button type="button" data-lang="sq">Albanian</button><button type="button" data-lang="ar">Arabic</button><button type="button" data-lang="hy">Armenian</button><button type="button" data-lang="az">Azerbaijani</button><button type="button" data-lang="eu">Basque</button><button type="button" data-lang="be">Belarusian</button><button type="button" data-lang="bn">Bengali</button><button type="button" data-lang="bg">Bulgarian</button><button type="button" data-lang="ca">Catalan</button><button type="button" data-lang="zh-CN">Chinese (Simplified)</button><button type="button" data-lang="zh-TW">Chinese (Traditional)</button><button type="button" data-lang="hr">Croatian</button><button type="button" data-lang="cs">Czech</button><button type="button" data-lang="da">Danish</button><button type="button" data-lang="nl">Dutch</button><button type="button" data-lang="eo">Esperanto</button><button type="button" data-lang="et">Estonian</button><button type="button" data-lang="en">English</button><button type="button" data-lang="tl">Filipino</button><button type="button" data-lang="fi">Finnish</button><button type="button" data-lang="fr">French</button><button type="button" data-lang="gl">Galician</button><button type="button" data-lang="ka">Georgian</button><button type="button" data-lang="de">German</button><button type="button" data-lang="el">Greek</button><button type="button" data-lang="gu">Gujarati</button><button type="button" data-lang="ht">Haitian Creole</button><button type="button" data-lang="iw">Hebrew</button><button type="button" data-lang="hi">Hindi</button><button type="button" data-lang="hu">Hungarian</button><button type="button" data-lang="is">Icelandic</button><button type="button" data-lang="id">Indonesian</button><button type="button" data-lang="ga">Irish</button><button type="button" data-lang="it">Italian</button><button type="button" data-lang="ja">Japanese</button><button type="button" data-lang="kn">Kannada</button><button type="button" data-lang="ko">Korean</button><button type="button" data-lang="la">Latin</button><button type="button" data-lang="lv">Latvian</button><button type="button" data-lang="lt">Lithuanian</button><button type="button" data-lang="mk">Macedonian</button><button type="button" data-lang="ms">Malay</button><button type="button" data-lang="mt">Maltese</button><button type="button" data-lang="no">Norwegian</button><button type="button" data-lang="fa">Persian</button><button type="button" data-lang="pl">Polish</button><button type="button" data-lang="pt">Portuguese</button><button type="button" data-lang="ro">Romanian</button><button type="button" data-lang="ru">Russian</button><button type="button" data-lang="sr">Serbian</button><button type="button" data-lang="sk">Slovak</button><button type="button" data-lang="sl">Slovenian</button><button type="button" data-lang="es">Spanish</button><button type="button" data-lang="sw">Swahili</button><button type="button" data-lang="sv">Swedish</button><button type="button" data-lang="ta">Tamil</button><button type="button" data-lang="te">Telugu</button><button type="button" data-lang="th">Thai</button><button type="button" data-lang="tr">Turkish</button><button type="button" data-lang="uk">Ukrainian</button><button type="button" data-lang="ur">Urdu</button><button type="button" data-lang="vi">Vietnamese</button><button type="button" data-lang="cy">Welsh</button><button type="button" data-lang="yi">Yiddish</button></div><span tabindex="0" class="focus-after"></span></div></div>');

    if(typeof $.contentbuilder == "function"){
            $("#google-translation-popup .popup-box").append('<div class="admin-msg">The translation is not available in the edit mode.</div>')
    }


    $(".google-translation-popupbox .current-lang").on("click",function(){
        $("#google-translation-popup").stop().fadeIn(function(){
            jQuery('#google-translation-popup button').eq(0).focus();
        });
    })
    
    $(".google-translation-popupbox").each(function(){
        if($(this).parents(".mobile-header").length){
            $(this).addClass("is-mobile");
        }
    })

    $(".google-translation-popupbox").prependTo($("body .dng-main"));

    setTimeout(function(){  
        $(".google-translation-popupbox").addClass("active")
    },20)

    if(typeof $.contentbuilder != "function"){

    function changeEvent(el) {
        if (el.fireEvent) {
            el.fireEvent('onchange');
        } else {
            var evObj = document.createEvent("HTMLEvents");
            evObj.initEvent("change", false, true);
            el.dispatchEvent(evObj);
        }
    }

    jQuery('#google-translation-popup button').on("click", function (event) {
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
        jQuery('#google-translation-popup').fadeOut();
        
    }) 

    if($.cookie('translate') && $.cookie('googtrans')){
        jQuery('#google-translation-popup button[data-lang="' + $.cookie('translate') + '"]').addClass("active").trigger("click");
    }


    jQuery('#google-translation-popup .lang-original').on("click", function (event) {
        event.preventDefault();
        if($(".goog-te-banner-frame").length){
            comboGoogleTradutor.value = "";
            $.cookie('translate', null, {path: "/"});
            $($(".goog-te-banner-frame")[0].contentWindow.document).find('.goog-te-button button[id*="restore"]').trigger("click");
        }
        $("#google-translation-popup .active").removeClass("active");
        jQuery('#google-translation-popup').fadeOut();
      
    }) 

    jQuery('#google-translation-popup').off().on("keydown",function(event){
        if((event.key && event.key =="Escape") || ( event.keyCode && event.keyCode==27)){   
            jQuery('#google-translation-popup .close-lang').trigger("click");
        } 
    });
    
    jQuery('#google-translation-popup').find(".focus-before").off().on("focus",function(){
        jQuery('#google-translation-popup').find("button:not(.disabled),a:not(.disabled)").eq(jQuery('#google-translation-popup').find("button:not(.disabled),a:not(.disabled)").length-1).trigger("focus"); 
    })
    jQuery('#google-translation-popup').find(".focus-after").off().on("focus",function(){
        jQuery('#google-translation-popup').find("button:not(.disabled),a:not(.disabled)").eq(0).trigger("focus"); 
    })

}
    jQuery('#google-translation-popup .close-lang').on("click", function (event) {
        event.preventDefault();
        jQuery('#google-translation-popup').fadeOut(function(){
            $(".google-translation-popupbox .current-lang").focus();
        });

    }) 




}