$(".sidenav-middle").each(function(){
    var box=$(this);
    var menu = box.find(".leftslidemenu");
        box.find(".icon-line-animate").on("click",function(){
                $(this).toggleClass("active");
                menu.toggleClass("active");
                $(".sidenav-bottom .search-popup-box .icon,.leftslidesearch .popup-content").removeClass("active");
            })
        $("body").click(function (e) {
            if (! ($(e.target).closest(".leftslidemenu").length || $(e.target).closest(".headersidenav").length)) {  
                box.find(".icon-line-animate").removeClass("active")
                menu.removeClass("active");
            }
        });
        var delay = 600;
        var speed =10;
        menu.find("ul").each(function(){
            delay = $(this).children("li").eq(0).children("a").css("transition-delay")?parseFloat($(this).children("li").eq(0).children("a").css("transition-delay").replace("s",""))*1000:600;

            $(this).children("li").children("a").each(function(index){
                $(this).css("transition-delay",(delay+speed*index)+"ms")
            })
        })
        menu.find("li.dir > a .menu_arrow ").unbind().on("click",function(e){
            e.preventDefault();
            e.stopPropagation();
        });

        menu.appendTo($("body > form"));
        var shade=$("<div class=\"slide-shade\"></div>");
        menu.after(shade);
        shade.on("click",function(){
            menu.removeClass("active");
            box.find(".icon-line-animate").removeClass("active");
        })   
})
$(".headersidenav").appendTo($("body > form"));

$(".sidenav-bottom .search-popup-box").on("click",function(){
    $(".sidenav-middle .icon-line-animate,.leftslidemenu").removeClass("active");
})

 $(".leftslidemenu .dir > a").each(function(){
        $(this).append('<span class="menu_arrow"></span>')
 })