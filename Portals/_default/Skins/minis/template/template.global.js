
var GlobalThemeOptions = {
    accent:"${xf.ViewGlobalSetting("AccentColour","#20a3f0")} ",
    accent2:"${xf.ViewGlobalSetting("AccentColour2","#9b61dc")}",
    accent3:"${xf.ViewGlobalSetting("AccentColour3","#22cae4")}",
    accent4:"${xf.ViewGlobalSetting("AccentColour4","#22d3a7")}",
};

${xf.ViewGlobalSetting("CustomJS","")}

#if(${xf.ViewGlobalSetting("bootstrap",false)}) 
/* bootstrap.min.js start*/
${xf.ReadFile("resource/vendor/bootstrap/bootstrap.min.js",0)} 
/* bootstrap.min.js end*/
#end

#if(${xf.ViewGlobalSetting("aos_min",false)}) 
/* aos.js start*/
${xf.ReadFile("resource/vendor/aos/aos.js",0)}
/* aos.js start*/
#end

#if(${xf.ViewGlobalSetting("megamenu",true)}) 
/* megamenu.js start*/
${xf.ReadFile("resource/vendor/megamenu/megamenu.js",0)}
/* megamenu.js start*/
#end


/** dnngo.js start*/
${xf.ReadFile("resource/js/dnngo.js",0)}
/** dnngo.js end*/

/*Page Animating*/
#if(${xf.ViewGlobalSetting("PageAnimating",true)}) 
$(document).ready(function() {
    
    if ($(".page-loaders").length === 0 ||  typeof DNNapplyTypography != "undefined"  ) {
        return false;
    }

    var isAnimating = false;
    $('body').addClass('page-loader-changing');

    var alinkAnimating = function(event,t) {

        var href = t.attr('href');

        if (!href) {
            return;
        }
        if (href.substring(0, 1) == "#"){
            return;
        }
        if( href.substring(0, 4) !== "http" &&  href.substring(0, 1) !== "/" ){
            return;
        }
        if(href.split("#")[0] == window.location.href.split("#")[0] ){
            return;
        }
        if (href.indexOf(".jpg") !==-1 || href.indexOf(".png") !==-1 || href.indexOf(".gif") !==-1 || href.indexOf(".bmp") !==-1) {
            return;
        }
        if(t.attr("class")){
            if (t.attr("class").indexOf("LightBox") !== -1 ) {
                return;
            }
        }
        if (t.hasClass("mm-title")) {
            return;
        }

        event.preventDefault();
        var newPage = href;
        var target = t.attr("target") ? t.attr("target") : "_self";
        //if the page is not animating - trigger animation
        if (!isAnimating) {
            isAnimating = true;
            $('body').addClass('page-is-changing');
            setTimeout(function() {
                window.open(newPage, target);
                if (target !== "_self") {
                    $('body').delay(300).queue(function() {
                        $('body').removeClass('page-is-changing').dequeue();
                        isAnimating = false;
                    });
                } 

            }, 300);
            
        }
    }

    $('.dng-megamenu,.dng-mobilemenu,.page-breadcrumbs,.footer-info-box,.userMenu,.logo,.link-animate').on('click', 'a',function(event){
        alinkAnimating(event,$(this));
    });
    $('.link-animate').on('click',function(event){
        alinkAnimating(event,$(this));
    });

});


#end


/** custom.js start*/
${xf.ReadFile("resource/js/custom.js",0)}
/** custom.js end*/
