

$(document).ready(function () {
    $(".menu-3d-popup-box").each(function () { 
        var main =$(this).find('.menu-3d-popup-main');
        var html =$("html");
        var click=true;
        var top= 0;
        var e=$(this);
        var btn =e.find(".icon,.menu-3d-popup-close");
        var brushcolor = $(this).data("brushcolor");
        //var close= $(this).find(".menu-3d-popup-close");
        btn.on("click",function(){
            if(!click) return false;
            click = false;
            if (!html.hasClass("has-menu-3d-popup")) {
                top=$(window).scrollTop();
                $("html").addClass("has-menu-3d-popup popup-animate-1").delay(10).queue(function () {
                    $(this).addClass("popup-animate-2");
                    $(this).dequeue();
                }).delay(300).queue(function () {
                    $(this).addClass("popup-animate-3");
                    $(".dng-main").scrollTop(top);
                    $(this).dequeue();
                }).delay(10).queue(function () {
                    $(this).addClass("popup-animate-4");
                    click = true;
                    $(this).dequeue();
                });
            } else {
                $("html").removeClass("popup-animate-4").delay(300).queue(function () {
                    $(this).removeClass("popup-animate-3");
                    $(window).scrollTop(top);
                    $(this).dequeue();
                }).delay(300).queue(function () {
                    $(this).removeClass("popup-animate-2");
                    $(this).dequeue();
                }).delay(300).queue(function () {
                    $(this).removeClass("has-menu-3d-popup popup-animate-1");
                    click = true;
                    $(this).dequeue();
                    $(window).resize();
                });
            }
            btn.toggleClass("active");
            main.toggleClass("active");
        });
        $("body > form").append(main);	


        $(".menu-3d-popup-main .gomenu > ul > li >a,.menu-3d-popup-main .gomenu > ul > li > ul > li >a").each(function(){
            var brush =$(this).children("span:not(.menu_arrow)");
            if($(this).parent().hasClass("current")){
                brush.addClass("active");
            }
            $(this).parent().on("mouseover",function(){ 
                brush.addClass("active").change();
            }).on("mouseleave",function(){
                if(!$(this).parent().hasClass("current")){
                        brush.removeClass("active").change();
                }
            })
         //   brush.dngCanvas({effect: "brush",brushcolor:brushcolor});
        })
    //	$(window).on("ready resize load",function(){
        //	main.find(".dropdown > li > ul").width( parseInt($(window).width()*0.45 - main.find(".dropdown").innerWidth() - main.find(".dropdown").offset().left ));
    //	})


        
    });
});