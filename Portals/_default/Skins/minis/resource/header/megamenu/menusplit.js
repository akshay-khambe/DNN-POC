jQuery(document).ready(function() {
	$(".header-split").each(function () {
		var e = $(this);
		e.find(".primary_structure > .back").hide();
		if (e.find(".primary_structure").children("li").length == 1) {
			e.find(".primary_structure").children("li").eq(0).after(e.find(".menu-logo"))
		} else {
			e.find(".primary_structure").children("li").eq(Math.ceil(e.find(".primary_structure").children("li").length / 2)).before(e.find(".menu-logo"))
		}
		var primary = e.find(".primary_structure"),
			im = primary.children("li:not(.back)"),
			l = im.length,
			c = im.siblings(".menu-logo").index(),
			size = im.outerWidth(),
			leftwidth = 0,
			rightwidth = 0,
			i1 = 1,
			i2 = c + 1,
			time = 200;
		var logowidth = im.siblings(".menu-logo").outerWidth();
		var resize = function () {
			im.slice(0, c).addClass("left-item").each(function () {
				leftwidth += $(this).outerWidth()
			});
			im.slice(c + 1, l).addClass("right-item").each(function () {
				rightwidth += $(this).outerWidth()
			});
			var primarytWidth = leftwidth + rightwidth + logowidth;
			if (primary.parent().width() < primarytWidth) {
				primary.css("transform", "translateX(" + parseInt((rightwidth + leftwidth) / 2 - leftwidth - (primarytWidth - primary.parent().width()) / 2) + "px)")
			} else {
				primary.css("transform", "translateX(" + parseInt((rightwidth + leftwidth) / 2 - leftwidth) + "px)")
			}
		};
		im.siblings(".menu-logo").addClass("logo-at");
		resize();
		var leftitem = function () {
			var t = im.eq(c - i1);
			t.addClass("left-at");
			i1++;
			if ($(".hoverstyle_4").length != 0 && t.attr("class").indexOf("current") !== -1) {
				t.mouseout();
				e.find(".primary_structure > .back").fadeIn()
			}
			if (i1 < c + 1) {
				setTimeout(leftitem, time)
			}
		};
		var rightitem = function () {
			var t = im.eq(i2);
			t.addClass("right-at");
			i2++;
			if ($(".hoverstyle_4").length != 0 && t.attr("class").indexOf("current") !== -1) {
				setTimeout(function () {
					t.mouseout();
					e.find(".primary_structure > .back").fadeIn()
				}, time + 1000)
			}
			if (i2 < l) {
				setTimeout(rightitem, time)
			}
		};
		setTimeout(leftitem, time);
		setTimeout(rightitem, time);
		$(window).resize(function () {
			if (size !== im.outerWidth()) {
				size = im.outerWidth();
				leftwidth = 0;
				rightwidth = 0;
				resize()
			}
		})
	});
});
