function moduleEditModeJs(type, id, alias, modulejs ) {
	 
	if(modulejs){
		if(moduleJsUrlAlias[type]){
			type = moduleJsUrlAlias[type];
		}
	}
	 
	if (typeof id == "object") {
		parent = id;
	} else {
		parent = $(".is-wrapper #js-" + id).parent();
	}
	if (ClearSaveJS) return false;
	type = type.split(",");

	if (!alias) alias = type[0];
	if (moduleEditModeFunction[alias]) {
		moduleEditModeFunction[alias]();
	}

	type.forEach(function (value, i) {
		var type = value;
		if (skinVendorUrl[type]) {
			var link = skinVendorUrl[type];
			if (!currentVendorUrl[type]) {
				if (link.css) { 
					$("head").append(`<link href="${link.css.replace("[SkinPath]",SkinPath)}" id="vendor-css-${type}" type="text/css" rel="stylesheet"/>`)
				}
				if (link.js) {
					var script = document.createElement("script");
					script.type = "text/javascript";
					script.src = link.js.replace("[SkinPath]",SkinPath);
					script.id = "vendor-js-" + type;
					document.head.appendChild(script);
				}
				currentVendorUrl[type] = link;
			}
		
			if($(".is-wrapper").length){
				$(".is-wrapper")[0]["Builder"]["VendorUrl"] ? (!$(".is-wrapper")[0]["Builder"]["VendorUrl"][type] ? $(".is-wrapper")[0]["Builder"]["VendorUrl"][type] = link : false) : $(".is-wrapper")[0]["Builder"]["VendorUrl"] = {}, $(".is-wrapper")[0]["Builder"]["VendorUrl"][type] = link;
			}
		}

	})

	if (typeof id != "object") {
		parent.find("#js-" + id).remove();
	}
}



var moduleEditModeFunction = {
	Accordions: function () {
		if (typeof jQuery.fn.jqueryAccordion == "undefined") return false;
		var once = true;
		parent.find(".dg-accordion").each(function () {
			var acc = $(this);
			var interval = acc.data("interval") ? acc.data("interval") : 300;
			var fadeContent = typeof acc.data("fade") != "undefined" ? acc.data("fade") : true;
			var defaultOpenIndex = acc.data("index") ? acc.data("index") : 1;
			var open = typeof acc.data("open") != "undefined" ? acc.data("open") : true;

			acc.jqueryAccordion({
				interval: interval,
				fadeContent: fadeContent,
				defaultOpenIndex: defaultOpenIndex,
				open: open
			});
		});

	},
	Number: function () {
		if (typeof addJsAnimation != "undefined") {
			addJsAnimation(parent.find(".animation"));
		}
	},
	visible: function () {
		if (typeof addJsAnimation != "undefined") {
			addJsAnimation(parent.find(".animation"));
		}
	},
	carousel: function () {
		if (typeof swiperLauncher != "undefined") {
		 setTimeout(function(){	swiperLauncher(parent.find(".swiper-container"))},100);
		}
	},
	sectionSlider:function () {
		if (typeof swiperLauncher != "undefined") {
			swiperLauncher(parent);
		}
	},
	testimonials: function () {
		if (typeof swiperLauncher != "undefined") {
			swiperLauncher(parent.find(".swiper-container"));
		}
	},
	masonry: function () {
		if (typeof masonryLauncher != "undefined") {
			masonryLauncher(parent.find(".isotope-grid"));
		}
	},
	minilightbox: function () {
		if (typeof ilightboxLauncher != "undefined") {
		
			parent.find('.is-lightbox').on("click",function (event) {
			//	event.preventDefault();
			//	$(this).off();
			//	miniLightbox(this);
			});
		
		}
	},
	svgicon: function () {
		parent.each(function (index) {
			if (typeof Vivus == "undefined") return false;
			var e= $(this);
			e.removeClass("animated");
			
			var icon = e.attr("class").split("icon-svg icon-")[1].split(" ")[0];
			var id = "icon-svg-" + Math.random().toString(36).substr(2);
			e.find("svg").remove();
			if(!svgAnimationIcon){
				$.ajax({
					url: $("#SkinPath").data("path") + "resource/icons-svg/svg-animation-icon.svg",
					async: true,
					success: function (data) {
						svgAnimationIcon = $(data);
						var svg = '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64" enable-background="new 0 0 64 64" xml:space="preserve">'+svgAnimationIcon.find("#"+icon).html()+'</svg>';
						e.append(svg).addClass("animated").find("svg").attr("id", id);
						new Vivus(id, {
							duration: 40,
							type: "sync"
						})						
					}
				})
			}else{
				var svg = '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64" enable-background="new 0 0 64 64" xml:space="preserve">'+svgAnimationIcon.find("#"+icon).html()+'</svg>';
				e.append(svg).addClass("animated").find("svg").attr("id", id);
				new Vivus(id, {
					duration: 40,
					type: "sync"
				})						
			}
		})

	},
	soon:function() {
		if (typeof jQuery.fn.soon != "undefined") {

			parent.find(".soon").each(function () {
				var soon = $(this);
				$(this).soon().create(false).removeClass("loading");
			})

		} 
	},
	ajaxform:function() {
		if(typeof getajaxform != "undefined") {
			getajaxform(parent);
		}
	},
	gmap:function() {
		if(typeof ContentBuilderMap != "undefined") {
			ContentBuilderMap(parent);
		}
	},
	tab:function() {
		if(typeof tabLauncher != "undefined") {
			tabLauncher(parent.find(".verticalTab_Left,.verticalTab_Right,.horizontalTab_Bottom,.horizontalTab_Top"));
		}
	},
	easyPieChart:function() {
		if (typeof easyChartLauncher != "undefined") {
			easyChartLauncher(parent.find(".decorate"));
		}
	},
	marquee:function(){
		if(typeof marqueeLauncher != "undefined") {
			marqueeLauncher(parent.find(".news-marquee"));
		}
	},
	paroller:function(){
		if (typeof parollerLauncher != "undefined") {

			parollerLauncher(parent);

			$(window).scroll();

		}
	}

};