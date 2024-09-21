    $(".hotspot").each(function () {
        var box = $(this);
        var offset = 40;
        var space = 10;

        function tooltipPosition(i) {
            i.each(function () {
                var e = $(this),
                    content = e.find(".hotspot-content");
                    content.find(".hotspot-info").css("transform","");
                var width = parseInt(content.width());
                var e_left = e.offset().left;
                var left = width / 2;
                if (e_left < left + 10) {
                    content.find(".hotspot-info").css("transform", "translateX(" + (left - e_left + 10) + "px)")
                }
                if (parseInt($(window).width()) - e_left < left + 10) {
                    content.find(".hotspot-info").css("transform", "translateX(-" + (e_left + left - parseInt($(window).width()) + 10) + "px)")
                }

            })
        }

        if ($(window).width() > 767) {
            tooltipPosition(box.find(".hotspot-item.type-tooltip"));
        }
        $(window).resize(function () {
            tooltipPosition(box.find(".hotspot-item.type-tooltip"));
        })

        if (box.data("trigger") == "hover") {
            box.find(".hotspot-item.type-tooltip").on("mouseenter", function () {
                if (!$(this).hasClass("active")) {
                    tooltipPosition($(this));
                }
                $(this).addClass("active").find(".hotspot-content").removeClass("mfp-hide").stop().fadeIn(function(){
                    if($(this).find('.Lazy-loading-transparent,.Lazy-loading').length){
                      $(window).scroll();
                     }
                 });
                $(this).find(".arrow").stop().fadeIn();
                $(this).siblings().find(".hotspot-content").stop().fadeOut();
                $(this).siblings().removeClass("active").find(".arrow").stop().fadeOut();
            }).on("mouseleave", function () {
                var e = $(this);
                e.find(".hotspot-content").stop().fadeOut(function () {
                    e.removeClass("active")
                });
                e.find(".arrow").stop().fadeOut();
            })
        } else {
            box.find(".hotspot-item.type-tooltip").on("click", ".h-dot", function () {
                if (!$(this).parent().hasClass("active")) {
                    tooltipPosition($(this).parents(".hotspot-item"));
                    $(this).parent().siblings().removeClass("active").find(".arrow").stop().fadeOut();
                    $(this).parent().siblings().find(".hotspot-content").stop().fadeOut();
                }
                $(this).siblings(".hotspot-content").removeClass("mfp-hide").stop().fadeToggle(function(){
                   if($(this).find('.Lazy-loading-transparent,.Lazy-loading').length){
                     $(window).scroll();
                   }
                });
                $(this).find(".arrow").stop().fadeToggle();
                $(this).parent().toggleClass("active");
            })
            box.find(".hotspot-content .hotspot-close").on("click", function () {
                $(this).parents(".hotspot-content").stop().fadeOut();
                $(this).parents(".hotspot-item").removeClass("active");
            })
        }

        box.find(".h-dot i.number").each(function (index) {
            $(this).html(index + 1)
        })



    });