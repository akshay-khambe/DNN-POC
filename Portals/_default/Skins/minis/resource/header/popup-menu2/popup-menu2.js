

$(document).ready(function (e) {
    $(".popup-menu2-wrap .popup-menu2").each(function(){
        var e= $(this);
        var m_icon =e.siblings(".menu-icon");
        e.addClass("show");
        m_icon.on("click",function(){
            $(this).toggleClass("active"); 
            e.toggleClass("active");
        });
        e.find(".menu-close").on("click",function(){
            m_icon.removeClass("active"); 
            e.removeClass("active");
        })
        e.find(".gomenu > ul").append(e.find(".popup-last-content"))
        e.find(".popup-last-content").wrap("<li class=\"last-content\"></li>")

    }).appendTo($("body > form"))
});