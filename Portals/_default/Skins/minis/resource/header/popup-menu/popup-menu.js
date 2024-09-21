

$(document).ready(function (e) {
    $(".popup-menu-wrap .popup-menu").each(function(){
        var e= $(this);
        var m_icon =e.siblings(".menu-icon");
        e.addClass("show");
        var overflow=false;
        m_icon.on("click",function(){
            clearInterval(overflow);
            if(!$(this).hasClass("active")){
                overflow = setTimeout(function(){
                    $("html").css({"overflow":"hidden","padding-right":window.innerWidth -$(window).width()});
                 },420)
            }else{
                $("html").css({"overflow":"","padding-right":''}); 
                
            }
            $(this).toggleClass("active"); 
            e.toggleClass("active");

           

        });
        e.find(".menu-close").on("click",function(){
            m_icon.removeClass("active"); 
            e.removeClass("active");
        })
        e.find(".gomenu > ul").append(e.find(".popup-last-content"))
        e.find(".popup-last-content").wrap("<li class=\"last-content\"></li>")

    })
});