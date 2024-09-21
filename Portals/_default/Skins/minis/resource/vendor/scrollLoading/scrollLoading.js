
$.fn.scrollLoading = function (options) {

    let images = $(this);

    images.each(function () {
        if( typeof DNNapplyTypography == "undefined" && this.nodeName.toLowerCase() == "img" ){
            let url = $(this).attr("data-src");
            var viewBox =$(this).attr("src") && $(this).attr("src").indexOf("viewBox='")!=-1? $(this).attr("src").split("viewBox='")[1].split("' ")[0].split(" "):false;
                if(viewBox[2]){
                    var w= viewBox[2];
                }else{
                    var w= $(this).width();
                }
            $(this).siblings(".Lazy-loading-transparent,.Lazy-loading").remove();
            if(url && (url.indexOf(".png")!= -1 || url.indexOf(".gif")!= -1)){
                $(this).before('<span class="Lazy-loading-transparent" style="width:'+w+'px"></span>').parent().addClass("img-Lazy-warp");
            }else if(url){
                $(this).before('<span class="Lazy-loading" style="width:'+w+'px"></span>').parent().addClass("img-Lazy-warp");
            }

        }
    });

    function imgAnimation(o){
        o.siblings(".Lazy-loading,.Lazy-loading-transparent").addClass("load-over").delay(400).queue(function(){$(this).remove().dequeue();});
        o.removeClass("Lazy-loading");
    }
 
    var LoadImages = function (event) {
        if (event.isTrusted) {
            images.each(function(){
                var e =$(this);
                if(this.dataset.src){
                    this.src = this.dataset.src;  
                    e.one("load", function () {
                        imgAnimation(e);
                    });
                }
            });
            ['click', 'scroll'].forEach(function (e) {
                document.removeEventListener(e, LoadImages);
                window.removeEventListener('resize', LoadImagesOne);
            });
        }
    };
    ['click', 'scroll'].forEach(function (e) {
        document.addEventListener(e, LoadImages);
    });

    var LoadImagesOne = function (event) {
            const viewPortHeight = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
            images.each(function () {
                const top = this.getBoundingClientRect() && this.getBoundingClientRect().top;
                if (top <= viewPortHeight && this.dataset.src) {
                    this.src = this.dataset.src;
                    $(this).one("load", function () {imgAnimation($(this));})
                }
            });
        }
    LoadImagesOne();
    window.addEventListener('resize', LoadImagesOne);

};

$.fn.scrollLoadingBackground = function (options) {

    let background = $(this);
        var LoadBackground = function (event) {
            if (event.isTrusted) {
                background.each(function(){
                    var e =$(this);
                    if(this.dataset.src){
                        this.style.backgroundImage = "url(\"" + this.dataset.src + "\")";
                        delete this.dataset.src ;
                    }
                });
                ['click', 'scroll'].forEach(function (e) {
                    document.removeEventListener(e, LoadBackground);
                    window.removeEventListener('resize', LoadBackgroundOne);
                });
            }
        };
        ['click', 'scroll'].forEach(function (e) {
            document.addEventListener(e, LoadBackground);
        });
        var LoadBackgroundOne = function (event) {
            const viewPortHeight = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
            background.each(function () {
                if($(this).is(":visible")){
                    const top = this.getBoundingClientRect() && this.getBoundingClientRect().top;
                    if (top <= viewPortHeight && this.dataset.src) {
                        this.style.backgroundImage = "url(\"" + this.dataset.src + "\")";
                        delete this.dataset.src ;
                    }
                }
            });
        };
        LoadBackgroundOne();
        window.addEventListener('resize', LoadBackgroundOne);

};


$.fn.scrollLoadingVideo = function (options) {

    let background = $(this);
        var LoadBackground = function (event) {
            if (event.isTrusted) {
                background.each(function(){
                  
                var isLazy = false;
                  $(this).find("source").each(function(){
                    if(this.dataset.src){
                        this.src = this.dataset.src;
                        delete this.dataset.src ;
                        isLazy = true;
                    }
                 })
                 if(isLazy){
                    var video = $(this).find("video");
                    video.after(video[0].outerHTML);
                    video.remove();
                }

                });
                ['click', 'scroll'].forEach(function (e) {
                    document.removeEventListener(e, LoadBackground);
                    document.removeEventListener('resize', LoadBackgroundOne);
                });
            }
        };
        ['click', 'scroll'].forEach(function (e) {
            document.addEventListener(e, LoadBackground);
        });
        var LoadBackgroundOne = function (event) {
            const viewPortHeight = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
            background.each(function () {
                if($(this).is(":visible")){
                    const top = this.getBoundingClientRect() && this.getBoundingClientRect().top;
                    if (top <= viewPortHeight) {

                        var isLazy = false;
                        $(this).find("source").each(function(){
                            
                            if(this.dataset.src){
                                this.src = this.dataset.src;
                                delete this.dataset.src ;
                                isLazy = true;
                            }

                        })
                        if(isLazy){
                            var video = $(this).find("video");
                            video.after(video[0].outerHTML);
                            video.remove();
                        }
                    }


                }
            });
        };
        LoadBackgroundOne();
        window.addEventListener('resize', LoadBackgroundOne);

};


jQuery(document).ready(function () {    
    $(".img-Lazy").scrollLoading({
        loading: true,
    });
    $(".bg-Lazy").scrollLoadingBackground({
        loading: true,
    });
    $(".video-Lazy").scrollLoadingVideo({
        loading: true,
    });

    $(".iframe-Lazy").scrollLoading({
        loading: true,
    });

})




 