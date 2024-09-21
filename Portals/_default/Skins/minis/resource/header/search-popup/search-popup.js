$(document).ready(function() {
	$(".search-popup-box:not(.clone)").each(function() {
		var e = $(this);
		var copy = $('<div class="search-popup-box clone"></div>');
		e.after(copy);
		copy.append(e.children(".icon"));
		$("body > form").append(e);
		e.addClass("hide");
		
		e.find(".NormalTextBox").attr("placeholder",e.attr("placeholder"));

		copy.children(".icon").on("click", function() {
			e.removeClass("hide").delay(100).queue(function(){ 
				copy.children(".icon").toggleClass("active");
				e.children(".popup-content").removeClass("loaded");
				e.children(".popup-reveal").removeClass("active");
				e.children(".popup-content").toggleClass("active");
				$(this).dequeue();
			});
		});
		e.children(".popup-content").children(".popup-close").on("click", function() {
			var outtime = $(window)[0].innerWidth < 992 ? 0 : 200;

					$(this).delay(400).queue(function(){
						e.addClass("hide");
						$(this).dequeue();
						e.children(".popup-content").removeClass("loaded");
					});

					e.children(".popup-content").removeClass("active");
					copy.children(".icon").removeClass("active");
					e.children(".popup-content").addClass("loaded");
				
		});

		var out =false;

		if($(window).width() >= 992 ){
			out =true;
		}
		$(window).resize(function(){
			if($(window).width() >= 992 && out === false ){
				out =true;
				if(copy.children(".icon").hasClass("active") ){
					e.addClass("hide").children(".popup-content").children(".popup-close").click();
				}
			}
			if($(window).width() < 992 && out === true ){
				out =false;
				if(copy.children(".icon").hasClass("active") ){
					e.addClass("hide").children(".popup-content").children(".popup-close").click();
				}
			}

		});

	});
})


