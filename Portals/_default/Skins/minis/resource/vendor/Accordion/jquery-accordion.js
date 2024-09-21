
(function($){
	jQuery.fn.jqueryAccordion = function(options){
		var settings = {
			interval	 			: 400,     	// animation time (ms)
			fadeContent			: false,		// content fading
			open					: false, 	// determines if the accordion starts with a item opened
			defaultOpenIndex	: 1,			// index of the item opened
			clickOutToClose	: false		// close accordion if the user click out of it
		}
		$.extend( settings, options );
		
		var accordion = $(this);
		
 
		if(settings.open == true){
			$(accordion).children(".accordion-item:nth-child(" + settings.defaultOpenIndex +")").addClass("opened");
			$(accordion).children(".accordion-item:nth-child(" + settings.defaultOpenIndex +")").children(".accordion-content").show(0);
		//	$(accordion).children(".accordion-item:nth-child(" + settings.defaultOpenIndex +")").children(".accordion-header").find("a").removeClass("collapsed");
		}
    
		
		$(accordion).children(".accordion-item").children(".accordion-header").bind("click", function(){
			if($(this).siblings(".accordion-content").is(":hidden")){
				if(settings.fadeContent == true){
					$(accordion).children(".accordion-item").children(".accordion-content").children().animate({opacity: 0}, 0);
				}
				$(accordion).children(".accordion-item").removeClass("opened");
			//	$(accordion).children(".accordion-item").children(".accordion-header").find("a").addClass("collapsed");
        
				$(accordion).children(".accordion-item").children(".accordion-content").slideUp(settings.interval);
				$(this).siblings(".accordion-content").slideDown(settings.interval, function () {
					if ($(this).offset().top < $(window).scrollTop()) {
						jQuery('body,html').stop().animate({
							scrollTop: $(this).offset().top - (typeof floatingOffset != "undefined" ?floatingOffset + 10 : 100)
						}, 100)
					}
				});
				
				$(this).parent().addClass("opened");
				//$(this).find("a").removeClass("collapsed");
        
        
				if(settings.fadeContent == true){
					var time = 0;
					for(var i = 1; i < $(this).siblings(".accordion-content").children().length + 1; i++){
						$(this).siblings(".accordion-content").children(":nth-child(" + i +")").delay(settings.interval + time).animate({opacity: 1}, 300);
						time = time + 100;
					}
				}
			}
			else{
				$(this).siblings(".accordion-content").slideUp(settings.interval);
				$(this).parent().removeClass("opened");
				//$(this).find("a").addClass("collapsed");
			}
		});
		
		if(settings.clickOutToClose){
			$(document).bind("click", function(ev){
				if($(ev.target).closest(accordion).length == 0){
					$(accordion).find(".accordion-content").slideUp(settings.interval);
				}
			});
		}
		
	}
}(jQuery));


$(function () {
	var once = true;
	var GetUrlParam = function (paraName) {
		var url = document.location.toString();
		var arrObj = url.split("?");
		if (arrObj.length > 1) {
			var arrPara = arrObj[1].split("&");
			var arr;
			for (var i = 0; i < arrPara.length; i++) {
				arr = arrPara[i].split("=");
				if (arr != null && arr[0] == paraName) {
					return arr[1]
				}
			}
			return ""
		} else {
			return ""
		}
	};
	$(".dg-accordion").each(function () {
		var acc = $(this);
		var interval = acc.data("interval") ? acc.data("interval") : 300;
		var fadeContent = typeof acc.data("fade") != "undefined" ? acc.data("fade") : true;
		var defaultOpenIndex = acc.data("index") ? acc.data("index") : 1;
		var open = typeof acc.data("open") != "undefined" ? acc.data("open") : true;

		if (acc.attr("id")) {
			var n = GetUrlParam(acc.attr("id"))
			if (n) defaultOpenIndex = n, open = true;
			
			if (once && n) {
				once = false;
				jQuery('body,html').stop().animate({
					scrollTop: acc.children().eq(n - 1).offset().top - (typeof floatingOffset != "undefined" ?floatingOffset + 10 : 100) - acc.children().eq(n - 1).height()
				}, 200);
			}
		}
		acc.jqueryAccordion({
			interval: interval,
			fadeContent: fadeContent,
			defaultOpenIndex: defaultOpenIndex,
			open: open
		});
	});
});



 