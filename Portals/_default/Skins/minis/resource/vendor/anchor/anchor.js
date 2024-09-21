
jQuery(document).ready(function ($) {

	var e = $(".anchorTag");
	if (e.length > 0) { 
		if ($("#anchorNav").length == 0 && OnePageOption.navigation) {
			$("body").append("<div class='anchor-dots "+OnePageOption.navigation_position+" "+OnePageOption.navigation_style+"'><ul id='anchorNav' data-scrollshownav='true'></ul></div>")
		};
		var w =$(window);
		if($(".dng-main").data("page-type") =="verticalfullpage"){
			w = jQuery(".dng-main");
		}

		var nav = $("#anchorNav");
		if (e.eq(0).data("scrollshownav") || nav.data("scrollshownav")) {
			nav.hide();
			var data = nav.data("scrollshownav") ? nav.data("scrollshownav") : e.eq(0).data("scrollshownav");


			if (data == true) {
				w.scroll(function () {
					if (w.scrollTop() > Math.min( parseInt(w.height()) -80,e.eq(0).offset().top - 80) ) {
						nav.fadeIn(200)
					} else {
						nav.fadeOut(200)
					}
				})
			} else if (data != "false") {
				w.scroll(function () {
					if (w.scrollTop() > parseInt(data)) {
						nav.fadeIn(200)
					} else {
						nav.fadeOut(200)
					}
				})
			}
		};
		for (i = 0; i < e.length; i++) {
			var ei = e.eq(i);
			var title = ei.data("title") ? ei.data("title") : "";
			var icourl = ei.data("icourl") ? "<b> <img src=\"" + ei.data("icourl") + "\" /></b>" : "";
			var iconame = ei.data("iconame") ? ei.data("iconame") : "";
			nav.append("<li><a class=\"" + iconame + "\" href=\"#"+ei.attr("id")+"\"><span>" + (i + 1) + "</span></a>" + icourl + "<div class=\"anchor-tooltip\">" + title + "</div></li>");
		};
	
	}
})