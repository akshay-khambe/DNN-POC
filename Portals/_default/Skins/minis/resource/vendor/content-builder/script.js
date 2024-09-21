/*dnn*/
var currentVendorUrl = {};

var skrollrrefresh = {
	refresh: function () {
		return false
	}
};
var skrollr = {
	get: function () {
		return skrollrrefresh;
	}
};

// Snippet category
var selSnippetCat = {
	"Basic": 120,
	"Button": 700,
	"Title": 701,
	"Pricing": 702,
	"Our Team": 703,
	"Info Box": 704,
	"Icon Box": 705,
	"Image Box": 706,
	"Social": 707,
	"Client List": 708,
	"Accordion": 800,
	"Carousel": 801,
	"Progressbar": 802,
	"Testimonials": 803,
	"Counter": 805,
	"Countdown": 806,
	"Form": 807,
	"Google Map": 809,
	"Portfolio": 810,
	"Tab": 811,
	"FAQ": 812,
	"Step": 813,
	"Flip Box": 814,
	"List": 815,
	"Hotspot":816,
	"Time Line":817,
	"Chart":818,
	"Modal": 727,
	"Add Module": 990,
	"Form Builder": 991,
	"Token": 766
}
// Section category
var selSectionCat = {
	"Basic": 1,
	"Layout": 999,
	"Home01": 800,
	"Home02": 801,
	"Home03": 802,
	"Home04": 803,
	"Home05": 804,
	"Home06": 805,
	"Home07": 806,
	"Home08": 807,
	"Home09": 808,
	"Home10": 809,
	"Home11": 810,
	"Home12": 811,
	"Home13": 812,
	"Home14": 813,
	"APP 01": 814,
	"APP 02": 821,
	"SEO 01": 815,
	"Organic Food": 818,
	"SAAS": 819,
	"SAAS02": 823,
	"Design Studio": 820,
	"Design Studio2": 822,
	"Page": 816,
	"Coming Soon": 817
}

var  validationEngineLanguage = VerifyJS[1] ? VerifyJS[1].split("?")[0] : VerifyJS[0].split("?")[0] ;


var skinVendorUrl = {
	Accordions: {
		js: "[SkinPath]resource/vendor/Accordion/jquery-accordion.js",
		jsasync: true,
	},
	vivus: {
		js: "[SkinPath]resource/vendor/vivus/vivus.min.js",
		jsasync: true,
	},
	swiper: {
		js: "[SkinPath]resource/vendor/swiper/swiper.min.js",
		css: "[SkinPath]resource/vendor/swiper/swiper.min.css",
		jsasync: true,
		cssasync: true
	},
	minilightbox: {
		js: "[SkinPath]resource/vendor/minilightbox/minilightbox.min.js",
		css: "[SkinPath]resource/vendor/minilightbox/minilightbox.css",
		jsasync: true,
		cssasync: true
	},
	lazyloading: {
		js: "[SkinPath]resource/vendor/scrollLoading/scrollLoading.js",
		css: "[SkinPath]resource/vendor/scrollLoading/scrollLoading.css",
		jsasync: true,
	},
	visible: {
		js: "[SkinPath]resource/vendor/visible/visible.js",
		jsasync: true,
	},
	soon: {
		css: "[SkinPath]resource/vendor/soon/soon.min.css",
		js: "[SkinPath]resource/vendor/soon/soon.min.js",
		jsasync: true,
		cssasync: true
	},
	ajaxform: {
		css:  "[SkinPath]resource/vendor/ajaxform/jquery.ajaxform.css",
		js: "[SkinPath]resource/vendor/ajaxform/jquery.ajaxform.js",
		jsasync: true,
	},
	ajaxform2: {
		css:"[SkinPath]resource/vendor/ajaxform2/jquery.ajaxform2.css",
		js: "[SkinPath]resource/vendor/ajaxform2/jquery.ajaxform2.js",
		jsasync: true,
	},
	validationEngineLanguage: {
		js: validationEngineLanguage
	},
	validationEngine: {
		js: ModulePath + "Resource/js/jquery.validationEngine.js",
		jsasync: true,
	},
	Masonry: {
		css: "[SkinPath]resource/vendor/isotope/isotope.css",
		js: "[SkinPath]resource/vendor/isotope/isotope.pkgd.min.js",
		jsasync: true,
	},
	gmap: {
		js: "[SkinPath]resource/vendor/map/jquery.gmap.min.js",
		jsasync: true,
	},
	tab: {
		js: "[SkinPath]resource/vendor/easyResponsiveTabs/easyResponsiveTabs.js",
		jsasync: true,
	},
	step: {
		js: "[SkinPath]resource/vendor/step/step.js",
		jsasync: true,
	},
	step2: {
		js: "[SkinPath]resource/vendor/step/step2.js",
		jsasync: true,
	},
	hotspot: {
		js: "[SkinPath]resource/vendor/hotspot/hotspot.js",
		jsasync: true,
	},
	easyPieChart: {
		js: "[SkinPath]resource/vendor/easyPieChart/jquery.easypiechart.min.js",
		jsasync: true,
	},
	marquee:{
		js: "[SkinPath]resource/vendor/marquee/marquee.js",
	},
	paroller: {
		js: "[SkinPath]resource/vendor/paroller/jquery.paroller.min.js"
	},
	modal: {
		js: "[SkinPath]resource/vendor/modal/modal.min.js",
		css: "[SkinPath]resource/vendor/modal/modal.css",
		jsasync: true,
		cssasync: true
	},
}
var VendorUrlAlias = {
	visible: [".animation.number", ".icon-svg", ".animation.bar", ".animation.text-slide"],
	swiper: [".swiper-container"],
	minilightbox: [".is-lightbox"],
	lazyloading: [".img-Lazy", ".iframe-Lazy", ".bg-Lazy", ".video-Lazy"],
	vivus: [".icon-svg"],
	validationEngineLanguage: [".ajaxform",".Module-PowerForms"],
	validationEngine: [".ajaxform",".Module-PowerForms"],
	ajaxform: [".ajaxform"],
	ajaxform2: [".Module-PowerForms"],
	Masonry: [".isotope-grid"],
	gmap: [".builder-gmap"],
	tab: [".verticalTab_Left", ".verticalTab_Right", ".horizontalTab_Bottom", ".horizontalTab_Top"],
	step: [".step-01"],
	step2: [".step-02"],
	easyPieChart: [".decorate"],
	paroller: [".bg-attachment-js"],
	marquee:[".news-marquee"],
	modal: [".modalbox"]
}

var moduleJsUrlAlias ={
	"PowerForms-Responsive":"ajaxform2"
};



var modulesIcon = false;
var ClearSaveJS = false;

var svgAnimationIcon = false;
var svgLinearicons = false;
var svgFontawesome = false;


var customSectionCode = [];
var customSectionCodeNew = {};
var customSectionCodeIndex = false;

var AddReplace = false;

var isSectionCode = false;

var $isbox = $(".is-box").eq(0);
var $isSection = $(".is-section").eq(0);

var SectionCatNumber = 11;
var snippetCatNumber = 10;

var addHistory = true;
var History_cb =0;
var cuurHistory =0;
var maxHistory = 50;
var midHistoryIndexed =[];
var SelectHistory =false;
var HistoryTime = 1000;
if(typeof window.localStorage == "undefined"){
	var addHistory = false;
}

var getparameterdom =false;
var ModuleStorageHTML ={};

var LoaderCompleteHTML = 0;

var PageGlobalCSS = false;

var WebpSupport = true;
(function ($) {
	const WebpImage = new Image();
	WebpImage.src = 'data:image/webp;base64,UklGRiQAAABXRUJQVlA4IBgAAAAwAQCdASoBAAEAAwA0JaQAA3AA/vuUAAA=';
	WebpImage.onerror = function () {
		WebpSupport = false;
	}
})(jQuery);


$.ajax({
	url: SkinPath + "resource/icons-svg/fontawesome.svg",
	async: true,
	success: function (data) {
		svgFontawesome = $(data);
	}
})
$.ajax({
	url: SkinPath + "resource/icons-svg/linearicons.svg",
	async: true,
	success: function (data) {
		svgLinearicons = $(data);
	}
})
$.ajax({
	url: SkinPath + "resource/icons-svg/svg-animation-icon.svg",
	async: true,
	success: function (data) {
		svgAnimationIcon = $(data);
	}
})

var LinkNavSelect = $("<ul class=\"link-list-select\">");

jQuery(document).ready(function ($) {
	if(typeof GetTabListServiceUrl != undefined){
		$.post(GetTabListServiceUrl + $(".d-wrapper").eq(0).data("mid"),function (data) {
				if(data){
					data = jQuery.parseJSON(data);
					for (var key in data) {
						if(data[key]["Url"]){
							LinkNavSelect.append('<li data-value="'+data[key]["Url"]+'">'+data[key]["IndentedTabName"]+'</li>')
						}
					}
					$(".link-list-select").each(function(){
						if(!$(this).html()){
							$(this).html(LinkNavSelect.html());
						}
					})
				}
		}
		);
	}
})

jQuery(document).ready(function ($) {
	$(".menucontent .d-wrapper").addClass("noedit");
	if(!$(".d-wrapper:not(.noedit)").length){return false;}


	var ActionMenuMoveId = [];

	if($(".editBarFrameContainer").length){
		var hideActionMenuMove = '<style id="hideActionMenuMove">';
		
		$('.custom-module[data-modulename="DNNGo.AddModule"]').each(function(i){
			hideActionMenuMove +=(i?",":"")+"#moduleActions-"+$(this).data("mid") +" .actionMenuMove";
			ActionMenuMoveId.push($(this).data("mid"));
		})
		hideActionMenuMove +="{display: none;}</style>";
		$("body").append(hideActionMenuMove);
	}


	$.post(GetSectionListServiceUrl + $(".content-builder.d-wrapper:not(.noedit)").eq(0).data("mid"), function (data) {
		if (data) {
			data = jQuery.parseJSON(data);
			customSectionCode = customSectionCode.concat(data["Results"]);
		}
		customSectionCodeIndex = true;
	})


	function HasVendorUrl(g) {
		for (var key in g) {

			if (VendorUrlAlias[key]) {
				var has = false;
				VendorUrlAlias[key].forEach(function (j) {
					if ($(`${j}`).length) {
						has = true;
						return;
					}
				})
				if (!has) delete g[key];
			} else {
				if ($(`.custom-module[data-effect="${key}"]`).length == 0) delete g[key];
			}
		}




		return g;
	}

	function randomRangeId(num) {
		var returnStr = "",
			charStr = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
		for (var i = 0; i < num; i++) {
			var index = Math.round(Math.random() * (charStr.length - 1));
			returnStr += charStr.substring(index, index + 1);
		}
		return returnStr;
	}


	var googleFont = [];
	var contentFont = {};

	$("head link").each(function () {
		if (this.href.indexOf("googleapis") != -1 && this.href.split("family=")[1]) {
			if ($(this).attr("class") != "contentbox-google") {
				googleFontLink(this.href.split("family=")[1].split("&")[0]);
			} else {
				googleFont.push(this.href.split("family=")[1].split("&")[0]);
			}
		} else if ($(this).data("name") == "contentstyle") {
			contentFont[$(this).data("class")] = $(this).attr("href").replace(SkinPath,"[SkinPath]");
		}
	})






	googleFont = googleFont.join("|").split("|");
	googleFont = googleFont.filter(function (s) {
		return s && s.trim();
	});
	var new_googleFont = [];
	for (var i = 0; i < googleFont.length; i++) {
		var items = googleFont[i];
		if ($.inArray(items, new_googleFont) == -1) {
			new_googleFont.push(items);
		}
	}
	googleFont = new_googleFont;


	$(document).on("mousemove", '.is-sidebar-overlay', function () {
		if ($(".ui-sortable-placeholder").parents(".d-wrapper").length && !$(".ui-sortable-placeholder").parents(".d-wrapper").hasClass("is-wrapper")) {
			$(".d-wrapper").removeClass("is-wrapper");
			$(".ui-sortable-placeholder").parents(".d-wrapper").addClass("is-wrapper").focus().siblings().removeClass("is-wrapper").blur().change();
		}
	})



	function googleFontLink(g) {
		if (g) {
			$("head").append('<style type="text/css" class="googleapis-style">@import url(\'//fonts.googleapis.com/css?family=' + g + '\')</style>');
		}
	}
	googleFont.forEach(function (v, i) {
		googleFontLink(v);
	})

	function contentFontLink(g) {
		if (g) { 
			$("head").after('<style type="text/css" class="contentfont-style">@import url(\'' + g.replace("[SkinPath]",SkinPath) + '\')</style>');
		}
	}


	$("style#ContentBuilder-PageGlobalCSS").remove();


	var lastIndex = 0,
		lastlength = 0;
	var pagemodification = false;
	var preview = false;
	//Enable editing

	$(".d-wrapper").each(function (index) {
		if($(this).parents(".menucontent").length) return ;
		var ethis = this;
		var e = $(this);
		var index = index;
		var $isbox = '';
		e.data("index", index);
		e.find(".d-placeholder").remove();
		e.append('<div class="d-placeholder"><div><span>Click to add section</span></div></div>');


		if (!ethis["Builder"]) {
			ethis["Builder"] = {
				"settings": {},
			}
		}
		if (e.data("previewid")) {
			preview = e;
			e.data("change", true)
		}

		e.find('div[dragwithouthandle=""]').each(function () {

			if (!$(this).siblings().length && $(this).html() == "") {
				$(this).after('<div class="is-builder ui-sortable"></div>');
				$(this).remove();
			}
		})

		e.before(e.find(".section-svg"));


		if (ethis["Builder"]["VendorUrl"]) {
			for (j in ethis["Builder"]["VendorUrl"]) {
				currentVendorUrl[j] = ethis["Builder"]["VendorUrl"][j]
			}
		}

		//odd
		if (JSON.stringify(contentFont) != "{}") {
			if (!ethis["Builder"]["contentFont"]) {
				ethis["Builder"]["contentFont"] = {};
			}
			for (j in contentFont) {
				if (e.find("." + j).length) {
					ethis["Builder"]["contentFont"][j] = contentFont[j];
				}
			}
		}
		//new
		if (ethis["Builder"]["contentFont"]) {
			for (j in ethis["Builder"]["contentFont"]) {
				contentFont[j] = ethis["Builder"]["contentFont"][j];
			}
		}

		//odd
		if (googleFont) {
			ethis["Builder"]["googleFont"] = googleFont.join("|").split("|");
		}


		if (ethis["Builder"]["CodeCSS"]) {
			for (j in ethis["Builder"]["CodeCSS"]) {
				if (j && j != "content-builder") {
					$('head').append(`<style class="build-css" data-class="${j}">${ethis["Builder"]["CodeCSS"][j]}</style>`)
				}
			}
			$("#ContentBuilder" + e.data("mid") + "-CodeCSS").remove();
		}


		e.find(".custom-module").each(function () {
			$(this).attr('data-noedit', "true");
			$(this).attr("contenteditable", "false");
			!$(this).attr('data-module-desc') ? $(this).attr('data-module-desc', $(this).data("effect")) : false;
			$(this).attr('data-module', "shortcode");
			if (ethis["Builder"]["settings"]) {
				$(this).attr("data-settings", ethis["Builder"]["settings"][$(this).attr("data-moduleid")])
			}
			$(this).data('hasevent', true);
			if($(this).attr("data-cb-module")){		
				var modejs = '<script class="edit-mode-js" id="js-' + $(this).attr("data-moduleid") + '">moduleEditModeJs("' + $(this).attr("data-template") + '","' + $(this).attr("data-moduleid") + '","' + $(this).attr("data-template") + '",true);<\/script>';
				ModuleStorageHTML[$(this).attr("data-moduleid")] = decodeURIComponent($(this).attr("data-html"))+modejs;
			}
		})


		if (ethis["CodeCSS"]) {
			var CodeCSS = ethis["CodeCSS"];
			for (j in CodeCSS) {
				if(j){
					$('head').append(`<style class="build-css" data-class="${j}">${CodeCSS[j]}</style>`);
				}
			}
		}

		e.find(".edit-box").attr("contenteditable", "true");
		e.find(".img-Lazy,.iframe-Lazy").each(function () {
			if ($(this).attr("data-src")) {
				$(this).attr("src", $(this).attr("data-src")).removeAttr("data-src").removeClass("Lazy-loading");
			}
		})
		e.find(".img-Lazy-warp").removeClass("img-Lazy-warp");
		e.find(".load-over").removeClass("load-over");

		e.find("video[autoplay]").removeAttr("autoplay").attr("autoplay2",true);

		e.find("video[autoplay2][muted]").eq(0).each(function(){
			this.play();
		})

		var historyDelay = '',initialHistory =true,HistoryscrollTop=0;

		if (!e.data('contentbox')) {

			e.contentbox({
				framework: 'bootstrap',
				//   disableStaticSection:true,
				modulePath: SkinPath + 'Resource/vendor/content-builder/assets/modules/',
				designPath: SkinPath + 'Resource/vendor/content-builder/assets/designs/',
				contentStylePath: SkinPath + 'Resource/vendor/content-builder/assets/styles/',
				iconselect: SkinPath + 'Resource/vendor/content-builder/assets/ionicons/icons.html',
				snippetData: SkinPath + 'Resource/vendor/content-builder/assets/minimalist-blocks/snippetlist.html',
				coverImageHandler: SaveImageServiceUrl + e.data("mid"),
				/* for uploading section background */
				largerImageHandler: SaveImageServiceUrlByLarger + e.data("mid"),
				/* for uploading larger image */
				moduleConfig: [{
					"moduleSaveImageHandler": SaveImageServiceUrlBySlider + e.data("mid"),
					/* for module purpose image saving (ex. slider) */
				}],
				htmlSyntaxHighlighting: true,
				animatedSorting: true,
				dragWithoutHandle: true,
				scrollableEditingToolbar: false,
				onRender: function () {
					var e = $(".is-wrapper");
					var has = false;
					e.find(".is-builder .is-builder").each(function () {
						if (!$(this).find(".row-add-initial").length) {
							if ($(this).find('.row > .col-md-12:not([class*="col-xl"]):not([class*="col-lg"]):not([class*="col-sm"]) > .row').length) {
								$(this).after($(this).children(".row").children(".col-md-12").children()).remove();
							} else {
								$(this).after($(this).children()).remove();
							}
						}
					})

					e.find('.row > .col-md-12:not([class*="col-xl"]):not([class*="col-lg"]):not([class*="col-sm"])').each(function () {
						if (($(this).children(".row").length && !$(this).children("p,h1,h2,h3,h4,h5,h6,a,span").length && !$(this).siblings('div[class*="col"]').length) || $(this).parent().parent().parent().hasClass("row")) {
							$(this).next(".is-row-tool").remove();
							$(this).unwrap();
							$(this).children().unwrap();
							$("#divCellTool").hide();
							has = true;
						}
					})
					if (has) {
						has = false;
						if (e.data("contentbox")) {
							e.data("contentbox").setup();
						}
					}
					e.find(".custom-module").each(function () {
						if ($(this).attr("data-moduleid").indexOf("{id") != -1 || $('.custom-module[id="' + $(this).attr("id") + '"]').length > 1) {
							var id = makeid();
							$(this).attr("id", "module-" + id);
							$(this).attr("data-moduleid", id);
						}
					})
					e.find('div[dragwithouthandle=""]').each(function () {
						if (!$(this).siblings().length && $(this).html() == "") {

							$(this).after('<div class="is-builder ui-sortable"></div>');

							$(this).remove();
						}
					})
					e.find(".tabs-initialize").each(function () {
						var ibox = $(this);
						var row = $(this);
						if (ibox.parent(".col-md-12").parent(".row").length) {
							row = ibox.parent(".col-md-12").parent(".row");
						}
						ibox.children("li").each(function () {
							row.after('<div class="row tabs-content" data-content="' + ibox.attr("id") + '"><div class="col-md-12"><p>The placeholder text</p></div></div>');
						})
						ibox.removeClass("tabs-initialize");
						//	if(e.data("contentbox")){
						//		e.data("contentbox").setup();
						//	}
					})
					if(typeof AOS !="undefined"){
						AOS.init({
							duration: 1200
						});
					}

				},

				onChange: function () {
					var timeoutId;
					var e = $(".is-wrapper");
					var id = e.data("mid");

					
					clearTimeout(timeoutId);
					timeoutId = setTimeout(function () {
						saveImages(id);
					}, 1000);

					e.find("video[autoplay]").removeAttr("autoplay").attr("autoplay2",true);
					e.find("video[autoplay2]").each(function(){
						this.play();
					})

					onChangeEvent();

					var hasplaceholder = false;
					e.find(".builder-placeholder").each(function () {
						if (!$(this).siblings().length) {
							$(this).removeClass("builder-placeholder");
							hasplaceholder = true;
						} else {
							$(this).remove();
						}
					})
					if (hasplaceholder) {
						hasplaceholder = false;
						e.data("contentbox").setup();

					}
					setTimeout(function () {
						e.find(".is-section-tool ~ .is-section-tool").remove();
					}, 200);


					contentBoxHistory();
					e.data("change", true);
				},

				onHistory:function () {
					var e = $(".is-wrapper");
					contentBoxHistory();
				},
				useSidebar: true,
				enableContentStyle: true
			})
			if (index != 0) {
				$("#divCb > svg ~ svg").remove();
				$(".is-sidebar").prevAll(".is-sidebar").remove();
				$(".is-modal.delsectionconfirm ~ .is-modal.delsectionconfirm").remove();
				$(".is-modal.editsection ~ .is-modal.editsection").remove();
				$(".is-modal.editmodule ~ .is-modal.editmodule").remove();
				$(".is-modal.editcustomcode ~ .is-modal.editcustomcode").remove();
				$(".is-modal.editbox ~ .is-modal.editbox").remove();
				$(".is-modal.gradientcolor ~ .is-modal.gradientcolor").remove();
				$(".is-modal.customcolor ~ .is-modal.customcolor").remove();
				$(".is-modal.viewfullhtml ~ .is-modal.viewfullhtml").remove();
				$(".is-modal.pickphoto ~ .is-modal.pickphoto").remove();
				$(".is-modal.applytypography ~ .is-modal.applytypography").remove();
				$(".is-modal.addsection ~ .is-modal.addsection").remove();
				$("#divSidebarSections ~ #divSidebarSections").remove();
				$("#divSidebarSnippets ~ #divSidebarSnippets").remove();
				$("#divSidebarSource ~ #divSidebarSource").remove();
				$("#divSidebarTypography ~ #divSidebarTypography").remove();
				$("#divCustomSidebarArea1 ~ #divCustomSidebarArea1").remove();
				$("#divCustomSidebarArea2 ~ #divCustomSidebarArea2").remove();

			} else {
				e.click();
			}
		function contentBoxHistory() {
			var e = $(".is-wrapper");
			if(addHistory){
				clearInterval(historyDelay);
				HistoryscrollTop = $(window).scrollTop();
				historyDelay =setTimeout(function(){
					if(SelectHistory && sessionStorage.getItem('cb-history-'+SelectHistory)){
						History_cb ++;
						sessionStorage.setItem('cb-history-'+History_cb, sessionStorage.getItem('cb-history-'+SelectHistory));
						if(History_cb - maxHistory > 0){
							sessionStorage.removeItem('cb-history-'+ (History_cb - maxHistory));
						}
						var mid = midHistoryIndexed[SelectHistory-1];
							midHistoryIndexed.push({"mid":mid["mid"],"position":mid["position"],"initial":false}) ;
						SelectHistory = false;
					}
					if(initialHistory && sessionStorage.getItem('cb-history-'+e.data("mid")+"-initial")){
						History_cb ++;
						sessionStorage.setItem('cb-history-'+History_cb, sessionStorage.getItem('cb-history-'+e.data("mid")+"-initial"));
						sessionStorage.removeItem('cb-history-'+e.data("mid")+"-initial");
						if(History_cb - maxHistory > 0){
							sessionStorage.removeItem('cb-history-'+ (History_cb - maxHistory));
						}
						midHistoryIndexed.push({"mid":e.data("mid"),"position":HistoryscrollTop,"initial":true}) ;
						initialHistory =false;
					}
					
					if(e.data("contentbox").html() && sessionStorage.getItem('cb-history-'+History_cb) != e.data("contentbox").html()){
						History_cb ++;
						sessionStorage.setItem('cb-history-'+History_cb,e.data("contentbox").html());
						if(History_cb - maxHistory > 0){
							sessionStorage.removeItem('cb-history-'+ (History_cb - maxHistory));
						}
						cuurHistory = History_cb;
						midHistoryIndexed.push({"mid":e.data("mid"),"position":HistoryscrollTop,"initial":false}) ;
						$("#historyPrevButton").removeClass("disabled");
						$("#historyNextButton").addClass("disabled");
					}
				},HistoryTime)
			};
		}
			if(addHistory){
				sessionStorage.setItem('cb-history-'+e.data("mid")+"-initial",e.data("contentbox").html());
			}

		}

		e.on("click focus", function () {
			$(".d-wrapper").removeClass("is-wrapper");
			e.addClass("is-wrapper").siblings().removeClass("is-wrapper").blur();

		}).on("blur blurin", function () {
			//  saveHTML(e);
		})


	

		e.on("mouseup mouseenter", ".custom-module", function () {
			var e = $(this);
			var top = e.offset().top;
			var left = e.offset().left + e.width() - 80;
			left = Math.min(left, $(window).width() - 130)
			$(".d-custom-active").removeClass("d-custom-active");
			e.addClass("d-custom-active");
			e.attr("contenteditable", "false");
			e.attr('data-noedit', "true");
			setTimeout(function () {
				jQuery("#divCustomModuleTool").data('active', e);

				if(e.data("modulename") == "DNNGo.AddModule"){
					$("#divCustomModuleTool .module-settings").hide();
					$("#divCustomModuleTool .add-module-console").show();
					if(e.attr("data-mid")){
						$('#divCustomModuleTool .add-module-button[data-add="new"]').hide();
					}else{
						$('#divCustomModuleTool .add-module-button[data-add="new"]').show();
					}
				}else{
					$("#divCustomModuleTool .module-settings").show();
					$("#divCustomModuleTool .add-module-console").hide();
				}
				$("#divCustomModuleTool").show().css({
					"top": top,
					"left": left,
				})
				
			}, 100)
		});
		e.find('.custom-module[data-modulename="DNNGo.AddModule"]').each(function(){
			if(!$(this).html()){	
				$(this).append("Please click the setting button to choose the source of the module.");
				$(this).removeAttr("data-mid").removeAttr("data-tid")
			} 
		});
		e.on("mouseup", "i,a", function () {
			if ($(this).children("svg").length || ($(this).children("i").children("svg").length && $(this).children().length == 1)) {
				if ($(this).children("svg").length) {
					var $icon = $(this);
				} else {
					var $icon = $(this).children("i");
				}
				setTimeout(function () {
					jQuery("#divIconTool").data('active', $icon);
					if ($icon.parent().prop("tagName").toLowerCase() == 'a' && $icon.parent().children().length == 1) {
						jQuery('#divIconTool').find('.icon-link').css('display', 'block');
						jQuery('#divIconTool').find('.icon-add').css('display', 'block');
						jQuery('#divIconTool').find('.icon-remove').css('display', 'block')
					} else {
						jQuery('#divIconTool').find('.icon-link').css('display', 'none');
						jQuery('#divIconTool').find('.icon-add').css('display', 'none');
						jQuery('#divIconTool').find('.icon-remove').css('display', 'block')
					}
					var _toolheight = jQuery("#divIconTool").height();
					var _height = $icon.outerHeight();
					var _top = $icon.offset().top;
					if (_height > 80) {
						_top = _top + _height - 80
					}
					var _left = $icon.offset().left - 40;
					_top = _top - _toolheight + 1;
					jQuery("#divIconTool").css("top", _top + "px");
					jQuery("#divIconTool").css("left", _left + "px");
					jQuery("#divIconTool").css("display", "block");
					jQuery("#divLinkTool").css("display", "none");
				}, 32)
			}
		})
	})


	changeContentBuilderHTML();
	DnnVersions();

	function onChangeEvent() {
		var e = $(".is-wrapper");
		var id = e.data("mid");
		var ethis = e[0];

		e.find(".custom-module").each(function () {
			$(this).attr("contenteditable", "false");
			$(this).attr('data-noedit', "true");
			!$(this).attr('data-module-desc') ? $(this).attr('data-module-desc', $(this).data("effect")) : false;
			$(this).attr('data-module', "shortcode");
			if ($(this).text() == "") {
				$(this).html(decodeURIComponent($(this).data("html")));
			}
			if (!$(this).data("hasevent")) {
				$(this).addClass("loading")
			}
		})
		e.find(".custom-module.loading").each(function () {
			var m = $(this);
			var id = m.attr("id");
			
			if(m.attr("data-cb-module")){ 
				m.html(ModuleStorageHTML[m.attr("data-moduleid")]).removeClass("loading");
			}else{
				if(ModuleStorageHTML[m.attr("data-moduleid")]){
					m.html(ModuleStorageHTML[m.attr("data-moduleid")]).removeClass("loading");
				}else{
					LoaderCompleteHTML++;
					$.ajax({
					url: SkinPath + "Resource/vendor/content-builder/code-template/" + m.data('effect') + ".html",
					async: false,
					success: function (data) {
							var htmlversions = randomRangeId(6);
							var settings = decodeURIComponent(m.attr('data-settings'));

							if (settings == "undefined" || settings == undefined || !settings || settings.length < 2 || settings.indexOf("{") == -1) {
								settings = {};
							} else {
								settings = JSON.parse(settings);
							}

							var HTMLsettings = encodeURIComponent(JSON.stringify(settings));

							settings["style"] = m.attr('data-style');
							settings["moduleid"] = m.attr('data-moduleid');

							var tmplHTML = $('<script type="text/x-jquery-tmpl">');
							data = data.split('<div class="buildHTML">');

							//tmplHTML.html(data[1].replace(/\{id\}/g,htmlversions));
							tmplHTML[0].innerHTML = '<div class="buildHTML">'+data[1].replace(/\{id\}/g, htmlversions)
							m.data("hasevent", true);
							var html = (tmplHTML.tmpl(settings))[0].innerHTML.replace(/\{LT\}/g, "<").replace(/\{GT\}/g, ">").replace(/\{SkinPath\}/g, SkinPath);
							m.attr("data-html", encodeURIComponent(html)).attr("data-settings", HTMLsettings).html(html).removeClass("loading");
							LoaderCompleteHTML--;

						}
					})
				}

			}

		})

		setTimeout(function () {

			e.find("link").each(function () {

				if (this.href.indexOf("googleapis") != -1) {
					var f = this.href.split("family=")[1].split("&")[0];
					f = f.replace(/\s/g, "%20");
					if (f && googleFont.indexOf(f) == -1) {
						googleFont.push(f);
						googleFontLink(f);
					};

					if (ethis.Builder["googleFont"]) {
						if (ethis.Builder["googleFont"].indexOf(f) == -1) {
							ethis.Builder["googleFont"].push(f);
						}
					} else {
						ethis.Builder["googleFont"] = [];
						ethis.Builder["googleFont"].push(f);
					}

				} else if ($(this).attr("data-name") == "contentstyle") {

					var name = $(this).attr("data-class");
					if (name) {
						if (!contentFont[name]) {
							contentFont[name] = $(this).attr("href").replace(SkinPath,"[SkinPath]");
							contentFontLink($(this).attr("href"));
						};

						ethis.Builder["contentFont"] ? (!ethis.Builder["contentFont"][name] ? ethis.Builder["contentFont"][name] = $(this).attr("href").replace(SkinPath,"[SkinPath]") : false) : ethis.Builder["contentFont"] = {}, ethis.Builder["contentFont"][name] = $(this).attr("href").replace(SkinPath,"[SkinPath]");
					}
				}
			})
			$('head link[data-name="contentstyle"]').each(function () {
				var name = $(this).attr("data-class");
				if (name) {
					if (!contentFont[name]) {
						contentFont[name] = $(this).attr("href").replace(SkinPath,"[SkinPath]");
						contentFontLink($(this).attr("href"));
					};
					ethis.Builder["contentFont"] ? (!ethis.Builder["contentFont"][name] ? ethis.Builder["contentFont"][name] = $(this).attr("href").replace(SkinPath,"[SkinPath]") : false) : ethis.Builder["contentFont"] = {}, ethis.Builder["contentFont"][name] = $(this).attr("href").replace(SkinPath,"[SkinPath]");
				}
			})
			ButtonMultiple();
		}, 100)

		e.find(".build-css").each(function () {
			var box = $(this);
			var name = box.data("class");
			var css = this.innerHTML;
			if (css) {
				css = $('<textarea></textarea>').val(css).format({
					method: 'cssmin'
				}).val();
			}
			if (!ethis.Builder["CodeCSS"]) ethis.Builder["CodeCSS"] = {};
			if (box.data("editor") || AddReplace) {
				ethis.Builder["CodeCSS"][name] = css;
				if ($('head .build-css[data-class="' + name + '"]').length) {
					$('head .build-css[data-class="' + name + '"]').html(css);
					box.remove();
				} else {
					$("head").append(box);
				}

			} else {
				if (!ethis.Builder["CodeCSS"][name]) {
					ethis.Builder["CodeCSS"][name] = css;
					if ($('head .build-css[data-class="' + name + '"]').length) {
						box.remove();
					} else {
						$("head").append(box);
					}


				} else {
					box.remove();
				};

			}

		})


		e.find(".edit-box").attr("contenteditable", "true");
		pagemodification = true;
		if (pagemodification) {
			$("#ContentBuilderSaveHTML").removeAttr("disabled");
		}
		//	$(".hasBuilder").removeClass("hasBuilder");
		//	$(".layout-container .is-builder").parent().addClass("hasBuilder");

		if (e.find(".is-lightbox").length) {
			moduleEditModeJs("minilightbox", e.find(".custom-module"));
			moduleEditModeJs("minilightbox", e);
		}
		if (e.find(".img-Lazy,.iframe-Lazy,.bg-Lazy,.video-Lazy").length) {
			moduleEditModeJs("lazyloading", e);
		}

		if (e.find(".icon-svg:not(.animated)").length) {
			moduleEditModeJs("vivus", e.find(".icon-svg:not(.animated)"), "svgicon");
			moduleEditModeJs("visible", e, "none");
		}
		if (e.find(".is-section.section-slider:not(.swiper-container-slide):not(.swiper-container-fade)").length) {
			moduleEditModeJs("swiper", e.find(".is-section.section-slider:not(.swiper-container-slide):not(.swiper-container-fade)"), "sectionSlider");
		}
		if (e.find(".bg-attachment-js .is-overlay-bg:not(.active)").length) {
			moduleEditModeJs("paroller", e.find(".bg-attachment-js .is-overlay-bg:not(.active)"), "paroller");
		}

		if (!e.find(".d-placeholder").length && EnableHBControls.indexOf("Section") != -1) {

			e.append('<div class="d-placeholder"><div><span>Click to add content</span></div></div>');
			e.find(".d-placeholder").addClass("row-add-initial").on("click", function () {
				$(this).parent().focus();
				$isSection = false;
				$('.is-sidebar-button[data-content="divSidebarSections"]').click();
			})
		}

		e.find(".img-Lazy,.iframe-Lazy").each(function () {
			$(this).attr("src", $(this).attr("data-src")).removeAttr("data-src").removeClass("Lazy-loading");
		})
		e.find(".img-Lazy-warp").removeClass("img-Lazy-warp");
		e.find(".load-over").removeClass("load-over");
		

		e.find(".is-section").each(function () {
			if ($(this).hasClass("section-slider") && !$(this).find(".is-section-slider-options").length) {
				$(this).find(".is-section-tool").append(`<div class="is-section-slider-options" title="Slider Options"></div>`)
			}
			if (!$(this).find(".is-section-code").length) {
				$(this).find(".is-section-tool").prepend(`<div class="is-section-code" title="Section Code"><svg class="is-icon-flex" style="margin-right:-3px;width:14px;height:14px;"><use xlink:href="#ion-ios-arrow-left"></use></svg><svg class="is-icon-flex" style="margin-left:-2px;width:14px;height:14px;"><use xlink:href="#ion-ios-arrow-right"></use></svg></div>`)
			}
			if (!$(this).find(".is-section-save").length) {
				$(this).find(".is-section-tool").prepend(`<div class="is-section-save" title="Save Section"><i class="fa fa-save"></i></div>`)
			}
		})

		e.find(".is-overlay-bg").each(function () {
			if ($(this).data("bottom-top")) {
				$(this).after('<div class="is-overlay-bg" style=\'background-image:' + this.style.backgroundImage + '\'></div>');
				$(this).remove();
			}

		})
		e.find("i.sico").each(function () {
			if (!$(this).find("svg").length || $(this).hasClass("mod-icon") || !$(".section-svg-" + e.data("mid")).find($(this).find("svg use").attr("xlink:href")).length) {
				var svghtml = false;
				var name = $(this).attr("class").split("sico ")[1].split(" ")[0];
				if (!$(".section-svg-" + e.data("mid")).length) {
					var svg = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
					svg.display = "none";
					svg.setAttribute("class", "section-svg section-svg-" + e.data("mid"))
					svg.setAttribute("display", "none")
					e.before(svg);
				}
				if (!$(".section-svg-" + e.data("mid")).find("#" + name).length) {
					if (name.indexOf("lnr-") != -1) {
						if (svgLinearicons && svgLinearicons.find("#" + name).length) {
							svghtml = svgLinearicons.find("#" + name)[0].outerHTML;
						}
					} else if (name.indexOf("fab-") != -1 || name.indexOf("fad-") != -1 || name.indexOf("fal-") != -1 || name.indexOf("far-") != -1 || name.indexOf("fas-") != -1) {
						if (svgFontawesome && svgFontawesome.find("#" + name).length) {
							svghtml = svgFontawesome.find("#" + name)[0].outerHTML;
						}
					}
					if (svghtml) {
						var node = $.parseXML(svghtml);
						$(".section-svg-" + e.data("mid"))[0].appendChild(node.documentElement);
					}
				}

				$(this).html('<svg><use xlink:href="#' + name + '"></use></svg>').removeClass("mod-icon")

			}
		})


		if(e.find(".swiper-container.section-carousel-bg:not(.swiper-container-slide):not(.swiper-container-fade)").length){
			e.find(".swiper-container.section-carousel-bg:not(.swiper-container-slide):not(.swiper-container-fade)").each(function(){
				moduleEditModeJs("swiper", e.find(".swiper-container.section-carousel-bg:not(.swiper-container-slide):not(.swiper-container-fade)"), "sectionSlider");
			})
		}
		
		
		

		/* if(e.contentbox().html().indexOf("{id2}") !=-1){
			e.contentbox().html()
		}
 */

	}

	function ButtonMultiple(){
		if(jQuery('.cell-active').children('span[contenteditable="false"] + span[contenteditable="false"]').length){
			var RemoveSpan = jQuery('.cell-active').children('span[contenteditable="false"]').children("a");
			RemoveSpan.each(function(){
				if(!$(this).siblings(':not("a")').length && $(this).parent("span").length  && !$(this).parent("span").attr("class") && !$(this).parent("span").attr("style")){
					$(this).unwrap('span[contenteditable="false"]');
				}
			})
		}
		if(jQuery('.cell-active').children("a + a").length){
			var box= $("<span>");
			var first = jQuery('.cell-active').children("a + a").eq(0).prev("a");
 				first.before(box);
				var next = first.nextAll();
				box.append(first);
				next.each(function(){if(this.tagName =="A"){box.append($(this));}else{return false;}})
				ButtonMultiple();
		}

	}

	function saveHTML(e, section) {
		ClearSaveJS = true;
		if ((e.data('contentbox') && e.data("change")) || section) {
			var eThis = e[0];
			var VendorUrl = eThis["Builder"]["VendorUrl"];
			var CodeCSS = eThis["Builder"]["CodeCSS"];
			var contentFontCSS = eThis["Builder"]["contentFont"];
			var GoogleFontCSS = eThis["Builder"]["googleFont"];

		//	e.find(".img-Lazy").each(function(){
		//		$(this).attr("iw",this.width)
		//		$(this).attr("ih",this.height)
		//	})
		
			if (section) {

				var sHTML = $(e.data('contentbox').html()).filter(".d-save-section").removeClass("d-save-section")[0].outerHTML;

				$(".d-save-section").removeClass("d-save-section");
			} else {
				e.data("change", false);
				e.find("link").each(function () {
					if (this.href.indexOf("googleapis") != -1 || $(this).data("name") == "contentstyle") {
						$(this).remove();
					}
				});
				eThis["Builder"]["settings"] = {};
				e.find(".custom-module").each(function () {
					if ($(this).data("module") == "shortcode") {
						eThis["Builder"]["settings"][$(this).attr("data-moduleid")] = $(this).attr("data-settings");
					}
				})

				if (VendorUrl) {
					for (j in VendorUrl) {

						if (VendorUrlAlias[j]) {
							var has = false;
							VendorUrlAlias[j].forEach(function (k) {
								if (e.find(`${k}`).length) {
									has = true;
									return;
								}
							})
							if (!has) {
								delete eThis["Builder"]["VendorUrl"][j]
							} else {
								eThis["Builder"]["VendorUrl"][j] = skinVendorUrl[j];
							};
						} else {
							if (e.find(`.custom-module[data-effect="${j}"]`).length == 0) {
								delete eThis["Builder"]["VendorUrl"][j];
							} else {
								eThis["Builder"]["VendorUrl"][j] = skinVendorUrl[j];
							}
						}


					}
				}


				if (CodeCSS) {
					for (j in CodeCSS) {
						if (j && e.find("." + j).length == 0) {
							delete eThis["Builder"]["CodeCSS"][j];
						}
					}
				}


				if (contentFontCSS) {
					for (j in contentFontCSS) {
						if (e.find("." + j).length == 0 && j != "sMainCss") {
							delete eThis["Builder"]["contentFont"][j];
						}
					}
				}


				//var sSectionCss = '';
				//googleFont.filter(d => d);


				if (GoogleFontCSS) {
					//	$.unique(GoogleFontCSS);
					var HTML = e.data('contentbox').html();
					GoogleFontCSS.forEach(function (v, i) {
						if (v) {

							if (HTML.indexOf(v.split(":")[0].replace(/\%20/g, " ")) == -1) {
								if (GoogleFontCSS.length <= 1) {
									GoogleFontCSS = [];
								} else {
									GoogleFontCSS.splice(i, 1);
								}
							}
						} else {
							GoogleFontCSS.splice(i, 1);
						}
					})


					if (GoogleFontCSS.join("|")) {
						GoogleFontCSS = '<link href="https://fonts.googleapis.com/css?family=' + GoogleFontCSS.join("|") + '&display=swap" type="text/css" rel="stylesheet" class="contentbox-google" />';
					} else {
						delete eThis["Builder"]["googleFont"];
					}
				} else {
					GoogleFontCSS = "";
				}


				var sMainCss = '';

				$('head link').each(function () {
					var src = $(this).attr("href").toLowerCase();
					if (src.indexOf('basetype-') != -1) {
						sMainCss = $(this).attr("href").split("?")[0];
					}

				})

				if (sMainCss) {
					if (!eThis["Builder"]["contentFont"]) {
						eThis["Builder"]["contentFont"] = {};
					}
					eThis["Builder"]["contentFont"]["sMainCss"] = sMainCss.split("?")[0].replace(SkinPath,"[SkinPath]");

				} else {
					if (eThis["Builder"]["contentFont"] && eThis["Builder"]["contentFont"]["sMainCss"]) {
						delete eThis["Builder"]["contentFont"]["sMainCss"];
					}
				}

				if (eThis["Builder"]["contentFont"]) {
					var ThisContentFont = eThis["Builder"]["contentFont"];
					for (j in ThisContentFont) {
						ThisContentFont[j] = ThisContentFont[j].split("?")[0].replace(SkinPath,"[SkinPath]");
					}
				}

				var sHTML = e.data('contentbox').html();
			}
		
			var filter = $("<div>");
			filter.append(sHTML);
			
			filter.find("button.row-add,div.row-handle,button.row-up,button.row-down,button.row-duplicate,button.row-remove,.d-placeholder,.edit-mode-j,.builder-placeholder").remove();
			filter.find("style.build-css").remove();
			filter.find('.custom-module').each(function () {
				if ($(this).data("module") == "shortcode") {
					if (!$(this).attr('data-html')) {
					} else {
						$(this).removeAttr('data-html');
						if(!section){
							$(this).removeAttr('data-settings');
						}
						$(this).removeAttr('data-noedit');
						$(this).data('effect') == $(this).data('module-desc') ? $(this).removeAttr('data-module-desc') : false;
						$(this).removeAttr('data-module');
					}
					if ($(this).attr('data-cb-module')) {
						$(this).empty();
					}
				}
			})

			filter.find('.load-over').removeClass("load-over");
			filter.find('.icon-svg').find("i").remove();
			filter.find('.icon-svg').removeClass("animated").find("svg *").removeAttr("style");
			filter.find('i.sico').find("i").remove();
			filter.find('.hasBuilder').removeClass("hasBuilder");
			filter.find('.is-box.current-cover-bg').removeClass("current-cover-bg");
			filter.find('.img-Lazy-warp >.Lazy-loading,.img-Lazy-warp > .Lazy-loading-transparent').remove();
			filter.find('.edit-mode-js').remove();

			filter.find('.is-container').removeAttr("dragwithouthandle");
			filter.find('.is-section.section-slider').each(function () {
				EmptySectionSlider($(this));
			});

			filter.find("video[autoplay2]").removeAttr("autoplay2").attr("autoplay","autoplay");

			if(!WebpSupport){
				if (typeof GetWebpConvertServiceUrl != "undefined" && $(".d-wrapper").eq(0).data("mid")) {
				 
					filter.find('img[src*="WebP="],img[data-src*="WebP="],[style*="WebP="],a[href*=".webp"]').each(function () {
						let isImg = this.localName.toUpperCase() == "IMG";
						let url = false;
							if(isImg == "IMG"){
								url = $(this).attr("data-src") || $(this).attr("src");
							}if (isImg == "A") {
								url = $(this).attr("href");
							}else{
								url = this.style.backgroundImage.split('"')[1]
							}
						
							url = url.split("WebP=")[1];

						if(url){
							url = decodeURIComponent(url);
							if (isImg) {
								$(this).attr("src").indexOf(".webp") != -1 ? $(this).attr("src", url) : $(this).attr("data-src", url);
							}if (isImg == "A") {
								$(this).attr("href",url);
							} else {
								this.style.backgroundImage = 'url(' + url + ')';
							}
						}
						 
					})
				}
			}

			if (section) {
				//	filter.
				if (CodeCSS) {
					for (j in CodeCSS) {
						if (j && filter.find("." + j).length) {
							filter.find(".is-section").append(`<style class="build-css" data-class="${j}">${CodeCSS[j]}</style>`)
						}
					}
				}
				if (contentFontCSS) {
					for (j in contentFontCSS) {
						if (filter.find("." + j).length) {
							filter.find(".is-section").append(`<link data-name="contentstyle" data-class="${j}" href="${contentFontCSS[j]}" type="text/css"/>`)
						}
					}
				}
				if (GoogleFontCSS) {
					var sectionHTML = filter.html();
					GoogleFontCSS.forEach(function (v, i) {
						if (v && sectionHTML.indexOf(v.split(":")[0].replace(/\%20/g, " ")) != -1) {
							filter.find(".is-section").append(`<link href="https://fonts.googleapis.com/css?family=${v}" type="text/css"/>`);
						}
					})
				}

				filter.find(".custom-module").each(function (index) {
				//	var settings = e.find("#" + $(this).attr("id")).attr("data-settings");
				//	$(this).attr("data-settings", settings);
					$(this).html("");
					$(this).addClass("loading");

					if (index >= 1) {
						$(this).attr("id", "module-{id" + (index + 1) + "}");
						$(this).attr("data-moduleid", "{id" + (index + 1) + "}");
					} else {
						$(this).attr("id", "module-{id}");
						$(this).attr("data-moduleid", "{id}");
					}
				})
			}
			
			filter.find('.iframe-Lazy').each(function () {
				if(!$(this).attr('data-src')){
					$(this).attr('data-src', $(this).attr("src")).addClass("Lazy-loading");
					$(this).attr("src", "about:blank")
				}
			})
			filter.find('.img-Lazy').each(function(){ $(this).width(); });
			filter.find("img:not([alt])").attr("alt","");

			var contentbuilderCSS = CodeCSS ? CodeCSS["content-builder"] : false;
			if (contentbuilderCSS) {
				delete eThis["Builder"]["CodeCSS"]["content-builder"];
			}
			var PageCSS = PageGlobalCSS;
			
			if (PageCSS) {
				//eThis["Builder"]["CodeCSS"] = $.extend({}, {
				//	"content-builder": PageCSS
				//}, eThis["Builder"]["CodeCSS"]);

				eThis["Builder"]["PageGlobalCSS"] =PageCSS;
			}

			setTimeout(function(){

				filter.find('.img-Lazy').each(function () {
					if ($(this).attr("src").indexOf("data:image/svg") == -1) {
						if (this.width){// || $(this).attr("iw")) {	
							var w = this.width;// || $(this).attr("iw");
							var h = this.height;// || $(this).attr("ih");
								$(this).attr('data-src', $(this).attr("src")).attr("src", `data:image/svg+xml,%3Csvg viewBox='0 0 ${w} ${h}' width='${w}' height='${h}' xmlns='http://www.w3.org/2000/svg'/%3E`).removeClass("load-over").parent().addClass("img-Lazy-warp");
						}
					}
				//	$(this).removeAttr("iw");
				//	$(this).removeAttr("ih");
				})

				filter.find('.bg-Lazy').each(function () {
					
					var bg = this.style.backgroundImage;
						bg = bg.substring(5, bg.length - 2);
					
					if(bg){
						$(this).attr('data-src',bg);
						this.style.backgroundImage = '';
					}
				
				});

				filter.find('.video-Lazy').each(function () {
					$(this).find("video source").each(function(){
						$(this).attr("data-src",$(this).attr("src"));
						$(this).attr("src",'');

					})
				
				})





				sHTML = filter.html();

			//	e.find(".img-Lazy").each(function(){
			//		$(this).removeAttr("iw");
			//		$(this).removeAttr("ih");
			//	})
	
				if (section) {
					$("#add-section-name-text").val(sHTML);
					ClearSaveJS = false;
				} else {
					if ($(".section-svg-" + e.data("mid")).length) {
						var newssvg = "";
						var svgID =[];
						$(".section-svg-" + e.data("mid") + " symbol").each(function () {
							if (e.find("." + $(this).attr("id")).length && svgID.indexOf($(this).attr("id"))==-1) {
								svgID.push($(this).attr("id"));
								newssvg += this.outerHTML;
							}
						})
						if (newssvg) {
							sHTML = '<svg xmlns="http://www.w3.org/2000/svg" display="none" class="section-svg section-svg-' + e.data("mid") + '">' + newssvg + '</svg>' + sHTML
						}
					}
					$.ajax({
						type: "POST",
						url: SaveContentServiceUrl + e.data("mid"),
						data: {
							Content: sHTML,
							MainCss: GoogleFontCSS,
							SectionCss: "",
							ContentJSON: eThis["Builder"] ? JSON.stringify(eThis["Builder"]) : '{}'
						},    
						timeout: 30000,
						success:function (data) {
							lastIndex++;
							if (lastIndex == lastlength) {
								setTimeout(function () {
									$('#ContentBuilderSaveHTML').removeClass('loading').addClass('success').delay(1000).queue(function () {
										$(this).removeClass('success').dequeue();
										ClearSaveJS = false;
										pagemodification = false;
									});
								}, 1000)
								if (preview) {
									window.location.href = preview.data("original");
								}

							}
						},
						error: function(jqXHR, textStatus, errorThrown) {
							$("#ContentBuilderSaveHTML").removeClass("loading").removeAttr("disabled");
							e.data("change", true);
						}
					});

				}

			},500)

		}

	}


	if (preview) {
		$("#ContentBuilderSaveHTML").removeAttr("disabled");
	}


	$("#ContentBuilderSaveHTML").removeClass("hide").on("click", function () {
		$(this).addClass("loading").attr("disabled", "disabled");
		if (pagemodification) {

			//	googleFont = HasGoogleFont(googleFont);
			currentVendorUrl = HasVendorUrl(currentVendorUrl);


			lastIndex = lastlength = 0;
			$(".d-wrapper").each(function () {
				if ($(this).data('contentbox') && $(this).data("change")) {
					lastlength++;
				}
			});

			PageGlobalCSS = getPageCSS();



			$(".d-wrapper").each(function (index) {
				var wrapper = $(this);
				if (!LoaderCompleteHTML) {
					saveHTML(wrapper);
				} else {
					var timeout = 0;
					var loadHTML = setInterval(function () {
						timeout++;
						if (!LoaderCompleteHTML || timeout == 100) {
							saveHTML(wrapper);
							clearInterval(loadHTML);
						}
					}, 100)
				}
			});
		}


		if ($("#EditThemePluginOptionsTextarea").val() || $("#EditThemePluginFamilyOptionsTextarea").val()) {
			let data = {};
			let isOne = !pagemodification;


			if($("#EditThemePluginOptionsTextarea").val()){
				data = JSON.parse($("#EditThemePluginOptionsTextarea").val());
			}
			if($("#EditThemePluginFamilyOptionsTextarea").val()){
				let ThemeGoogleFont = $("#EditThemePluginFamilyOptionsTextarea").val();
				data["ThemeQuickGoogleFont"] = ThemeGoogleFont;

				ThemeGoogleFont = JSON.parse(ThemeGoogleFont);

				if(ThemeGoogleFont.length == 1){
					data["contentfontfamily"] = ThemeGoogleFont[0]["family"];
					data["fontfamily2"] = ThemeGoogleFont[0]["family"];
					data["h1fontfamily"] = ThemeGoogleFont[0]["family"];
					data["h2fontfamily"] = ThemeGoogleFont[0]["family"];
					data["h3fontfamily"] = ThemeGoogleFont[0]["family"];
					data["h4fontfamily"] = ThemeGoogleFont[0]["family"];
					data["h5fontfamily"] = ThemeGoogleFont[0]["family"];
					data["h6fontfamily"] = ThemeGoogleFont[0]["family"];					
				}else{
					data["contentfontfamily"] = ThemeGoogleFont[1]["family"];
					data["fontfamily2"] = ThemeGoogleFont[0]["family"];
					data["h1fontfamily"] = ThemeGoogleFont[0]["family"];
					data["h2fontfamily"] = ThemeGoogleFont[0]["family"];
					data["h3fontfamily"] = ThemeGoogleFont[0]["family"];
					data["h4fontfamily"] = ThemeGoogleFont[0]["family"];
					data["h5fontfamily"] = ThemeGoogleFont[0]["family"];
					data["h6fontfamily"] = ThemeGoogleFont[0]["family"];
				}

			}
 
  



			 $.ajax({
				type: "POST",
				url: ServiceSaveThemeSettingsUrl + $(".is-wrapper").data("mid"),
				data: {
					ThemeSettings: JSON.stringify(data)
				},
				timeout: 30000,
				success: function (data) {
					$("#EditThemePluginOptionsTextarea").val("");
					if (isOne) {
						$("#ContentBuilderSaveHTML").removeClass("loading");
					}
					$(document.querySelector("#ifrThemePluginOptions").contentWindow.document).find(".OptionsFooter").hide();

				}

			}) 

		}

	});

	function saveImages(id) {

		$("#dng-wrapper").saveimages({
			handler: CatImageServiceUrl + id,
			onComplete: function () {

				$(".d-wrapper").each(function (index) {
					//   saveHTML($(this));
				});
			}
		});
		$("#dng-wrapper").data('saveimages').save();
	}
	if(jQuery(".is-wrapper").data("contentbox")){
		jQuery(".is-wrapper").data("contentbox").settings.onRender();
	//	jQuery(".is-wrapper").data("contentbox").settings.onChange();
	}


	var snippetlistsrc = setInterval(function () {
		if ($("#divFb .is-modal.snippets iframe").length) {
			$("#divFb .is-modal.snippets iframe").attr("src", SkinPath + "Resource/vendor/content-builder/assets/minimalist-blocks/snippetlist.html");
			clearTimeout(snippetlistsrc);
		}
	}, 500)


	function changeContentBuilderHTML() {
		$(".d-wrapper").removeClass("is-wrapper");
		$(".d-wrapper:not(.noedit)").eq(0).addClass("is-wrapper").click();


		$(".d-placeholder").addClass("row-add-initial").on("click", function () {
			$(this).parent().focus();
			$isSection = false;
			$('.is-sidebar-button[data-content="divSidebarSections"]').click();
		})

		$(".applytypography .input-ok.classic").removeClass("input-ok").addClass("dnn-input-ok");

		$(".is-section .is-section-tool").prepend(`<div class="is-section-code" title="Section Code"><svg class="is-icon-flex" style="margin-right:-3px;width:14px;height:14px;"><use xlink:href="#ion-ios-arrow-left"></use></svg><svg class="is-icon-flex" style="margin-left:-2px;width:14px;height:14px;"><use xlink:href="#ion-ios-arrow-right"></use></svg></div>`)

		$(".is-section .is-section-tool").prepend(`<div class="is-section-save" title="Save Section"><i class="fa fa-save"></i></div>`)

		$(".applytypography .dnn-input-ok").on("click", function () {
			var val = $('input[name=rdoApplyTypoStyle]:checked').val();
			var link = '';

			if (val == 1) {
				for (var key in contentFont) {
					if (jQuery(".d-wrapper").find('.' + key).length > 0) {
						jQuery(".d-wrapper").find('.' + key).removeClass(key);
					}
				}
				$('link[data-name = "contentstyle"]').remove();
				$(".contentfont-style").remove();
				contentFont = {};
			}
			var links = document.getElementsByTagName("link");
			for (var i = 0; i < links.length; i++) {
				var src = links[i].href.toLowerCase();
				if (src.indexOf('styles/basetype-') != -1) {
					jQuery(links[i]).attr('data-rel', '_del')
				}
			}
			jQuery('[data-rel="_del"]').remove();

			if (DNNapplyTypography.css != '') {
				link = '<link href="' + jQuery(".is-wrapper").data('contentbox').settings.contentStylePath + DNNapplyTypography.css + '" rel="stylesheet">';
				jQuery('head').append(link);
			}

			jQuery(".is-wrapper").data('contentbox').hideModal(jQuery('.is-modal.applytypography'));
			jQuery(".d-wrapper").each(function () {
				if ($(this).data('contentbox')) {
					$(this).data('contentbox').settings.onChange();
				}
			})
			$("head title").after($('link[href*="styles/basetype-"]'));
			return false;
		})

		$isbox = $(".is-box:not(.noedit)").eq(0);
		// $isSection = $(".is-section").eq(0);

		jQuery(".d-wrapper").on('mouseenter mouseleave', ".is-box", function (e) {
			$isbox = jQuery(this);

		});
		jQuery(".d-wrapper").on('mouseenter mouseleave', ".is-section", function (e) {
			$isSection = jQuery(this);
		});

		var fileEmbedImage = $('<button type="button" id="fileEmbedImageButton" style="position:absolute;top:0px;left:0;width:100%;height:50px;opacity: 0;cursor: pointer;"> </button>')
		$("#divImageTool #fileEmbedImage").hide().after(fileEmbedImage);
		fileEmbedImage.on("click", function () {
			$("#imgaesTEXTURL").val($(".elm-active").attr("src")).siblings(".img").css("background-image", "url('" + $(".elm-active").attr("src") + "')");
			$(".imgaes-setting-option .loadimg").show();
			if ($(".elm-active").hasClass("img-Lazy")) {
				$("#imgaesLoad").prop("checked", true);
			} else {
				$("#imgaesLoad").prop("checked", false);
			}

			DisplayMediaIFrame(getMediaUrl({
				mimid: $(".d-wrapper").eq(0).data("mid"),
				FileType:"image"
			}),"image");		

		})

		
		var fileCover = $('<button type="button" id="fileCoverButton" title="Background Image"><svg class="svg-icon"><use xlink:href="#ion-image"></use></svg></button><button type="button" id="fileCoverButtonMobile" title="Mobile Background"></button>');

		$("#form-upload-cover").hide().after(fileCover).remove();
		
		$("#fileCoverButton").on("click", function () {
			$(".current-cover-bg").removeClass("current-cover-bg");
			$isbox.addClass("current-cover-bg");

			if ($isbox.find(".is-overlay-bg").length && $isbox.find(".is-overlay-bg")[0].style.backgroundImage) {
				var bg = $isbox.find(".is-overlay-bg")[0].style.backgroundImage;
				bg = bg.substring(5, bg.length - 2);
				$("#imgaesTEXTURL").val(bg).siblings(".img").css("background-image", "url('" + bg + "')");

				if($isbox.find(".is-overlay-bg").hasClass("bg-Lazy")){
					$("#imgaesLoad").prop("checked", true);
				}else{
					$("#imgaesLoad").prop("checked", false);
				}

			} else {
				$("#imgaesTEXTURL").val("").siblings(".img").css("background-image", "");
				$("#imgaesLoad").prop("checked", false);
			}

			$(".imgaes-setting-option .loadimg").show();



			DisplayMediaIFrame(getMediaUrl({
				mimid: $(".d-wrapper").eq(0).data("mid"),
				FileType: "image"
			}), "cover");

		})

		$("#divCb").append(`<div id="fileCoverMobile" class="is-modal" style="display:none"></div>`)

		$("#fileCoverMobile").append(`<div class="box">
			<div>Mobile Background Image:</div>
			<div style="position: relative;">
				<input type="text" id="MobileCoverBgImages" value="" autocomplete="off">
				<button title="Select Image" id="MobileCoverBgImagesButton"><svg class="svg-icon"><use xlink:href="#ion-image"></use></svg></button>
				<button title="Clear" class="MobileCoverClear"><svg class="svg-icon" style="width:35px;height:35px;"><use xlink:href="#ion-ios-close-empty"></use></svg></button>
				
			</div>		
			<div>Mobile Background Color:</div>
			<div style="position: relative; display:inline-flex;">
				<input type="text" id="MobileCoverBgColor" class="colorpicker" style="width:200px;margin-right:-1px;" data-color-format="rgba" data-colorpicker-guid="2">
				<div class="colorpicker-group" style="display: flex;"></div>
				<button title="Clear" class="MobileCoverClear MobileCoverClearColor"><svg class="svg-icon" style="width:35px;height:35px;"><use xlink:href="#ion-ios-close-empty"></use></svg></button>
			</div>

			<div style="position: relative;">
		 
			<div style="height: 50px;border-top: #efefef 1px solid;overflow: hidden;text-align: right;margin: 25px -12px -21px -12px;">
				<button class="input-cancel classic-secondary" style="background:none;border:none;font-size:12px;">Cancel</button>     
				<button class="input-ok classic-primary" style="">Ok</button>
			</div>
		</div>`);	

		$("#MobileCoverBgImagesButton").on("click", function () {
			$(".imgaes-setting-option .loadimg").show();

			if($isbox.find(".is-overlay-mobile-bg").length && $isbox.find(".is-overlay-mobile-bg")[0].style.backgroundImage){
				var bg = $isbox.find(".is-overlay-mobile-bg")[0].style.backgroundImage;
				bg = bg.substring(5, bg.length - 2);
				$("#imgaesTEXTURL").val(bg).siblings(".img").css("background-image", "url('" + bg + "')");

				if($isbox.find(".is-overlay-mobile-bg").hasClass("bg-Lazy")){
					$("#imgaesLoad").prop("checked", true);
				}else{
					$("#imgaesLoad").prop("checked", false);
				}

			}else{
				$("#imgaesLoad").prop("checked", false);
			}

			$("#MobileCoverBgImages").removeAttr("data-modify");

			DisplayMediaIFrame(getMediaUrl({
				mimid: $(".d-wrapper").eq(0).data("mid"),
				FileType: "image"
			}), "mobilebg");

		})

		
		$(".MobileCoverClear").on("click", function () {
			$(this).siblings('input[type="text"]').val("").change();
			$(this).siblings('.colorpicker-group').find("div").css("background-color","")
		})


		$("#fileCoverMobile .input-cancel").on("click", function () {
			$("#fileCoverMobile").stop().fadeOut();
		})



		$("#MobileCoverBgColor").siblings(".colorpicker-group").each(function () {
			var colorbox = $(this).siblings(".colorpicker");
			$(this).colorpicker({
				color: colorbox.val(),
				onPick: function (color) {
					colorbox.val(color).change();
				}
			});
		})


		$("#fileCoverButtonMobile").on("click", function () {
			var bg = $isSection.find(".is-overlay .is-overlay-mobile-bg");
			if($isSection.find(".is-overlay .is-overlay-mobile-bg").length){
			 var color = bg[0].style.backgroundColor;
			 var img = bg[0].style.backgroundImage;
				if(img){
					$("#MobileCoverBgImages").val(img.split("\"")[1])
				}else{
					$("#MobileCoverBgImages").val("");
				}
				if(color){
					$("#MobileCoverBgColor").val(color).siblings('.colorpicker-group').find("div").css("background-color",color);
				}else{
					$("#MobileCoverBgColor").val("").siblings('.colorpicker-group').find("div").css("background-color","");
				}
			}else{
				$("#MobileCoverBgImages").val("");
				$("#MobileCoverBgColor").val("").siblings('.colorpicker-group').find("div").css("background-color","");
			}

			$("#fileCoverMobile").stop().css("display"," flex");
		})


		$("#fileCoverMobile .input-ok").on("click", function () {

			if(!$isSection.find(".is-overlay").length){
				$isSection.prepend('<div class="is-overlay"><div class="is-overlay-mobile-bg"></div></div>');
			}else if(!$isSection.find(".is-overlay-mobile-bg").length){
				$isSection.find(".is-overlay").append('<div class="is-overlay-mobile-bg"></div>');
			};
			
			var color =$("#MobileCoverBgColor").val()?$("#MobileCoverBgColor").val():"";
			var image =$("#MobileCoverBgImages").val()?"url(\""+$("#MobileCoverBgImages").val()+"\")":"";
			
			$isSection.find(".is-overlay-mobile-bg").css({
				"background-color":color,
				"background-image":image,
			})


			if($("#MobileCoverBgImages").attr("data-modify")){
				if ($("#imgaesLoad").is(":checked")) {
					$isSection.find(".is-overlay-mobile-bg").addClass("bg-Lazy");
				}else{
					$isSection.find(".is-overlay-mobile-bg").removeClass("bg-Lazy");
				}
			}



			if(color || image){
				$isSection.find(".is-overlay").addClass("overlay-responsive");
			}else{
				$isSection.find(".is-overlay").removeClass("overlay-responsive");
			}
			
			$("#fileCoverMobile").stop().fadeOut();
			DisplaySaveButton();

		})
		

		var videoCover = $('<button type="button" id="videoCoverButton" title="Video Background"></button>');

		$("#fileCoverButtonMobile").after(videoCover);


		$("#divCb").append(`<div id="VideoCoverModal" class="is-modal" style="display:none"></div>`);


		$("#VideoCoverModal").append(`<div class="box">
		<p class="modal-title">MP4 Source:</p>
		<div>
		<input class="video-mp4-src" type="text" placeholder="MP4 Source" style="width: 100%; margin-bottom: 12px; display: block;">
		<button type="button" class="linkImageButton icon-video" title="File"></button>
		</div>
		<p class="modal-title">OGG Source:</p>
		<div>
		<input class="video-ogg-src" type="text" placeholder="OGG Source" style="width: 100%; margin-bottom: 12px; display: block;">
		<button type="button" class="linkImageButton icon-video" title="File"></button>
		</div>
		<p class="modal-title">WEBM Source:</p>
		<div>
		<input class="video-webm-src" type="text" placeholder="WEBM Source" style="width: 100%; margin-bottom: 12px; display: block;">
		<button type="button" class="linkImageButton icon-video" title="File"></button>
		</div>
		
		<label class="mr-10"><input type="checkbox" class="video-isLazy"> Lazy Load</label>


		<div class=" mb-20">
			<div style="height: 50px;border-top: #efefef 1px solid;overflow: hidden;text-align: right;margin: 25px -12px -21px -12px;">
				<button class="input-cancel classic-secondary" style="background:none;border:none;font-size:12px;">Cancel</button>     
				<button class="input-ok classic-primary" style="">Ok</button>
			</div>
		</div>`);

		videoCover.on("click", function () {

		     $("#VideoCoverModal .video-mp4-src").val($isbox.find('.is-overlay-Video-bg source[type="video/mp4"]').attr("src") || "");						
			 $("#VideoCoverModal .video-ogg-src").val($isbox.find('.is-overlay-Video-bg source[type="video/ogg"]').attr("src") || "");						
			 $("#VideoCoverModal .video-webm-src").val($isbox.find('.is-overlay-Video-bg source[type="video/webm"]').attr("src") || "");		

			if($isbox.find('.is-overlay-Video-bg').hasClass("video-Lazy")){
				$("#VideoCoverModal .video-isLazy").prop("checked", true);
			}else{
				$("#VideoCoverModal .video-isLazy").prop("checked", false);
			}

			$("#VideoCoverModal").stop().css("display", " flex");
		})

		$("#VideoCoverModal .linkImageButton").on("click", function () {
			var val =$(this).siblings('input[type="text"]').val();

				$("#imgaesTEXTURL").val(val);
				var imgStr = /\.(jpg|jpeg|png|bmp|gif|webp|tif)$/;
				if(val && imgStr.test(val.toLowerCase())){
					$("#imgaesTEXTURL").siblings(".img").css("background-image", "url('" + $(".elm-active").attr("src") + "')");
				}
				$(".imgaes-setting-option .loadimg").hide();


				var type = false;
					if($(this).hasClass("icon-video")){
						type ="video";
					}if($(this).hasClass("icon-img")){
						type ="image";
					}
				$("#DnnMediaBox").data("active",$(this).siblings('input[type="text"]')).attr("type", "link").fadeIn().find("iframe").attr("src", getMediaUrl({
					mimid: $(".is-wrapper").data("mid"),
					FileType:type
				}));
		})

		$("#VideoCoverModal .input-cancel").on("click", function () {
			$("#VideoCoverModal").stop().fadeOut();
		})
		$("#VideoCoverModal .input-ok").on("click", function () {

			if (!$isbox.find(".is-overlay").length) {
				$isbox.prepend('<div class="is-overlay"><div class="is-overlay-Video-bg"></div></div>');
			} else if (!$isbox.find(".is-overlay-Video-bg").length) {
				$isbox.find(".is-overlay").append('<div class="is-overlay-Video-bg"></div>');
			};

		 	var mp4 = $("#VideoCoverModal .video-mp4-src").val();						
			var ogg = $("#VideoCoverModal .video-ogg-src").val();						
			var webm = $("#VideoCoverModal .video-webm-src").val();						

			if(mp4 || ogg || webm){
				var v= "<video autoplay playsinline muted loop>";
				if(mp4){
					v +='<source src="'+mp4+'" type="video/mp4">';
				}
				if(ogg){
					v +='<source src="'+ogg+'" type="video/ogg">';
				}
				if(webm){
					v +='<source src="'+webm+'" type="video/webm">';
				}
				v +="</video>";

				$isbox.find(".is-overlay .is-overlay-Video-bg").html(v);
			}else{
				$isbox.find(".is-overlay .is-overlay-Video-bg").remove();
			}

			if($("#VideoCoverModal .video-isLazy").is(":checked")){
				$isbox.find('.is-overlay-Video-bg').addClass("video-Lazy");
			}else{
				$isbox.find('.is-overlay-Video-bg').removeClass("video-Lazy");
			}



			$("#VideoCoverModal").stop().fadeOut();
			DisplaySaveButton();
		})



		var addSection  = $('<div id="add-section-button" title="Add Section" style=" width: 40px; height: 40px; background: rgb(239 139 54); line-height: 40px;"></div>')

		$("#divboxtool").append(addSection);

		
		addSection.on("click",function(){
			$('.is-sidebar-button[data-content="divSidebarSections"]').click();
		})



		$('#divContentSize .cmd-box-size[data-value="380"]').before('<button class="cmd-box-full" data-value="full">Full</button><button class="cmd-box-auto" data-value="auto">Auto</button>')
		$('#divContentSize .cmd-box-size[data-value="800"]').before('<button class="cmd-box-size" data-value="640">640px</button>').after('<button class="cmd-box-size" data-value="970">970px</button><button class="cmd-box-size" data-value="980">980px</button><button class="cmd-box-size" data-value="1050">1050px</button><button class="cmd-box-size" data-value="1100">1100px</button><button class="cmd-box-size" data-value="1200">1200px</button>')

		$('#divContentSize .cmd-box-auto').on("click", function () {
			$isbox.find(".is-container").removeClass("is-content-380 is-content-500 is-content-640 is-content-800 is-content-970 is-content-980 is-content-1050 is-content-1100 is-content-1200 is-container-fluid").css("max-width", "");
		})
		$('#divContentSize .cmd-box-full').on("click", function () {
			$isbox.find(".is-container").addClass("is-container-fluid").removeClass("is-content-380 is-content-500 is-content-640 is-content-800 is-content-970 is-content-980 is-content-1050 is-content-1100 is-content-1200").css("max-width", "");
		})
		$('#divContentSize .cmd-box-size').on("mouseup", function () {
			$isbox.find(".is-container").removeClass("is-container-fluid")
		})

		$('.cmd-addclass-box .cmd-addclass').on("click", function () {
			$isbox.find(".is-container").addClass($(this).data("value"))
			$(this).siblings().each(function () {
				$isbox.find(".is-container").removeClass($(this).data("value"))
			})
		})

 		$("#divBoxImage .is-settings").last().after(`
			<div class="is-settings clearfix" style="margin-bottom:0"><div>Image Size:</div>
				<button title="auto" class="cmd-box-image-size" style="width:70px" data-value="auto">Auto</button>
				<button title="auto" class="cmd-box-image-size" style="width:70px" data-value="contain">Contain</button>
				<button title="auto" class="cmd-box-image-size" style="width:70px" data-value="cover">Cover</button>
				<button title="auto" class="cmd-box-image-size" style="width:70px" data-value="custom">Custom</button>
				<input type="text" class="cmd-box-image-size-custom" value="0px 0px" style="width: 138px; height: 45px; display:none" >
				</div>	

				<div class="is-settings clearfix" style="margin-bottom:0"><div>Remove Image:</div>
						<button title="auto" class="del-image" style="width:120px" data-value="auto">Remove Image</button>
				</div>	
			
		`)

		$('#divBoxImage .cmd-box-image-size').on("click", function () {

			if ($(this).data("value") != "custom") {
				if ($isSection) {
					$isbox.find(".is-overlay-bg").css("background-size", $(this).data("value"))
				}
				$("#divBoxImage .cmd-box-image-size-custom").hide();
			} else {
				$("#divBoxImage .cmd-box-image-size-custom").show();
			}
		})
		$('#divBoxImage .cmd-box-image-size-custom').on("change", function () {
			$isbox.find(".is-overlay-bg").css("background-size", $(this).val())
		})
		$('#divBoxImage .del-image').on("click", function () {
			$isbox.find(".is-overlay-bg").remove();
			$(".is-modal.editbox.active").removeClass("active");

		})

		$("#DnnMediaBox .close,#DnnMediaBox #MediaClose").on("click", function () {
			$("#DnnMediaBox").removeAttr("type").fadeOut();
		//	$("#MediaAddImages").off();
		})
		$(".is-side-close").on("click", function () {
			modulesIcon = false;
			$(".is-modal.is-side.viewicons.active").removeClass("active")
			$(".is-modal.custommodule .is-modal-overlay").css("z-index", "-1");
		})

		$('#selSnippetCat option[value="120"]').after('<option value="800">Short Code</option>')

		$('#selSnippetCat').html("");


		for (var key in selSnippetCat) {
			$('#selSnippetCat').append(`<option value="${selSnippetCat[key]}">${key}</option>`);
		}

		EditThemePluginOptions();


		/* */
		$(".is-modal.editsection .is-modal-bar").siblings("div").wrap(`<div id="divBoxBasic" class="is-tab-content" style="display:block">`)

		$("#divBoxBasic >div").append(`
			<div id="divBoxLayoutSettings">
			<div>Content position</div>
			<select class="form-control" id="Layout_placement" data-type="align-items-">
				<option value="">Default</option>
				<option value="align-items-start">Top</option>
				<option value="align-items-center">Middle</option>
				<option value="align-items-end">Bottom</option>
			</select>
			<div>Justify content</div>
			<select class="form-control" id="Layout_alignment" data-type="justify-content-">
				<option value="">Default</option>
				<option value="justify-content-start">justify-content-start</option>
				<option value="justify-content-center">justify-content-center</option>
				<option value="justify-content-end">justify-content-end</option>
				<option value="justify-content-around">justify-content-around</option>
				<option value="justify-content-between">justify-content-between</option>
			</select>

	 

			<div>Spacing</div>
			<div>
				<label for="layout_tvspace_no" style="margin:0;"><input id="layout_tvspace_no" type="checkbox" data-class="layout-no-mt"> No top spacing</label>
			</div>
			<div>
				<label for="layout_bvspace_no" style="margin:0;"><input id="layout_bvspace_no" type="checkbox" data-class="layout-no-mb"> No bottom spacing</label>
			</div>
			<div>
				<label for="layout_hspace_no" style="margin:0;"><input id="layout_hspace_no" type="checkbox" data-class="layout-no-plr"> No left and right spacing</label>
			</div>
			<div>
				<label for="layout_lightbox_content" style="margin:0;"><input id="layout_lightbox_content" type="checkbox" data-class="layout-hidden-content"> Hidden Section</label>
			</div>
			<div>Section ID</div>
			<div>
			<input type="text" id="section-box-id">
			</div>
		</div>
		`);

		$("#Layout_placement,#Layout_alignment").on("change", function () {

			var className = $(this).val();
			var type = $(this).data("type");

			var row = $isSection.find(".layout-container > .row,.is-container > .row");

			row.each(function () {
				if ($(this).attr("class").indexOf(type) != -1) {

					$(this).attr("class", jQuery.trim($(this).attr("class").replace(new RegExp(type + ".+?(\\s|$)"), className ? className + " " : "")))
				} else {
					$(this).addClass(className)
				}
			})

		})
		$("#layout_tvspace_no,#layout_bvspace_no,#layout_hspace_no,#layout_lightbox_content").on("change", function () {
			var has = $(this).is(":checked");

			if (has) {
				$isSection.addClass($(this).data("class"));
			} else {
				$isSection.removeClass($(this).data("class"));
			}
		})
		$("#section-box-id").on("change", function () {
			$isSection.attr("id",$(this).val());
		})


		if ($(".dng-main").data("page-type") == "onepage" || $(".dng-main").data("page-type") == "verticalfullpage") {
			$("#divBoxBasic >div").append(`
			<div>Anchor ID</div>
			<input type="text" id="layout_anchorid" />
			<div class="pt-5">Anchor Title </div>
			<input type="text" id="layout_anchortitle" />
			`);

			$("#layout_anchorid").on("change", function () {
				if ($(this).val()) {
					$isSection.attr("id", $(this).val());
					$isSection.addClass("anchorTag");
				} else {
					$isSection.removeAttr("id");
					$isSection.removeClass("anchorTag");
				}
			})
			$("#layout_anchortitle").on("change", function () {
				$isSection.attr("data-title", $(this).val())
			})
		}


		$(".is-modal.editsection .is-tabs a").on("click", function (e) {
			e.preventDefault();
			$(this).addClass("active").siblings().removeClass("active");
			$("#" + $(this).data("content")).show().siblings(".is-tab-content").hide();
		})
		$("#elementsettingJSON").on("change", function () {
			$isSection.attr("data-element", $(this).val());

		})
		$("#Body").on("click", ".is-section-edit", function () {
			$(".is-modal.editsection").addClass("loader");
			//	if ($isSection.find(".layout-container > .row").length) {

			var className = $isSection.find(".layout-container > .row,.is-container > .row").attr("class");

			if (className.indexOf("align-items-") != -1) {
				$("#Layout_placement option").each(function () {
					if ($(this).attr("value") && className.indexOf($(this).attr("value")) != -1) {
						$(this).attr("selected", "selected").siblings().removeAttr("selected").parent().val($(this).attr("value"));
					}
				})
			} else {
				$("#Layout_placement option").eq(0).attr("selected", "selected").siblings().removeAttr("selected").parent().val("");
			}
			$("#section-box-id").val($isSection.attr("id")?$isSection.attr("id"):"");
			if (className.indexOf("justify-content-") != -1) {
				$("#Layout_alignment option").each(function () {
					if ($(this).attr("value") && className.indexOf($(this).attr("value")) != -1) {
						$(this).attr("selected", "selected").siblings().removeAttr("selected").parent().val($(this).attr("value"));
					}
				})
			} else {
				$("#Layout_alignment option").eq(0).attr("selected", "selected").siblings().removeAttr("selected").parent().val("");
			}



			//		$("#divBoxLayoutSettings").show();
			//	} else {
			//		$("#divBoxLayoutSettings").hide();
			//	}


			$("#layout_tvspace_no,#layout_bvspace_no,#layout_hspace_no,#layout_lightbox_content").each(function () {
				if ($isSection && $isSection.hasClass($(this).data("class"))) {
					$(this).prop("checked", true);
				} else {
					$(this).prop("checked", false);
				}
			})

			if ($(".dng-main").data("page-type") == "onepage" || $(".dng-main").data("page-type") == "verticalfullpage") {
				if ($isSection && $isSection.attr("id")) {
					$("#layout_anchorid").val($isSection.attr("id"));
				} else {
					$("#layout_anchorid").val("");
				};
				if ($isSection && $isSection.attr("data-title")) {
					$("#layout_anchortitle").val($isSection.attr("data-title"));
				} else {
					$("#layout_anchortitle").val("");
				}
			}

			setTimeout(function () {
				$("#elementsettingJSON").val($isSection.attr("data-element")).change();
				$(".is-modal.editsection").removeClass("loader");
			}, 100)
		})

		$("#divElementBox").append(`
			<div style="margin-top: 25px;font-weight: bold;line-height: 1.7;">Class</div>
			<textarea rows="2" style="width:100%" id="elmClassName"></textarea>
		`)

		function getClassName() {
			var className = $(".elm-inspected").attr("class");
			if (className) {
				$("#elmClassName").val($(".elm-inspected").attr("class").replace("elm-inspected", "").replace("elm-active", "").replace(/(^\s*)|(\s*$)/g, ""))
			} else {
				$("#elmClassName").val("")
			}
		}

		$("#elmClassName").on("change", function () {
			var curr = "elm-inspected " + $(this).val();

			if ($(".elm-inspected").hasClass("elm-active")) {
				"elm-active " + curr;
			}
			$(".elm-inspected").attr("class", curr)
		})

		$("#divElementBox > .is-settings").eq(0).after(`
		<div class="is-settings clearfix ImagesSetting" style="display:inline-block;width:100%;margin-bottom:0;">
			<div>Background Image:</div>
			<div style="position: relative;">
				<input type="text" id="inpElmBgImages" value="">
				<button title="Select Image" ID="inpElmBgImagesButton"><svg class="svg-icon"><use xlink:href="#ion-image"></use></svg></button>
			</div>
			<div class="ImagesAttr" style="display:inline-block;width:100%;margin-top:10px;">
			<div class="edit-select">
				<input type="text" class="select-text form-control" size="6" id="inpElmBgImagesX" value=""/>
				<ul class="insel"><li value="left">left</li><li value="center">center</li><li value="right">right</li></ul>
			</div>
			<div class="edit-select">
				<input type="text" class="select-text form-control" size="6" id="inpElmBgImagesY" value=""/>
				<ul class="insel"><li value="top">top</li><li value="center">center</li><li value="bottom">bottom</li></ul>
			</div>

			<select class="form-control" id="inpElmBgImagesRepeat" >
			<option value="no-repeat">no-repeat</option><option value="repeat-x">repeat-x</option><option value="repeat-y">repeat-y</option><option value="repeat">repeat</option>
			</select>
			<div class="edit-select">
				<input type="text" class="select-text form-control" size="17" id="inpElmBgImagesSize" value=""/>
				<ul class="insel"><li value="auto">auto</li><li value="contain">contain</li><li value="cover">cover</li></ul>
			</div>			
			</div>
		</div>
		`)

		$("#inpElmBgImagesButton").on("click", function () {
			$(".imgaes-setting-option .loadimg").hide();
			DisplayMediaIFrame(getMediaUrl({
				mimid: $(".d-wrapper").eq(0).data("mid"),
				FileType:"image"
			}),"setting");
		})
		$(".is-settings.ImagesSetting").on("change", "select,input", function () {
			var url = $("#inpElmBgImages").val(),
				x = $("#inpElmBgImagesX").val(),
				y = $("#inpElmBgImagesY").val(),
				Repeat = $("#inpElmBgImagesRepeat").val(),
				Size = $("#inpElmBgImagesSize").val();
			if (url) {
				$(".elm-inspected").css({
					"background-image": "url('" + url + "')",
					"background-position": x + " " + y,
					"background-repeat": Repeat,
					"background-size": Size
				})
				$(".ImagesSetting .ImagesAttr").show();
			} else {
				$(".elm-inspected").css({
					"background-image": "",
					"background-position": "",
					"background-repeat": "",
					"background-size": ""
				})
				$(".ImagesSetting .ImagesAttr").hide();
			}
		})

		function getBgImage() {
			var bg = $(".elm-inspected")[0] ? $(".elm-inspected")[0].style.backgroundImage : false;

			if (bg && bg != "none") {

				var p = $(".elm-inspected")[0].style.backgroundPosition;
				p = p ? p.split(" ") : false;
				var x = p ? p[0] : "",
					y = p ? p[1] : "",
					Repeat = $(".elm-inspected").css("background-repeat"),
					Size = $(".elm-inspected").css("background-size");


				$("#inpElmBgImages").val(bg.substring(5, bg.length - 2));
				$("#inpElmBgImagesX").val(x);
				$("#inpElmBgImagesY").val(y);
				$("#inpElmBgImagesRepeat").find('option[value="' + Repeat + '"]').attr("selected", "selected").siblings().removeAttr("selected");
				$("#inpElmBgImagesSize").val(Size);
				$(".ImagesSetting .ImagesAttr").show();
			} else {
				$("#inpElmBgImages").val("");
				$(".ImagesSetting .ImagesAttr").hide();
			}
		}


		$(".element-edit").on("click mouseup", function () {
			setTimeout(function () {
				getBgImage();
				getClassName();
			}, 100)
		})
		$(".is-modal.is-side").on("mouseup", ".elm-list a", function () {
			setTimeout(function () {
				getClassName();
				getBgImage();
			}, 100)
		})

		$(".d-wrapper").on("mouseup", function () {
			if ($isSection && $isSection.find(".elm-inspected").length) {
				setTimeout(function () {
					getClassName();
					getBgImage();
				}, 100)
			}
		})


		$(".is-sidebar").after(`<div class="is-sidebar2"></div>`)

		$(".is-sidebar").append(`<div class="is-sidebar-button" id="divSidebarSourceEditCSS" data-content="divSidebarSourceCSS" data-command="css" title="CSS"><svg class="svg-icon"><use xlink:href="#ion-code-working"></use></svg></div>`)


		$("#divSidebarSource").after(`
		<div id="divSidebarSourceCSS" class="is-sidebar-content" style="-webkit-transition-duration:0.2s;transition-duration:0.2s;">
		    <div>
				<div style="position:absolute;width:260px;height:35px;right:18px;top:7px;z-index:1;">
				<button title="Cancel" class="secondary"> Cancel </button>
				<button title="Ok" class="primary"> Ok </button>
				</div>
		        <div style="height:100%;box-sizing:border-box;border-top:#f3f3f3 50px solid;position:relative">
		            <div id="divSidebarSourceEditCSSBox"></div>
		        </div>
			</div>
			<iframe id="ifrCSSFormatted" src="about:blank"></iframe>
		</div>
		`)
		$("#divSidebarSourceEditCSS").on("click", function () {
			if (!$("#divSidebarSourceCSS").hasClass("active")) {
				$("#ifrCSSFormatted").attr('src', 'about:blank')

				$("#divSidebarSourceCSS").addClass("active").siblings().removeClass("active");
				$("#divSidebarSourceEditCSSBox").empty();

				$("#ifrCSSFormatted").attr('src', SkinPath + 'Resource/vendor/content-builder/contentbuilder/css.html?1');

				if ($(".is-wrapper")[0].Builder["CodeCSS"]) {
					var css = $(".is-wrapper")[0].Builder["CodeCSS"];
					for (var key in css) {
						if(key != "content-builder"){
						if (css[key] && css[key].indexOf("{") !== -1) {

							format = $('<textarea></textarea>').val(css[key]).format({
								method: 'css'
							}).val();
							$("#divSidebarSourceEditCSSBox").append(`
							<textarea class="EditCSSBox" contenteditable="true" data-class="${key}">${format}</textarea>
						`)
						} else {
							$("#divSidebarSourceEditCSSBox").append(`<textarea class="EditCSSBox" contenteditable="true" data-class="${key}">${css[key]}</textarea>`)
						}
						}
					}
				}

			} else {
				$("#divSidebarSourceCSS").removeClass("active")
			}
		})

		if(addHistory){
			$(".is-sidebar").append(`<div class="is-sidebar-button disabled prev" id="historyPrevButton" title="Undo"><svg class="is-icon-flex"  viewBox="0 0 1024 1024" style="width:18px;height:18px;"><path d="M76 463.7l294.8 294.9c19.5 19.4 52.8 5.6 52.8-21.9V561.5c202.5-8.2 344.1 59.5 501.6 338.3 8.5 15 31.5 7.9 30.6-9.3-30.5-554.7-453-571.4-532.3-569.6v-174c0-27.5-33.2-41.3-52.7-21.8L75.9 420c-12 12.1-12 31.6 0.1 43.7z" fill="currentColor"></path></svg></div><div class="is-sidebar-button next disabled" id="historyNextButton" title="Redo"><svg class="is-icon-flex" viewBox="0 0 1024 1024" style="width:18px;height:18px;"><path d="M946.8 420L651.9 125.1c-19.5-19.5-52.7-5.7-52.7 21.8v174c-79.3-1.8-501.8 14.9-532.3 569.6-0.9 17.2 22.1 24.3 30.6 9.3C255 621 396.6 553.3 599.1 561.5v175.2c0 27.5 33.3 41.3 52.8 21.9l294.8-294.9c12.1-12.1 12.1-31.6 0.1-43.7z" fill="currentColor"></svg></div>`)

			$("#historyPrevButton,#historyNextButton").on("click", function () {
				if(addHistory){
					var prev =$(this).hasClass("prev");
						addHistory =false;
						prev ? cuurHistory-- :cuurHistory++;
					var mid= midHistoryIndexed[cuurHistory-1];

					var position = false;

					if(!prev){
						position =  midHistoryIndexed[cuurHistory-1]?midHistoryIndexed[cuurHistory-1]["position"]:false;
					}else{
						position = midHistoryIndexed[cuurHistory]?midHistoryIndexed[cuurHistory]["position"]:false;
					}

					if(mid && mid["initial"] && !prev){
						cuurHistory++;
					}			
					var html = sessionStorage.getItem('cb-history-'+cuurHistory);
						if(cuurHistory == 1){
							$("#historyPrevButton").addClass("disabled");	
						}else{
							$("#historyPrevButton").removeClass("disabled");	
						}
						if(cuurHistory == History_cb){
							$("#historyNextButton").addClass("disabled");
						}else{
							$("#historyNextButton").removeClass("disabled");
						}
					
						if(mid && mid["initial"] && prev){
							 cuurHistory--;
						}
					
						if(html !== null && html != "unll"){
							var box =jQuery('.d-wrapper[data-mid="'+mid["mid"]+'"]');
							box.html(html).click();
							_cb.applyBehavior();
							box.data("contentbox").setup();
							box.data("contentbox").settings.onRender();
							box.data("contentbox").settings.onChange();
						}
						if(position){
							jQuery('body,html').stop().animate({
								scrollTop: position
							}, 300);
						}

						if(cuurHistory != History_cb){
							SelectHistory = cuurHistory;	
						}else{
							SelectHistory =false;
						}
					
						box.find(".d-placeholder").addClass("row-add-initial").on("click", function () {
							$(this).parent().focus();
							$isSection = false;
							$('.is-sidebar-button[data-content="divSidebarSections"]').click();
						})
					
					addHistory =true;
				} 
			})
			
		} 

		$(".is-sidebar").append($(".SkinPluginPro_icon").addClass("sidebarIcon").show())
		$(".SkinPluginPro_icon a").each(function () {
			$(this).attr("title", $(this).find("span").text())
		})

		$(".is-sidebar").append(`<div class="is-sidebar-button" id="dnnpersonabarhide" title="Hide Persona Bar"><svg class="is-icon-flex" style="width:24px;height:24px;"><use xlink:href="#ion-ios-arrow-left"></use></svg><svg class="is-icon-flex" style="width:24px;height:24px;margin-left: -17px;"><use xlink:href="#ion-ios-arrow-left"></use></svg></div>`)

		$("#dnnpersonabarhide").on("click",function(){
			$(this).toggleClass("active");
			if($(this).hasClass("active")){
				$(this).attr("title","Display Persona Bar");
			}else{
				$(this).attr("title","Hide Persona Bar");
			}

			$("html").toggleClass("dnnpersonabarhide");
		})

	//	var  PreviewLocation = window.location.href;
	//	PreviewLocation += (PreviewLocation.indexOf("?") == -1?"?":"&") + "mode=preview";

		$(".is-sidebar").append('<a class="is-sidebar-button" id="content-builder-preview" title="Preview" href="'+PreviewServiceUrl+'" target="Preview"></a>');
				
		$("#divFb").append('<div class="is-modal" id="content-builder-preview-fill"></div>');



		$("#divSidebarSource").append(`
			<iframe id="ifrHTMLFormattedMain" src="about:blank"></iframe>
		`)

		$('.is-sidebar-button[title="HTML"]').on("click", function () {
			$("#ifrHTMLFormattedMain").attr('src', SkinPath + 'Resource/vendor/content-builder/contentbuilder/html_small3.html?1');
		})



		$("#divSidebarSourceCSS .primary").on("click", function () {
			if ($("#divSidebarSourceCSS .EditCSSBox.change").length) {
				$("#divSidebarSourceCSS .EditCSSBox.change").each(function () {
					if ($(".is-wrapper")[0].Builder["CodeCSS"]) {
						var v = $(this).data("class"),
							h = $(this).val();
						//	h = new formathtmljscss(h, 2, 'compress');
						//	h.formatcss();
						//	h = h.source;
						h = $('<textarea></textarea>').val(h).format({
							method: 'cssmin'
						}).val();

						if(v){
							$(".is-wrapper")[0].Builder["CodeCSS"][v] = h;
							$('.build-css[data-class="' + v + '"]').remove();
							$('head').append(`<style class="build-css" data-class="${v}">${h}</style>`);
						}
					}
				})
				jQuery(".is-wrapper").data("contentbox").settings.onChange();
			}
			$("#divSidebarSourceCSS").removeClass("active");


		})
		$("#divSidebarSourceCSS .secondary,.dng-main").on("click", function () {
			$("#divSidebarSourceCSS").removeClass("active")
		})


		$("#DnnMediaBox .media-footer").append(`
		<ul class="imgaes-setting-option">
		<li class="imgurl"><label>URL:</label> <input type="text" id="imgaesTEXTURL" /><i class="img"></i> </li>
		<li class="loadimg"><label>Lazy Load:</label> <input type="checkbox" id="imgaesLoad" /> </li>
		</ul>	
		`)
		$("#imgaesTEXTURL").on("change", function () {
			$(this).siblings(".img").css("background-image", "url('" + $(this).val() + "')");

		})

		
		modalCreateLinkSetting();

		


		$("#DnnMediaBox").addClass("is-modal");
	//	$("#divElementType").find("select,input").on("change", function () {
	//		jQuery(".is-wrapper").data("contentbox").settings.onChange();
	//	})

		$(".cell-tool-option-container .cell-image").on("click mouseup", function () {

			$("#imgaesTEXTURL").val('').siblings(".img").css("background-image", '');
			$(".imgaes-setting-option .loadimg").show();
			$("#imgaesLoad").prop("checked", false);
 
			DisplayMediaIFrame(getMediaUrl({
				mimid: $(".d-wrapper").eq(0).data("mid"),
				FileType:"image"
			}),"insertimage");

		})


		$(".custom-module").on("click", function () {
			$(this).mouseover();
		})

		jQuery('.cell-block-options > div > div[data-block="h4"]').after('<div title="Heading 5" data-block="h5"><h5>Heading 5</h5></div><div title="Heading 6" data-block="h6"><h6>Heading 6</h6></div>')

		jQuery('.cell-block-options > div > div').off('click');

		jQuery('.cell-block-options > div > div').on('click', function (e) {
			var s = jQuery(this).data('block');
			var elm = $(".elm-active");
			if (elm.length && Array("br", "hr", "img", "input", "param", "meta", "link").indexOf(elm[0].tagName.toLowerCase()) == -1) {
				var currhtml = elm[0].outerHTML;
				var html = "<" + s + currhtml.substring(currhtml.indexOf(" "), currhtml.lastIndexOf("<")) + "</" + s + ">";
				elm.after(html).remove();
			}
			jQuery(".cell-block-options").css("display", "none");
		});
		jQuery('.edit-select').each(function () {
			var e = $(this);
			e.children(".select-text").on('focus', function () {
				$(this).siblings(".insel").find('li[value="' + $(this).val() + '"]').addClass("active").siblings().removeClass("active");
				$(this).siblings(".insel").fadeIn(100);
			}).on('blur', function () {
				$(this).siblings(".insel").fadeOut(100);
			});
			e.find(".insel li").on('click', function () {
				e.children('.select-text').val($(this).attr("value")).change();
			})
		});



		SectionSaveSetting();

		SectionCodeSetting();

		jQuery('.element-remove').on('mousedown', function () {
			var $el = jQuery("#divElementTool").data('active');
			if (!$el.siblings(":not(.is-row-tool)").length && $el.parent().parent().hasClass("row")) {
				$el.siblings(".is-row-tool").remove();
				$el.after('<div class="is-builder ui-sortable builder-placeholder"><button class="row-add-initial">Empty<br><span>+ Click to add section</span></button></div>');
			}
		})
		$("#chkParallaxBg").parent().parent().remove();

		$("#chkAnimateBg").parent().parent().after(`<label for="ParallaxBg" style="margin:0;">Parallax:</label><select class="form-control dynamicOptions" id="ParallaxBg"><option value="">None</option><option value="css">Fixed at its position</option><option value="js">Parallax on scroll</option></select><div class="control-cont parallax-op-box" id="parallax-op-box"><div>Parallax Factor:</div><div class="row"><div class="col-sm-2"><span>XS:</span><input type="number" class="dnnOptions form-control" step="0.01" value=""></div><div class="col-sm-2"><span>S:</span><input type="number" class="dnnOptions form-control" step="0.01" value=""></div><div class="col-sm-2"><span>M:</span><input type="number" class="dnnOptions form-control" step="0.01" value=""></div><div class="col-sm-2"><span>L:</span><input type="number" class="dnnOptions form-control" step="0.01" value=""></div><div class="col-sm-2"><span>XL:</span><input type="number" class="dnnOptions form-control" step="0.01" value=""></div><div class="col-sm-2"><span>XXL:</span><input type="number" class="dnnOptions form-control" step="0.01" value=""></div></div></div>`);

		jQuery('#ParallaxBg').on('change', function (e) {

			if ($(this).val() == "css") {
				$isbox.addClass("bg-attachment-fixed");
				$isbox.removeAttr("data-factor");
				$isbox.removeClass("bg-attachment-js");
				
				$("#parallax-op-box").hide();
				$isbox.find(".is-overlay-bg")[0].outerHTML = $isbox.find(".is-overlay-bg")[0].outerHTML;

			} else if ($(this).val() == "js") {
				$("#parallax-op-box").show();

				var factor = [0, 0.1, 0.2, 0.3, 0.3, 0.3];
				$("#parallax-op-box input").each(function (i) {
					if (!$(this).val()) {
						$(this).val(factor[i])
					};
				})
				$isbox.addClass("bg-attachment-js");
				var f = "";
				$("#parallax-op-box input").each(function (i) {
					if (i === 0) {
						f += $(this).val();
					} else {
						f += "," + $(this).val();
					}
				})

				$isbox.attr("data-factor", f);
				$isbox.removeClass("bg-attachment-fixed");
				$isSection.removeClass("bg-attachment-fixed");
				
				moduleEditModeJs("paroller", $isbox, "paroller");
			} else {
				$isbox.removeClass("bg-attachment-fixed bg-attachment-js");
				$isSection.removeClass("bg-attachment-fixed bg-attachment-js");
				$isbox.removeAttr("data-factor");
				$("#parallax-op-box").hide();
				$isbox.find(".is-overlay-bg")[0].outerHTML = $isbox.find(".is-overlay-bg")[0].outerHTML;

			}

			DisplaySaveButton();

		})

		jQuery('#parallax-op-box').on('change', 'input', function () {
			var f = "";
			$("#parallax-op-box input").each(function (i) {
				if (i === 0) {
					f += $(this).val();
				} else {
					f += "," + $(this).val();
				}
			})
			$isbox.attr("data-factor", f);
			moduleEditModeJs("paroller", $isbox, "paroller");
			DisplaySaveButton();
		})

		
		$("#lnkeditbox").on("mouseup", function () {

			var factor = [0, 0.1, 0.2, 0.3, 0.3, 0.3];
			$("#parallax-op-box input").each(function (i) {
				$(this).val(factor[i])
			})

			if ($isbox.hasClass("bg-attachment-fixed")) {
				jQuery('#ParallaxBg option').prop("selected", false);
				jQuery('#ParallaxBg option[value="css"]').prop("selected", true);
				$("#parallax-op-box").hide();
			} else if ($isbox.hasClass("bg-attachment-js")) {
				jQuery('#ParallaxBg option').prop("selected", false);
				jQuery('#ParallaxBg option[value="js"]').prop("selected", true);
				$("#parallax-op-box").show();
				var getfactor = $isbox.attr("data-factor");
				if (getfactor) {
					getfactor = getfactor.split(",");
					$("#parallax-op-box input").each(function (i) {
						$(this).val(getfactor[i]);
					})
				}
			} else {
				jQuery('#ParallaxBg option').prop("selected", false);
				$("#parallax-op-box").hide();

			}

			if ($isbox.hasClass("section-slider")) {
				jQuery('#divBoxSize').children().hide();
			} else {
				jQuery('#divBoxSize').children().show();
			}
			if ($isbox.hasClass("section-pagepiling")) {
				$("#divBoxContentText .pagepilingtitlebox").show();
				$("#pagepiling-box-title").val($isbox.attr("data-title"));
				$("#pagepiling-box-id").val($isbox.attr("id"));

			} else {
				$("#divBoxContentText .pagepilingtitlebox").hide();
			}

		})


		modalImageLinkSetting();


		ChangeCellSetting();
		
		CustomModuleSetting();

		contentVideoSetting();
		sectionTasbsPanel();
		sectionSliderPanel();


		//display Save icon
		$("#divBoxBasic select,#divBoxBasic input,.is-modal.elementstyles input,.is-modal.elementstyles select,#divBoxImage input").on("change", function () {
			DisplaySaveButton();
		})
		$(".is-modal.elementstyles select").on("click", function () {
			DisplaySaveButton();
		})

		$("#divCellTool .cell-prev").before($("#divCellToolMenu .cell-add"));
		$("#divCellTool .cell-prev").before($("#divCellToolMenu .cell-duplicate-clone"));
		$("#divCellTool .cell-prev").before($("#divCellToolMenu .cell-increase-clone"));
		$("#divCellTool .cell-prev").before($("#divCellToolMenu .cell-decrease-clone"));


		$("#divCellToolMenu .cell-up").before($("#divCellTool .cell-prev")); 
		$("#divCellToolMenu .cell-up").before($("#divCellTool .cell-next")); 



		$(".link-duplicate").off().on("click",function(){

			_cb.saveForUndo();
			var $link = jQuery("#divLinkTool").data('active');	
			$link.clone().insertBefore($link).css('margin-right', '12px');
			_cb.renderLinkTool();
			ButtonMultiple();
			_cb.settings.onChange();
		//	_cb.settings.onRender()
		})

		

		$(".link-remove").off().on("click",function(){

			var $block = jQuery("#divCellTool").data('active');
			var $row = $block.parent();
			var $div;
			_cb.saveForUndo();
			var $link = jQuery("#divLinkTool").data('active');
			
			if(!$link.siblings().length  && $(this).parent("span").length ){
				$(this).parent("span").remove();
			}else{
				$link.remove();
			}


			if ($block.children().length == 0) {
				if ($row.children().not('.is-row-tool').length == 1) {
					$row.remove();
					_cb.checkEmpty()
				} else {
					$block.remove();
					_cb.checkEmpty();
					_cb.fixLayout($row)
				}
			}
			_cb.hideElementTools();
			jQuery('#divCellTool').css('display', 'none');
			jQuery('#divRowAddTool').css('display', 'none');
			jQuery(".is-row-tool").css("display", "");
			jQuery('.row-active').removeClass('row-active');
			jQuery('.row-outline').removeClass('row-outline');
			jQuery('.cell-active').removeClass('cell-active');
			_cb.settings.onChange();
			jQuery("#divLinkTool").css('display', 'none')


		})

		var tabbox= $('<div class="tabbox tabbox-01"></div>');
		$(".cell-add-options.is-pop").wrapInner(tabbox);
		var tabbox02= $('<div class="tabbox tabbox-02"></div>');

		$(".cell-add-options.is-pop").append(tabbox02);
		$(".cell-add-options.is-pop").prepend(`<ul class="tab-title"><li class="active">Element</li><li>Multiple columns</li></ul>`)

		tabbox02.append(`<button title="12/12" value="12"><span></span>12/12</button>
		<button title="3/12+9/12" value="3+9"><span></span>3/12+9/12</button>
		<button title="4/12+8/12" value="4+8"><span></span>4/12+8/12</button>
		<button title="5/12+7/12" value="5+7"><span></span>5/12+7/12</button>
		<button title="6/12+6/12" value="6+6"><span></span>6/12+6/12</button>
		<button title="4/12+4/12+4/12" value="4+4+4"><span></span>4/12</button>
		<button title="9/12+3/12" value="9+3"><span></span>9/12+3/12</button>
		<button title="8/12+4/12" value="8+4"><span></span>8/12+4/12</button>
		<button title="7/12+5/12" value="7+5"><span></span>7/12+5/12</button>
		<button title="3/12+3/12+3/12+3/12" value="3+3+3+3"><span></span>3/12</button>
		<button title="3/12+6/12+3/12" value="3+6+3"><span></span>3/12+6/12+3/12</button>
		<button title="1/5+1/5+1/5+1/5+1/5" value="1/5+1/5+1/5+1/5+1/5"><span></span>1/5</button>`)
		$(".cell-add-options.is-pop .tab-title li").on("click",function(){
			if(!$(this).hasClass("active")){
				$(this).addClass("active").siblings().removeClass("active");
				$(".cell-add-options.is-pop .tabbox").eq($(this).index()).show().siblings(".tabbox").hide();
			}
		})
		tabbox02.find("button").on("click",function(){
			var row = '<div class="row">';
				var col =  $(this).val().split("+");
					col.forEach(function(i){
						row +=`<div class="col-md-${i}"><div class="is-builder ui-sortable"></div></div>`;
					})
				row +='</div>';
				_cb.addContent(row)
		})


		ChangeColorPicker();


	}

	function EditThemePluginOptions() {
		$('.is-sidebar .is-sidebar-button[data-content="divSidebarTypography"]').after(`<div class="is-sidebar-button" id="EditThemePluginOptions" data-content="EditThemePluginOptions" data-command="color" title="Color Options"><svg class="svg-icon"><use xlink:href="#ion-contrast"></use></svg></div>`);


		$("#divSidebarSource").after(`
		<div id="divEditThemePluginOptions" class="is-sidebar-content" style="-webkit-transition-duration:0.2s;transition-duration:0.2s;">
		<div>
		
		<div>
		<div id="divEditThemePluginOptionsBox"><textarea rows="2" style="display:none;" id="EditThemePluginOptionsTextarea"></textarea></div>
		</div>
		</div>
		<iframe id="ifrThemePluginOptions" src="about:blank"></iframe>
		</div>
		`)



		$("#EditThemePluginOptions").on("click", function () {
			if (!$("#divEditThemePluginOptions").hasClass("active")) {
				//	$("#ifrThemePluginOptions").attr('src', 'about:blank');

				$("#divEditThemePluginOptions").addClass("active").siblings().removeClass("active");

				if ($("#ifrThemePluginOptions").attr('src') == 'about:blank') {
					$("#ifrThemePluginOptions").attr('src', SkinPath + 'Resource/vendor/content-builder/contentbuilder/ThemePluginOptions.html?1');
				}


			} else {
				$("#divEditThemePluginOptions").removeClass("active")
			}
		})

		$("#divEditThemePluginOptions .secondary,.dng-main").on("click", function () {
			$("#divEditThemePluginOptions").removeClass("active")
		})

		//family

		$("#divSidebarTypography").append(`<textarea rows="2" style="display:none;" id="EditThemePluginFamilyOptionsTextarea"></textarea>`);







	}


	function DisplaySaveButton() {
		jQuery(".is-wrapper").data("change", true);
		jQuery(".is-wrapper").data("contentbox").settings.onHistory();
		pagemodification = true;
		if (pagemodification) {
			$("#ContentBuilderSaveHTML").removeAttr("disabled");
		}		
	}

	function DnnVersions() {
		if ($("#personaBar-iframe").length) {
			$("body").addClass("dnn-9")
		} else if ($("#ControlBar_ControlPanel").length) {
			$("body").addClass("dnn-8")
		} else {
			$("body").addClass("dnn-editor")
		}
		$("body").addClass("builder-editor-mode")
	}

	window.addEventListener('beforeunload', (event) => {
		if (pagemodification && !preview) {
			event.preventDefault();
			$('body').removeClass('page-is-changing');
			event.returnValue = 'No save';
		} else {
			return;
		}
	});
	window.addEventListener('unload', (event) => {
		sessionStorage.clear();
	});
	if (EnableHBControls) {
		if (EnableHBControls.indexOf("Section") == -1) {
			$('.is-sidebar [data-content="divSidebarSections"],#divSidebarSections').remove();
			$(".d-placeholder").remove();
		}
		if (EnableHBControls.indexOf("Content") == -1) {
			$('.is-sidebar [data-content="divSidebarSnippets"],#divSidebarSnippets').remove();
			$(".cell-add-options .cell-add-more").remove();
		}
		if (EnableHBControls.indexOf("Typography") == -1) {
			$('.is-sidebar [data-content="divSidebarTypography"],#divSidebarTypography').remove();
			$(".cmd-box-typography").parents(".is-settings")[0].remove();
		}
		if (EnableHBControls.indexOf("Code") == -1) {
			$('.is-sidebar [data-content="divSidebarSource"],#divSidebarSource,#divSidebarSourceEditCSS').remove();
			$('.is-sidebar2').remove();
		}
		if (!$(".is-sidebar").html()) {
			$(".is-sidebar").remove();
			$(".sidebar-active").css("padding-left", 0)
		}
	}else{
		$(".is-sidebar").remove();
		$('.is-sidebar2').remove();
		$(".sidebar-active").css("padding-left", 0)
	}

	function saveCustomSectionCode() {

		var replace = false;
		$("body").append(`<div id="save-section-name-box" style="display:none">
						<div class="content">
							
							<div class="pic" id="add-section-name-images">
								<img src="data:image/svg+xml,%3Csvg viewBox='0 0 370 277' style='background:%23f3f3f3;' wdith='370' xmlns='http://www.w3.org/2000/svg'/%3E"  />
							</div>
							<div class="text"><input type="text" id="add-section-name" placeholder="Section Title"></div>

							<div><textarea type="text" id="add-section-name-text" style="display:none"></textarea></div>
							<div class="message" style="display:none"></div>
							<div class="button">
							<button id="cancel-section-name-button" class="input-cancel classic-secondary">Cancel</button> 
							<button id="add-section-name-button" class="input-ok classic-primary">Save</button>
							</div>
						</div>
					</div>
					<input type="text" id="add-section-Update-list" style="display:none">	
					`);


		var addsectionCode = function () {
			$("#save-section-name-box").addClass("loading");


			customSectionCodeNew = {
				"Title": $("#add-section-name").val(),
				"Content": $("#add-section-name-text").val(),
				"Image": $("#add-section-name-images img").attr("src")
			};


			$.post(SaveSectionServiceUrl + $(".is-wrapper").data("mid"), customSectionCodeNew, function (data) {
				if (data) {
					data = jQuery.parseJSON(data);
				}
				if (data && data["Success"]) {
					var currData = {
						"Title": data["Results"]["Title"],
						"Image": data["Results"]["Image"],
						"ID": data["Results"]["ID"]
					};
					customSectionCode.push(currData);


					customSectionCodeNew = currData;
					customSectionCodeNew["ID"] = data["Results"]["ID"];

					$("#add-section-Update-list").change();
					$("#save-section-name-box").addClass("success").delay(1000).queue(function () {
						$(this).fadeOut(function () {
							$(this).removeClass("success");
							closePanel();
						}).dequeue();
					});
				} else {
					var message = $("#save-section-name-box .message");
					message.after(message.clone(false));
					message.remove();
					$("#save-section-name-box .message").stop().addClass("error").html(data["Message"]).fadeIn(200).delay(3000).fadeOut(200);
					$("#save-section-name-box").removeClass("success loading");

				}

			})


		}
		var closePanel = function () {
			$("#save-section-name-box").removeClass("success");
			$("#add-section-name").val("");
			$("#add-section-name-text").val("");
			$("#save-section-name-box .text").show();
			$("#add-section-name-button").show();
			$("#save-section-name-box .message").hide().removeClass("error");
			$("#add-section-name-images").html("");
			$("html").css({
				"overflow": "",
				"padding-right": ''
			});
		}

		$("#add-section-name-button").on("click", function (event) {
			event.preventDefault();
			if ($("#add-section-name").val()) {
				addsectionCode();
			} else {
				$("#add-section-name").addClass("error").focus();
			}
		})

		$("#add-section-name").on("change", function () {
			if ($(this).val()) {
				$(this).removeClass("error");
			} else {
				$(this).addClass("error")
			}
		})

		$("#cancel-section-name-button").unbind().on("click", function (event) {
			event.preventDefault();
			$("#save-section-name-box").fadeOut(function () {
				closePanel();
			});
		})

	
		if(typeof AOS =="undefined"){
				$("#tabElementAnimation").off().attr("title","Please Activate CSS3 Animations").css("opacity","0.4").on("click",function(){ return false; });
		}


	}
	saveCustomSectionCode();


	//is-modal image link
	function modalImageLinkSetting() {
		$(".is-modal.imagelink").each(function () {
			var box = $(this);

			box.find(".image-src").before(`<div class="pb-10">Link Type:<select id="image-link-type"><option value="link">Link</option><option value="mail">Mailto</option><option value="tel">Tel</option><option value="image">Image (Lightbox)</option><option value="youtube">YouTube Video (Lightbox)</option><option value="vimeo">Vimeo Video (Lightbox)</option><option value="html5">HTML5 Video (Lightbox)</option><option value="map">Google Maps (Lightbox)</option><option value="content">Content (Lightbox)</option><option value="modal">Modal</option></select><div>`);

			box.find(".input-link").after(`<div class="VideoAutoPlay" style="margin-top: 10px;">Auto Play: <br/> <input class="input-AutoPlay" type="checkbox"></div>`);

			box.find(".input-ok").parent().before(`<div class="group-box"><input id="image-input-group" type="text" placeholder="Lightbox Group"></div>`);


			$("#image-link-type").on("change", function () {
				var v = $(this).val();
				if (v != "link") {
					box.find(".input-newwindow").parent().hide();
				} else {
					box.find(".input-newwindow").parent().show();
				}
				box.find(".group-box").hide();

				var n = v.replace(v[0], v[0].toUpperCase());
				if (n == "Html5") {
					n = "MP4 Video"
				}

				box.find(".input-link").val("").attr("placeholder", n + " URL");
				box.find(".input-link-box").removeClass("two");
				box.find(".VideoAutoPlay").hide();



				if (v == "link") {
					box.find(".linkUrlButton").show();
					box.find(".linkImageButton").show().removeClass("icon-img icon-video").attr("title", "File");
					box.find(".input-link-box").addClass("two");
				} else if (v == "mail") {
					box.find(".input-link").val("mailto:");
					box.find(".linkUrlButton").hide();
					box.find(".linkImageButton").hide();
				} else if (v == "tel") {
					box.find(".input-link").val("tel:");
					box.find(".linkImageButton").hide();
					box.find(".linkUrlButton").hide();
				} else if (v == "image") {
					box.find(".linkUrlButton").hide();
					box.find(".linkImageButton").show().removeClass("icon-video").addClass("icon-img").attr("title", "Image");
					box.find(".group-box").show();
				} else if (v == "html5") {
					box.find(".linkUrlButton").hide();
					box.find(".linkImageButton").show().removeClass("icon-img").addClass("icon-video").attr("title", "Video");
					box.find(".VideoAutoPlay").show();
					//	box.find(".group-box").show();
				} else if (v == "content") {
					box.find(".input-link").val("#");
					box.find(".input-url").attr("placeholder", "Content ID");
					box.find(".linkUrlButton").hide();
					box.find(".linkImageButton").hide();
				}else if (v == "modal") {
					box.find(".input-link").val("#");
					box.find(".input-url").attr("placeholder", "Modal ID");
					box.find(".linkUrlButton").show();
					box.find(".linkImageButton").hide();
				} else {
					box.find(".linkUrlButton").hide();
					box.find(".linkImageButton").hide();
					//	box.find(".group-box").show();
				}
			})

			box.find(".input-ok").on("mouseup", function () {
				if ($("#image-link-type").val() != "link" && $("#link-type-select").val() != "mail" && $("#link-type-select").val() != "tel" && $("#link-type-select").val() != "modal") {
					setTimeout(function () {
						jQuery("#divImageTool").data('active').parent("a").addClass("is-lightbox").attr("data-ilightbox", $("#image-link-type").val());
						if ($("#image-link-type").val() == "image" && $("#image-input-group").val()) {
							jQuery("#divImageTool").data('active').parent("a").attr("data-group", $("#image-input-group").val())
						} else {
							jQuery("#divImageTool").data('active').parent("a").removeAttr("data-group")
						}

						if ($("#image-link-type").val() == "html5" && box.find(".input-AutoPlay").is(':checked')) {
							jQuery("#divImageTool").data('active').parent("a").attr("data-autoplay", "true");
						} else {
							jQuery("#divImageTool").data('active').parent("a").removeAttr("data-autoplay");
						}
						moduleEditModeJs("minilightbox", $(".is-wrapper"));
					}, 100);
				} else {
					setTimeout(function () {
						jQuery("#divImageTool").data('active').parent("a").removeClass("is-lightbox").removeAttr("data-ilightbox").removeAttr("data-group");
					}, 100)
				}
			})
			$("#divImageTool button.image-link").on("mouseup", function () {
				var ilightbox = jQuery("#divImageTool").data('active').parent("a").attr("data-ilightbox");
				if (!ilightbox && jQuery("#divImageTool").data('active').parent("a").attr("href")) {
					if (jQuery("#divImageTool").data('active').parent("a").attr("href").indexOf("mailto:") != -1) {
						ilightbox = "mail"
					}
					if (jQuery("#divImageTool").data('active').parent("a").attr("href").indexOf("tel:") != -1) {
						ilightbox = "tel"
					}
				}
				if(ilightbox){
					$('#image-link-type option[value="' + ilightbox + '"]').prop("selected", "selected").siblings().prop("selected", false);
				}else{
					 var AHref = jQuery("#divImageTool").data('active').parent("a").attr("href") ;
				
					 if(AHref && AHref.length > 1 && AHref.indexOf("#") == 0 && $(".modalbox"+AHref).length){
						$('#image-link-type option[value="modal"]').prop("selected", "selected").siblings().prop("selected", false).change();
					 }else{
						$('#image-link-type option').eq(0).prop("selected", "selected").siblings().prop("selected", false).change();
					}

					$('#image-link-type option').eq(0).prop("selected", "selected").siblings().prop("selected", false);
				};


				$("#image-input-group").val(jQuery("#divImageTool").data('active').parent("a").attr("data-group"));

				if (jQuery("#divImageTool").data('active').parent("a").attr("data-autoplay")) {
					box.find(".VideoAutoPlay").show();
					box.find(".input-AutoPlay").prop("checked", "checked");
				} else {
					box.find(".input-AutoPlay").prop("checked", false);
				}


				$('#image-link-type').change();
			})

			$("#divImageTool button.image-edit").off().on("click", function (event) {
				event.preventDefault();
                var $img = jQuery("#divImageTool").data('active');
				
				ImagesEditMediaBox($img.attr("src"),function(url){
					$img.attr("src",url.FilePath);
				})
			})



			box.find(".image-src").hide();
			box.find("#form-upload-larger").parent().hide();

			box.find('input[type="text"]').each(function () {
				$(this).before('<p class="modal-title">' + $(this).attr("placeholder") + ':</p>').removeAttr("style")
			});

			GetLinkSetting(box.find(".input-link"));
			$(".imagelink .input-ok").parent().addClass("control-button");

		})

	}
	//is-modal Create Link
	function modalCreateLinkSetting() {
		$(".is-modal.createlink").each(function () {
			var box = $(this);
			var linktype = "link";
			box.find(".link-src").before(`<div class="pb-10">Link Type:<select id="link-type-select"><option value="link">Link</option><option value="mail">Mailto</option><option value="tel">Tel</option><option value="image">Image (Lightbox)</option><option value="youtube">YouTube Video (Lightbox)</option><option value="vimeo">Vimeo Video (Lightbox)</option><option value="html5">Html5 Video (Lightbox)</option><option value="map">Google Maps (Lightbox)</option><option value="content">Content (Lightbox)</option><option value="modal">Modal</option></select><div>`);

			box.find(".input-title").after(`<div class="VideoAutoPlay" style="margin-top: 10px;">Auto Play: <br/> <input class="input-AutoPlay" type="checkbox"></div>`);


			$("#link-type-select").on("change", function () {
				var v = $(this).val();
				if (v != "link") {
					box.find(".input-newwindow").parent().hide();
				} else {
					box.find(".input-newwindow").parent().show();
				}
				var n = v.replace(v[0], v[0].toUpperCase());

				if (n == "Html5") {
					n = "MP4 Video";
				}
				box.find(".input-url").val("").attr("placeholder", n + " URL");

				box.find(".input-link-box").removeClass("two");
				box.find(".VideoAutoPlay").hide();
				if (v == "link") {
					box.find(".linkUrlButton").show();
					box.find(".linkImageButton").show().removeClass("icon-img icon-video").attr("title", "File");
					box.find(".input-link-box").addClass("two");
				} else if (v == "mail") {
					box.find(".input-url").val("mailto:");
					box.find(".linkUrlButton").hide();
					box.find(".linkImageButton").hide();
				} else if (v == "tel") {
					box.find(".input-url").val("tel:");
					box.find(".linkImageButton").hide();
					box.find(".linkUrlButton").hide();
				} else if (v == "image") {
					box.find(".linkUrlButton").hide();
					box.find(".linkImageButton").show().removeClass("icon-video").addClass("icon-img").attr("title", "Image");
					box.find(".group-box").show();
				} else if (v == "html5") {
					box.find(".linkUrlButton").hide();
					box.find(".linkImageButton").show().removeClass("icon-img").addClass("icon-video").attr("title", "Video");
					box.find(".VideoAutoPlay").show();
				} else if (v == "content") {
					box.find(".input-url").val("#");
					box.find(".input-url").attr("placeholder", "Content ID");
					box.find(".linkUrlButton").hide();
					box.find(".linkImageButton").hide();
				} else if (v == "modal") {
					box.find(".input-url").val("#");
					box.find(".input-url").attr("placeholder", "Modal ID");
					box.find(".linkUrlButton").show();
					box.find(".linkImageButton").hide();
				} else {
					box.find(".linkUrlButton").hide();
					box.find(".linkImageButton").hide();
				}

			})

			box.find(".input-ok").on("mouseup", function () {
				if (linktype == "icon") {
					var cur = jQuery("#divIconTool").data('active').parent();
				} else {
					var cur = jQuery("#divLinkTool").data('active');
				}

				function Delaylightbox() {
					if ($("#link-type-select").val() != "link" && $("#link-type-select").val() != "mail" && $("#link-type-select").val() != "tel" && $("#link-type-select").val() != "modal") {
						cur.addClass("is-lightbox").attr("data-ilightbox", $("#link-type-select").val());
						moduleEditModeJs("minilightbox", $(".is-wrapper"));
					} else {
						cur.removeClass("is-lightbox").removeAttr("data-ilightbox");
					}

					if ($("#link-type-select").val() == "html5" && box.find(".input-AutoPlay").is(':checked')) {
						cur.attr("data-autoplay", "true");
					} else {
						cur.removeAttr("data-autoplay");
					}
				}
				if (cur) {
					Delaylightbox();
				}
				setTimeout(() => {
					var a = window.getSelection().anchorNode;
					if (a && a.tagName && a.tagName.toLowerCase() == "a") {
						cur = $(a);
						Delaylightbox();
					}
				}, 200);
			})

			$("#divIconTool .icon-link,#divLinkTool button,.cell-tool-option-container .cell-link").on("mouseup", function () {
				if ($(this).parent().attr("id") == "divIconTool") {
					linktype = "icon";
				} else {
					linktype = "link";
				}
				if (jQuery("#divIconTool").data('active') || jQuery("#divLinkTool").data('active')) {
					if (linktype == "icon") {
						var ilightbox = jQuery("#divIconTool").data('active').parent().attr("data-ilightbox");
					} else {
						var ilightbox = jQuery("#divLinkTool").data('active').attr("data-ilightbox");
					}
				}
				if ($(this).hasClass("cell-link")) {
					ilightbox = false;
					if (window.getSelection().rangeCount == 0) return;
					var curr = window.getSelection().getRangeAt(0).commonAncestorContainer;
					
					if (typeof curr == "object" && curr.nodeType == 3) {
						var ael = curr.parentNode;
					} else {
						var ael = curr;
					}
					if (ael.nodeName.toLowerCase() == 'a') {
						ilightbox = $(ael).attr("data-ilightbox");
					}
				} else {
					if (!ilightbox && jQuery("#divLinkTool").data('active')) {
						if (jQuery("#divLinkTool").data('active').attr("href").indexOf("mailto:") != -1) {
							ilightbox = "mail"
						}
						if (jQuery("#divLinkTool").data('active').attr("href").indexOf("tel:") != -1) {
							ilightbox = "tel"
						}
					}
				}
				var v = box.find(".input-url").val();

				if(ilightbox){
					$('#link-type-select option[value="' + ilightbox + '"]').prop("selected", "selected").siblings().prop("selected", false).change();
				}else{

					if (linktype == "icon") {
						var AHref = jQuery("#divIconTool").data('active').parent().attr("href") ;
					} else {
						var AHref = jQuery("#divLinkTool").data('active').attr("href") ;
					}
					if(AHref && AHref.length > 1 && AHref.indexOf("#") == 0 && $(".modalbox"+AHref).length){
						$('#link-type-select option[value="modal"]').prop("selected", "selected").siblings().prop("selected", false).change();
					}else{
						$('#link-type-select option').eq(0).prop("selected", "selected").siblings().prop("selected", false).change();
					}
				}

				box.find(".input-url").val(v);

				if (jQuery("#divLinkTool").data('active') && jQuery("#divLinkTool").data('active').attr("data-autoplay")) {
					box.find(".VideoAutoPlay").show();
					box.find(".input-AutoPlay").prop("checked", "checked");
				} else {
					box.find(".input-AutoPlay").prop("checked", false);
				}

			});


			box.find('input[type="text"]').each(function () {
				if ($(this).attr("placeholder") == "Url") {
					$(this).attr("placeholder", "URL")
				};
				$(this).before('<p class="modal-title">' + $(this).attr("placeholder") + ':</p>').removeAttr("style");
			});

			GetLinkSetting(box.find(".input-url"));
			$(".createlink .input-ok").parent().addClass("control-button");

		})
	}

	//Video modal
	function contentVideoSetting() {
		$("#divIframeTool").append(`<button title="Source" class="video-link" style="width:50px;height:50px;display:none"><svg class="is-icon-flex" style="fill:rgba(0, 0, 0, 0.65);width:17px;height:17px;"><use xlink:href="#ion-link"></use></svg></button>`)

		$(".d-wrapper").on("click", ".embed-responsive", function () {
			if ($(this).find("video").length) {
				$("#divIframeTool .iframe-link").hide();
				$("#divIframeTool .video-link").show();
			} else {
				$("#divIframeTool .iframe-link").show();
				$("#divIframeTool .video-link").hide();
			}
			$(".is-modal.videolink").data("active", $(this));
		})
		$("#divIframeTool .video-link").on("click", function () {

			var video = $(".is-modal.videolink").data("active").find("video");

			if (video.find('source[type="video/mp4"]').length) {
				$(".is-modal.videolink .video-mp4-src").val(video.find('source[type="video/mp4"]').attr("src"))
			} else {
				$(".is-modal.videolink .video-mp4-src").val("")
			}
			if (video.find('source[type="video/ogg"]').length) {
				$(".is-modal.videolink .video-ogg-src").val(video.find('source[type="video/ogg"]').attr("src"))
			} else {
				$(".is-modal.videolink .video-ogg-src").val("")
			}
			if (video.find('source[type="video/webm"]').length) {
				$(".is-modal.videolink .video-webm-src").val(video.find('source[type="video/webm"]').attr("src"))
			} else {
				$(".is-modal.videolink .video-webm-src").val("")
			}
			if (video.attr("poster")) {
				$(".is-modal.videolink .video-poster-src").val(video.attr("poster"))
			} else {
				$(".is-modal.videolink .video-poster-src").val("")
			}
			if (video.attr("autoplay") || video.attr("autoplay2")) {
				$(".is-modal.videolink .video-autoplay").prop("checked", true)
			} else {
				$(".is-modal.videolink .video-autoplay").prop("checked", false)
			}
			if (video.attr("controls")) {
				$(".is-modal.videolink .video-controls").prop("checked", true)
			} else {
				$(".is-modal.videolink .video-controls").prop("checked", false)
			}
			if (video.attr("loop")) {
				$(".is-modal.videolink .video-loop").prop("checked", true)
			} else {
				$(".is-modal.videolink .video-loop").prop("checked", false)
			}
			if (video.attr("muted")) {
				$(".is-modal.videolink .video-muted").prop("checked", true)
			} else {
				$(".is-modal.videolink .video-muted").prop("checked", false)
			}
			if (video.attr("preload")) {
				$('.is-modal.videolink .video-preload option[value="' + video.attr("preload") + '"]').attr("selected", "selected").siblings().prop("selected", false);
			} else {
				$('.is-modal.videolink .video-preload option').prop("selected", false);
			}
			$(".is-modal.videolink").addClass("active").siblings(".is-modal").removeClass("active");

		})

		$(".is-modal.iframelink").after(`
		<div class="is-modal videolink">
		<div class="is-modal-overlay" style="position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(255,255,255,0.3);z-index:-1;"></div>
		<div style="max-width:550px;">
		<p class="modal-title">MP4 Source:</p>
		<input class="video-mp4-src" type="text" placeholder="MP4 Source" style="width: 100%; margin-bottom: 12px; display: block;">
		<p class="modal-title">OGG Source:</p>
		<input class="video-ogg-src" type="text" placeholder="OGG Source" style="width: 100%; margin-bottom: 12px; display: block;">
		<p class="modal-title">WEBM Source:</p>
		<input class="video-webm-src" type="text" placeholder="WEBM Source" style="width: 100%; margin-bottom: 12px; display: block;">
		<div class=" mb-20">
		<p class="modal-title">Poster:</p>
		<input class="video-poster-src" type="text" placeholder="Poster" style="width: 100%; margin-bottom: 12px; display: block;">
		</div>
		<label class="mr-10"><input type="checkbox" class="video-autoplay"> Auto Play</label>
		<label class="mr-10"><input type="checkbox" class="video-controls"> Controls</label>
		<label class="mr-10"><input type="checkbox" class="video-loop"> Loop</label>
		<label class="mr-10"><input type="checkbox" class="video-muted"> Muted</label>
		<p class="mb-0"><label>Preload</label>
		<select class="video-preload">
		<option value="auto">Auto</option>
		<option value="meta">Meta</option>
		<option value="none">None</option>
		</select></p>	
		<div style="text-align:right"><button title="Cancel" class="input-cancel classic-secondary">Cancel</button><button title="Ok" class="input-ok classic-primary">Ok</button></div>
		</div>
		</div>	
		`)
		$(".is-modal.videolink .input-cancel").on("click", function () {
			$(".is-modal.videolink").removeClass("active");
		})
		$(".is-modal.videolink .input-ok").on("click", function () {
			var video = $(".is-modal.videolink").data("active").find("video");
			var newvideo = $("<video>");
			newvideo.attr("class", video.attr("class"));
			newvideo.attr("style", video.attr("style"));
			newvideo.attr("id", video.attr("id"));
			if ($(".is-modal.videolink .video-mp4-src").val()) {
				newvideo.append('<source src="' + $(".is-modal.videolink .video-mp4-src").val() + '" type="video/mp4"/>')
			}
			if ($(".is-modal.videolink .video-ogg-src").val()) {
				newvideo.append('<source src="' + $(".is-modal.videolink .video-ogg-src").val() + '" type="video/ogg"/>')
			}
			if ($(".is-modal.videolink .video-webm-src").val()) {
				newvideo.append('<source src="' + $(".is-modal.videolink .video-webm-src").val() + '" type="video/webm"/>')
			}
			if ($(".is-modal.videolink .video-poster-src").val()) {
				newvideo.attr("poster", $(".is-modal.videolink .video-poster-src").val())
			}
			if ($(".is-modal.videolink .video-autoplay").is(":checked")) {
				newvideo.attr("autoplay2", "autoplay2");		
			}
			if ($(".is-modal.videolink .video-controls").is(":checked")) {
				newvideo.attr("controls", "controls")
			}
			if ($(".is-modal.videolink .video-loop").is(":checked")) {
				newvideo.attr("loop", "loop")
			}
			if ($(".is-modal.videolink .video-muted").is(":checked")) {
				newvideo.attr("muted", true)
			}
			if ($(".is-modal.videolink .video-preload").val() && $(".is-modal.videolink .video-preload").val() != "auto") {
				newvideo.attr("preload", $(".is-modal.videolink .video-preload").val())
			}
			video.before(newvideo);
			video.remove();
			$(".is-modal.videolink").removeClass("active");
			jQuery(".is-wrapper").data("contentbox").settings.onChange();

		})

		GetLinkSetting($(".is-modal.videolink .video-mp4-src"));
		GetLinkSetting($(".is-modal.videolink .video-ogg-src"));
		GetLinkSetting($(".is-modal.videolink .video-webm-src"));
		GetLinkSetting($(".is-modal.videolink .video-poster-src"));

		$(".is-modal.videolink .linkUrlButton").hide();
		$(".is-modal.videolink .video-mp4-src,.is-modal.videolink .video-ogg-src,.is-modal.videolink .video-webm-src").siblings(".link-button").find(".linkImageButton").addClass("icon-video");
		$(".is-modal.videolink .video-poster-src").siblings(".link-button").find(".linkImageButton").addClass("icon-img").attr("title","Image");
	 
		
	}

	//Link Setting
	function GetLinkSetting(e) {
		e.wrap('<div class="input-link-box"></div>')
		var linkUrlButton = $('<button type="button" class="linkUrlButton" title="Link"></button>');
		var linkImageButton = $('<button type="button" class="linkImageButton" title="File"></button>');
		var boxbutton = $('<div class="link-button"></div>');
		var box = e.parents(".is-modal");
		var list = LinkNavSelect.clone();
		boxbutton.append(linkUrlButton);
		boxbutton.append(linkImageButton);
		e.after(boxbutton);
		e.after(list);

		linkImageButton.on("click", function () {
			var val = e.val();
			$("#imgaesTEXTURL").val(val);
			var imgStr = /\.(jpg|jpeg|png|bmp|gif|webp|tif)$/;
			if (val && imgStr.test(val.toLowerCase())) {
				$("#imgaesTEXTURL").siblings(".img").css("background-image", "url('" + $(".elm-active").attr("src") + "')");
			} else {
				$("#imgaesTEXTURL").siblings(".img").css("background-image", "");
			}

			$(".imgaes-setting-option .loadimg").hide();
			var type = false;
			if ($(this).hasClass("icon-video")) {
				type = "video";
			}
			if ($(this).hasClass("icon-img")) {
				type = "image";
			}
			$("#DnnMediaBox").data("active", e);

			DisplayMediaIFrame(getMediaUrl({
				mimid: $(".d-wrapper").eq(0).data("mid"),
				FileType: type
			}), "link");



		})
		linkUrlButton.on("click", function () {
			var h = $(window).height() + $(window).scrollTop() - $(this).parent().offset().top - $(this).parent().height() - 5;

			 if($(this).parents(".is-modal").find("#image-link-type,#link-type-select").val() == "modal"){

				if(!$(this).parent().siblings(".modal-list-select").length){
					$(this).parent().after('<ul class="modal-list-select"></ul>');
				}
				var modalList = $(this).parent().siblings(".modal-list-select").empty();
					$(".content-builder .modalbox").each(function(){
						modalList.append('<li data-value="#'+$(this).attr("id")+'">'+$(this).find(".modalbox-title").text()+'</li>');
					});

					modalList.css("max-height", h).slideDown();

					modalList.find("li").on("click", function () {
						$(this).parent().siblings('input[type="text"]').val($(this).data("value")).focus();
						$(this).parent().slideUp();
					})

			 }else{
				$(this).parent().siblings(".link-list-select").css("max-height", h).slideDown();
			}

		})


		list.on("click", "li", function () {
			$(this).parent().siblings('input[type="text"]').val($(this).data("value")).focus();
			$(this).parent().slideUp();
		})
		box.on("click", function (e) {
			if (!$(e.target).closest(".input-link,.linkUrlButton,.link-list-select,li").length) {
				$(".link-list-select").slideUp();
				$(".modal-list-select").slideUp();
			}
		})
	}
	//section save
	function SectionSaveSetting(){
		jQuery(".content-builder").on("click", ".is-section-save", function () {
			$("html").css({
				"overflow": "hidden",
				"padding-right": window.innerWidth - $(window).width()
			});
			$("#save-section-name-box").fadeIn().addClass("loading");
			if (typeof html2canvas != undefined) {
				var is_section = $(this).parents(".is-section").eq(0).clone(false);

				var clone_section = $("<div class=\"d-wrapper\" style=\"position: fixed;background-color: #fff; width: 100%;overflow: hidden;left: 0;top:100%;\"></div>");
				clone_section.append(is_section);

				$("body").append(clone_section);

				if (is_section.find(".sico").length) {
					is_section.find(".sico svg").each(function () {
						var color = $(this).css("color");
						var size = $(this).width();
						var svgbox = $(".section-svg-" + $(".is-wrapper").data("mid")).find($(this).find("use").attr("xlink:href"));
						$(this).html(svgbox.html());
						$(this).attr({
							"width": size,
							"height": size,
							"viewBox": svgbox.attr("viewBox"),
							"fill": color
						})
						$(this).find("*").attr("fill", color);
					});
					is_section.find(".icon-svg svg").each(function () {
						var color = $(this).css("color");
						$(this).find("*").removeAttr("style");
						$(this).find("*").attr("stroke", color);
						$(this).find("*").attr("fill", "none");
					});

				}

				$("#divFb,#divCb,#save-section-name-box,.mobilemenu-main,.personalBarContainer,.editBarFrameContainer,.is-section-tool,.dng-wrapper").attr("data-html2canvas-ignore", true);

				clone_section.find(".swiper-wrapper,.swiper-slide").css("transform", "translate3d(0px, 0px, 0px)");
				clone_section.find('.swiper-container.swiper-container-fade .swiper-slide').css({
					"transform": "translate3d(0px, 0px, 0px)",
					"opacity": 1
				});

				clone_section.find(".is-row-tool").remove();

				setTimeout(function () {
					html2canvas(clone_section.get(0), {
						logging: false,
						//	useCORS: true,
						//	allowTaint:true,
						scale: 0.7
					}).then(function (canvas) {
						var base64encodedstring = canvas.toDataURL("image/jpeg", 0.8);
						if (base64encodedstring) {
							$("#add-section-name-images").html(`<img src="${base64encodedstring}" />`);
						} else {
							$("#add-section-name-images").html(`<img src="data:image/svg+xml,%3Csvg viewBox='0 0 370 277' style='background:%23f3f3f3;' wdith='370' xmlns='http://www.w3.org/2000/svg'/%3E" />`);
						}

						$("#save-section-name-box").removeClass("loading");
						$("#add-section-name").focus();
						//	clone_section.remove();
					});
				}, 500)
			} else {
				$("#save-section-name-box").removeClass("loading");

			}

			$(this).parents(".is-section").addClass("d-save-section");
			saveHTML($(this).parents(".content-builder"), "section");
		})
	}
	//Section code
	function SectionCodeSetting(){
		jQuery(".content-builder").on("click", ".is-section-code", function () {
			var $modal = jQuery('.is-modal.viewhtmlformatted');
			$modal.find('#ifrHtmlFormatted').attr('src', 'about:blank')
			$modal.addClass('is-modal-small active');
			isSectionCode = $(this).parents(".is-section");
			isSectionCode.addClass("d-section-code");

			var sHTML = $($(".is-wrapper").data('contentbox').html()).filter(".d-section-code").removeClass("d-section-code");
			$(".d-section-code").removeClass("d-section-code");

			sHTML.find(".custom-module").each(function () {
				$(this).empty();
			//	$(this).attr("data-html", false);
				$(this).addClass("loading");
			})
			if (sHTML.hasClass("section-slider")) {
				EmptySectionSlider(sHTML);
			}

			$modal.find('textarea').val(sHTML[0].outerHTML);

			$modal.find('#ifrHtmlFormatted').attr('src', SkinPath + 'Resource/vendor/content-builder/contentbuilder/html_small2.html?1')
		})

	}

	// Change Cell Setting
	function ChangeCellSetting(){
		jQuery('.cell-duplicate').after(`<button title="Duplicate" class="cell-duplicate-clone" style="display: block;"><svg class="is-icon-flex" style="width:14px;height:14px;"><use xlink:href="#ion-ios-photos-outline"></use></svg></button>`);
		jQuery('.cell-duplicate').remove();

		var changecellClassName = function (name, item) {

			item = Math.max(Math.min(item, 12), 1);
			if (name.indexOf("col-xl-") != -1) {
				name = jQuery.trim(name.replace(/(col-xl-)(.+?(\s|$))/, "col-xl-" + item + " "));
			} else if (name.indexOf("col-lg-") != -1) {
				name = jQuery.trim(name.replace(/(col-lg-)(.+?(\s|$))/, "col-lg-" + item + " "));
			} else if (name.indexOf("col-md-") != -1) {
				name = jQuery.trim(name.replace(/(col-md-)(.+?(\s|$))/, "col-md-" + item + " "));
			} else if (name.indexOf("col-sm-") != -1) {
				name = jQuery.trim(name.replace(/(col-sm-)(.+?(\s|$))/, "col-sm-" + item + " "));
			} else if (name.indexOf("col-") != -1) {
				name = jQuery.trim(name.replace(/(col-)(.+?(\s|$))/, "col-" + item + " "));
			}
			return name;
		}
		var getcellClassItem = function (name) {
			if (name.indexOf("col-xl-") != -1) {
				return parseInt(name.split("col-xl-")[1].split(" ")[0]);
			} else if (name.indexOf("col-lg-") != -1) {
				return parseInt(name.split("col-lg-")[1].split(" ")[0]);
			} else if (name.indexOf("col-md-") != -1) {
				return parseInt(name.split("col-md-")[1].split(" ")[0]);
			} else if (name.indexOf("col-sm-") != -1) {
				return parseInt(name.split("col-sm-")[1].split(" ")[0]);
			} else if (name.indexOf("col-") != -1) {
				return parseInt(name.split("col-")[1].split(" ")[0]);
			}
			return 0;
		}

		jQuery('.cell-duplicate-clone').on('click', function (e) {
			var $block = jQuery('#divCellTool').data('active');
			if (!$block) return;
			jQuery('.cell-active').removeClass('cell-active');
			jQuery('.row-active').removeClass('row-active');
			$block.addClass('cell-active');
			var wrap = false;
			var width = 0;
			$block.parent().children().not('.is-row-tool').each(function () {
				width += $(this).innerWidth();
			})
			if (width > $block.parent().innerWidth()) {
				wrap = true;
			}
			$block.clone().insertBefore($block).removeClass('cell-active');

			if ($block.attr("class")) {
				var name = $block.attr("class");

				if ($block.parent().children().not('.is-row-tool').length <= 4 && !wrap) {
					var item = 12 / $block.parent().children().not('.is-row-tool').length;
					$block.attr("class", changecellClassName(name, item));
					$block.parent().children().not('.is-row-tool').each(function () {
						var childrenname = $(this).attr("class");
						$(this).attr("class", changecellClassName(childrenname, item));
					})
				}
			}

			jQuery(".is-wrapper").data("contentbox").setup();
			jQuery(".is-wrapper").data("contentbox").settings.onRender();
			jQuery(".is-wrapper").data("contentbox").settings.onChange();



		});

		jQuery('.cell-increase').after(`<button title="Increase" data-dec="plus" class="cell-increase-clone" style="display: inline-block;"><svg class="is-icon-flex"><use xlink:href="#icon-increase"></use></svg></button>`);

		jQuery('.cell-decrease').after(`<button title="Decrease" data-dec="minus" class="cell-decrease-clone" style="display: inline-block;"><svg class="is-icon-flex"><use xlink:href="#icon-decrease"></use></svg></button>`);
		jQuery('.cell-increase,.cell-decrease').remove();

		jQuery('.cell-increase-clone,.cell-decrease-clone').on('click', function (e) {
			cellolditem = 0;
			var $block = jQuery('#divCellTool').data('active');
			if (!$block) return;
			var name = $block.attr("class");
			var blockItem = getcellClassItem(name);
			var dec = $(this).data("dec");
			var $nextbox = false;
			if ($block.next(":not(.is-row-tool)").length) {
				$nextbox = $block.next();
				var afterDom = $nextbox.prevAll();
				var afterDomItem = 0;
				$(afterDom.toArray().reverse()).each(function () {
					if ($(this).attr("class")) {
						var i = getcellClassItem($(this).attr("class"));
						if (afterDomItem + i > 12) {
							afterDomItem = i;
						} else {
							afterDomItem += i;
						}
					}
				})
				afterDomItem += getcellClassItem($nextbox.attr("class"));
				if (afterDomItem > 12) {
					if ($block.prev(":not(.is-row-tool)").length) {
						$nextbox = $block.prev();
					}
				}
			} else if ($block.prev(":not(.is-row-tool)").length) {
				$nextbox = $block.prev();
			}
			if ($nextbox) {
				var nextname = $nextbox.attr("class");
				var nextItem = getcellClassItem(nextname);
				if (!blockItem || (nextItem == 1 && dec == "plus") || (blockItem == 11 && dec == "plus") || (dec != "plus" && blockItem == 1)) {
					return false;
				}
				nextname = changecellClassName(nextname, dec == "plus" ? nextItem - 1 : nextItem + 1);
				$nextbox.attr("class", nextname);
			}
			blockItem = dec == "plus" ? blockItem + 1 : blockItem - 1;
			name = changecellClassName(name, blockItem);
			$block.attr("class", name);
			jQuery(".is-wrapper").data("contentbox").settings.onChange();
		})

		var cellremove = jQuery('.is-modal.delconfirm button.input-ok');
		cellremove.after(`<button title="Delete" class="classic cell-remove-clone" style="display:none">Delete</button>`);
		//	cellremove.remove();

		var cellremoveclone = jQuery('.cell-remove-clone');

		$(".cell-remove").on("mousedown", function () {
			cellremoveclone.show();
			cellremove.hide();
			
		})
		$(".row-remove,.element-remove,.is-section-remove,.icon-remove").on("mousedown", function () {
			cellremoveclone.hide();
			cellremove.show();
		})

		jQuery('.cell-remove-clone').on('click', function (e) {
			jQuery(".is-modal.delconfirm").removeClass("active");
			var $block = jQuery('#divCellTool').data('active');
			if (!$block) return;
			jQuery('.cell-active').removeClass('cell-active');
			jQuery('.row-active').removeClass('row-active');

			var parent = $block.parent();
			$block.remove();
			if (parent.children().not('.is-row-tool').length <= 4) {
				parent.children().not('.is-row-tool').each(function () {
					var childrenname = $(this).attr("class");
					item = 12 / parent.children().not('.is-row-tool').length;
					$(this).attr("class", changecellClassName(childrenname, item));
				})
			}
			jQuery(".is-wrapper").data("contentbox").settings.onChange();

		})

		cellremoveclone.hide();
		cellremove.show();


	}


	//Custom Module Setting
	function CustomModuleSetting(){
		$("#divCustomModuleTool button").addClass("module-settings");
		$("#divCustomModuleTool").append(`<button class="delete" title="Delete"><svg class="is-icon-flex" style="width:30px;height:30px;"><use xlink:href="#ion-ios-close-empty"></use></svg></button>`);
		$(".is-modal.delconfirm").after(`<div class="is-modal delmodule"><div class="is-modal-overlay" style="position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(255,255,255,0.000001);z-index:-1;"></div><div style="max-width:526px;text-align:center;"><p>Are you sure you want to delete this module?</p><button title="Delete" class="classic module-remove-clone">Delete</button></div></div>`)
		$("#divCustomModuleTool .delete").off().on("click", function () {
			$(".is-modal.delmodule").addClass("active")
		})
		$(".is-modal.delmodule .is-modal-overlay").off().on("click", function () {
			$(".is-modal.delmodule").removeClass("active");
		})
		$(".module-remove-clone").off().on("click", function () {
			$(".custom-module.d-custom-active").remove();
			jQuery(".is-wrapper").data("contentbox").settings.onChange();
			$(".is-modal.delmodule").removeClass("active");
			$("#divCustomModuleTool").hide();
		})
		$(".is-modal.delsectionconfirm").off().on("mouseup", function () {
			$isSection = false;
		})

		$("#divCustomModuleTool .delete").before(`<div class="add-module-console"><button class="add-module-button" data-add="new" title="Add Module"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAARCAMAAAAIRmf1AAAAe1BMVEUAAAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////NgkbwAAAAKHRSTlMAn3CxQOAQ+/j15de6eWAvGxUNBfDryMGspY6JaWNMJyIg0H5sXFQ0mP9ILwAAAItJREFUGNO90EcSwyAQRNERYAHKOVjZse9/QguDqziB/2aq3m6afu1ZTn61uMbQiIK1slAuXMvu/qaNJUombD+NAWNBtmpSCIzpDiphGxXL0CCOvnah8jm2aKH5fBB3ZhJ41Ob6FkLQf032ae7smLkyVr2C6Hw/Q3oO0QxZSbY87SVwm0RNfuFakOsDIRMKGvC5Ue8AAAAASUVORK5CYII=" /></button><button class="add-module-button" data-add="existing" title="Add Existing Module"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAARCAMAAAAfZPc8AAAAe1BMVEUAAAD////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////NgkbwAAAAKHRSTlMAcLGgD0Dg+fblYfHXup15ai8fFevIwayljYddRSciGgXQfnJUUDQHAZDFYgAAAJhJREFUGNOlzFcOwjAQRdGJcXBJ773Q3/5XiCwsEhQQH7k/9uhohmyjTmjb3Dc+JFR447Qq08xDcb7T4ARCBJfxLQ5Qp/bPW4HDIrKACJyBJl158NVKjpR1dY4cksUpsQ8xuYgf5t0Kh0u7BKbv8nvn3zWUUWIljZlcdvg1VFBhh6jx4VU6e4ktiUoBnFp3JpMVG++nZYDpCcqUDXKNnCvYAAAAAElFTkSuQmCC" /></button></div>`);
		
		$("#divCustomModuleTool .add-module-button").on("click",function(event){
			event.preventDefault();
			$(".custom-module.d-custom-active").attr("data-module-desc",$(this).data("add")=="new"?"Add Module":"Add Existing Module");
			$(".custom-module.d-custom-active").data("style",$(this).data("add"));
			$("#divCustomModuleTool button:not(.delete)").eq(0).trigger("click");
		})		



	}

	//Section Tabs
	function sectionTasbsPanel() {
		$("#divElementTool").after(`<div id="divTabsTool" class="is-tool">
		<button title="Add" class="element-add" style="width:35px;height:25px;"><svg class="is-icon-flex" style="fill:rgba(0, 0, 0, 0.8);width:16px;height:16px;"><use xlink:href="#ion-ios-plus-empty"></use></svg></button>

		<button title="Duplicate" class="element-move-left" style="width:35px;height:25px;"><svg class="is-icon-flex" style="fill:rgba(0, 0, 0, 0.7);width:15px;height:15px;"><use xlink:href="#ion-ios-arrow-thin-left"></use></svg></button>
		<button title="Duplicate" class="element-move-right" style="width:35px;height:25px;"><svg class="is-icon-flex" style="fill:rgba(0, 0, 0, 0.7);width:15px;height:15px;"><use xlink:href="#ion-ios-arrow-thin-right"></use></svg></button>

		<button title="Duplicate" class="element-duplicate" style="width:35px;height:25px;"><svg class="is-icon-flex" style="width:10px;height:10px;"><use xlink:href="#ion-ios-photos-outline"></use></svg></button>
		<button title="Delete" class="element-remove" style="width:35px;height:25px;font-size: 11px;"><svg class="is-icon-flex" style="fill:rgba(0, 0, 0, 0.8);width:19px;height:19px;"><use xlink:href="#ion-ios-close-empty"></use></svg></button></div>
		`)

		$(".d-wrapper").on("click", ".section-tabs-list .item,.section-tabs-indexed .item", function () {
			$(".cog-tab-active").removeClass("cog-tab-active");
			var e = $(this).addClass("cog-tab-active");
			e.attr("contenteditable", "true");
			$("#divTabsTool").show().css({
				top: e.offset().top + e.parent().height(),
				left: e.offset().left,
			})

			if (e.siblings(".item").length) {
				$("#divTabsTool .element-remove").show();
			} else {
				$("#divTabsTool .element-remove").hide();
			}
			DisplaySaveButton();
		})
		$("#divTabsTool .element-move-left").on("click", function () {
			var cog = $(".cog-tab-active");
			if(cog.prev().length){
				var cont = cog.parents(".section-tabs-list,.section-tabs-indexed").siblings(".section-tabs-container").find(".is-container").eq(cog.index());
				cog.prev().before(cog);
				cont.prev().before(cont);
			}
			DisplaySaveButton();
		})
		$("#divTabsTool .element-move-right").on("click", function () {
			var cog = $(".cog-tab-active");
			if(cog.next().length){
				var cont = cog.parents(".section-tabs-list,.section-tabs-indexed").siblings(".section-tabs-container").find(".is-container").eq(cog.index());
				cog.next().after(cog);
				cont.next().after(cont);
			}
			DisplaySaveButton();
		})
		$("#divTabsTool .element-duplicate").on("click", function () {
			var cog = $(".cog-tab-active");
			cog.after(cog.clone());
			var cont = cog.parents(".section-tabs-list,.section-tabs-indexed").siblings(".section-tabs-container").find(".is-container").eq(cog.index());
			cont.after(cont.clone());
			_cb.applyBehavior();
			cog.next().click();
			DisplaySaveButton();
		})
		$("#divTabsTool .element-add").on("click", function () {
			var cog = $(".cog-tab-active");
			//cog.after(cog.clone().text("item " + (cog.index() + 2)));
			cog.after(cog.clone(false));
			var cont = cog.parents(".section-tabs-list,.section-tabs-indexed").siblings(".section-tabs-container").find(".is-container").eq(cog.index());
			cont.after('<div class="is-container is-builder"></div>');
		//	jQuery(".is-wrapper").data("contentbox").setup();
			_cb.checkEmpty();

			cog.next().click();
			DisplaySaveButton();
		})
		$("#divTabsTool .element-remove").on("click", function () {
			if (confirm("Are you sure you want to delete this item?")) {
				var cog = $(".cog-tab-active");
				cog.parents(".section-tabs-list,.section-tabs-indexed").siblings(".section-tabs-container").find(".is-container").eq(cog.index()).remove();


				var cl = cog.prev();
				if (!cl.length) {
					cl = cog.next();
				}
				cog.remove();
				cl.click();
				$("#divTabsTool").hide();
				DisplaySaveButton();
			}
		})
	}

 	//Section Slider
	function sectionSliderPanel() {
		//section slider
		jQuery(".d-wrapper").on('mouseenter mouseleave', ".is-section", function (e) {
			$isSection = jQuery(this);
			if ($isSection.hasClass("section-slider")) {
				$("#slider-delete,#slider-duplicate,#slider-add,#slider-move-left,#slider-move-right").show();
			} else {
				$("#slider-delete,#slider-duplicate,#slider-add,#slider-move-left,#slider-move-right").hide();
			}
			if ($isSection.children().children(".is-box:not(.swiper-slide-duplicate)").length <= 1) {
				$("#slider-delete").hide();
			}
		});
		$("#lnkeditbox").after(`
		<div  id="slider-duplicate" title="Duplicate" style="display:inline-block;width:40px;height:40px;background: rgb(154, 205, 50);line-height: 40px;">
		<svg class="is-icon-flex" style="width:16px;height:16px;fill:rgba(255,255,255,1);"><use xlink:href="#ion-ios-photos-outline"></use></svg>
		</div>
		<div  id="slider-add" title="Duplicate" style="display:inline-block;width:40px;height:40px;background: rgb(57, 205, 50);line-height: 40px;">
		<svg class="is-icon-flex" style="width:27px;height:27px;fill:rgba(255,255,255,1);"><use xlink:href="#ion-ios-plus-empty"></use></svg>
		</div>
		<div  id="slider-move-left" title="Move Left" style="display:inline-block;width:40px;height:40px;background: rgb(105, 171, 0);line-height: 39px;">
		<svg class="is-icon-flex" style="width:27px;height:27px;fill:rgba(255,255,255,1);"><use xlink:href="#ion-ios-arrow-thin-left"></use></svg>
		</div>
		<div  id="slider-move-right" title="Move Right" style="display:inline-block;width:40px;height:40px;background: rgb(105, 171, 0);line-height: 39px;">
		<svg class="is-icon-flex" style="width:27px;height:27px;fill:rgba(255,255,255,1);"><use xlink:href="#ion-ios-arrow-thin-right"></use></svg>
		</div>
		<div id="slider-delete" title="Delete" style="display:inline-block;width:40px;height:40px;background: rgb(247, 99, 46);line-height: 40px;">
		<svg class="is-icon-flex" style="width:35px;height:35px;fill:rgba(255,255,255,1);"><use xlink:href="#ion-ios-close-empty"></use></svg>
		</div>
		`)

		$("#slider-duplicate").on("click", function () {
			if(typeof $isSection[0].swiper != undefined){
				var newsisbox = $isbox.clone().removeClass("swiper-slide-next swiper-slide-duplicate-prev swiper-slide-active").removeAttr("data-swiper-slide-index");;
				$isSection[0].swiper.addSlide($isbox.index(), newsisbox);
				$isSection[0].swiper.updateSlides();
				$(".is-wrapper").data("contentbox").setup();
				$isSection[0].swiper.slideTo($isbox.index());
				jQuery(".is-wrapper").data("contentbox").settings.onChange();
			}
		})
		$("#slider-add").on("click", function () {
			if(typeof $isSection[0].swiper != undefined){
				$isSection[0].swiper.appendSlide(`<div class="is-box swiper-slide"><div class="is-boxes"><div class="is-box-centered"><div class="is-container"></div></div></div></div>`);
				$isSection[0].swiper.updateSlides();
				$isSection[0].swiper.slideTo($isSection[0].swiper.slidesGrid.length);
				$(".is-wrapper").data("contentbox").setup();
				jQuery(".is-wrapper").data("contentbox").settings.onChange();
			}
		})
		$("#slider-delete").on("click", function () {
			if (confirm("Are you sure you want to delete this item?")) {
				if(typeof $isSection[0].swiper != undefined){
					$isSection[0].swiper.removeSlide($isbox.index());
					$isSection[0].swiper.updateSlides();
				}
				$(".is-wrapper").data("contentbox").setup();
				jQuery(".is-wrapper").data("contentbox").settings.onChange();

			}
		})
		$("#slider-move-left").on("click", function () {
			if(typeof $isSection[0].swiper != undefined){
				$isbox.after($isbox.prev());
				$isSection[0].swiper.updateSlides();
				$isSection[0].swiper.slideTo($isbox.index());
				DisplaySaveButton();
			}
		})
		$("#slider-move-right").on("click", function () {
			if(typeof $isSection[0].swiper != undefined){
				$isbox.before($isbox.next());
				$isSection[0].swiper.updateSlides();
				$isSection[0].swiper.slideTo($isbox.index());
				DisplaySaveButton();
			}
		})

		//section modal
		$(".is-section.section-slider .is-section-tool").append(`<div class="is-section-slider-options" title="Slider Options"></div>`)

		$("#divCb").append(`<div class="is-modal is-modal-slider-options">
				<span class="is-modal-shade"></span>
				<div style="max-width: 400px;">
				<div class="is-settings">
					<label style="margin:0;">
						<input id="section-slider-pagination" type="checkbox"> Pagination
					</label>
				</div>
				<div class="is-settings">
					<label style="margin:0;">
						<input id="section-slider-navigation" type="checkbox"> Navigation
					</label>
				</div>
				<div class="is-settings">
				<label style="margin:0;">
					<input id="section-slider-loop" type="checkbox"> Loop
				</label>
				</div>
				<div class="is-settings">
					<label style="margin:0;">
						<input id="section-slider-autoplay" type="checkbox"> Auto play
					</label>
					
				</div>

				<div class="is-settings autoplay-delay-box" style="display:none" >
				<label style="margin:0;">
					Auto play delay
				</label>
				<label style="margin:0;">
					<input type="number" id="section-slider-autoplay-delay" value="5000" style="width: 100px; display: inline-block;" placeholder="Auto play delay"> ms
				</label>
				</div>		

				<div class="is-settings">
				<label style="margin:0;">
					Speed
				</label>
				<label style="margin:0;">
					<input type="number" id="section-slider-speed" value="300" style="width: 100px; display: inline-block;" placeholder="300"> ms
				</label>
				</div>

				<div class="is-settings">
				<label style="margin:0;">
				<input id="section-slider-fade" type="checkbox"> Fade  
				</label>
				</div>

					
					<button class="classic dnn-input-ok">Ok</button>
				</div>
			</div>`);

		$(".is-modal-shade").on("click", function () {
			$(this).parent(".is-modal").removeClass("active")
		})


		jQuery(".content-builder").on("click", ".is-section-slider-options", function () {
			if($isSection.attr("data-pagination")===false){
				$("#section-slider-pagination").prop("checked", false);
			}else{
				$("#section-slider-pagination").prop("checked", true);
			}
			if($isSection.attr("data-navigation")===false){
				$("#section-slider-navigation").prop("checked", false);
			}else{
				$("#section-slider-navigation").prop("checked", true);
			}
			if($isSection.attr("data-loop")===false){
				$("#section-slider-loop").prop("checked", false);
			}else{
				$("#section-slider-loop").prop("checked", true);
			}
			if($isSection.attr("data-effect")=="fade"){
				$("#section-slider-fade").prop("checked", true);
			}else{
				$("#section-slider-fade").prop("checked", false);
			}
			if($isSection.attr("data-speed")){
				$("#section-slider-speed").val($isSection.attr("data-speed"));
			}else{
				$("#section-slider-speed").val("");
			}

			
			if($isSection.attr("data-autoplay")){
				$("#section-slider-autoplay").prop("checked", true);
				var delay= jQuery.parseJSON($isSection.attr("data-autoplay"))["delay"];
					if(!delay){
						delay=5000;
					}
				$("#section-slider-autoplay-delay").val(delay).parents(".is-settings").show();

			}else{
				$("#section-slider-autoplay").prop("checked", false);
				$("#section-slider-autoplay-delay").parents(".is-settings").hide();
			}
			$(".is-modal-slider-options").addClass('active').siblings(".is-modal").removeClass("active");
		})


		$("#section-slider-autoplay").on("change",function(){
			if($(this).is(":checked")){
				$(".is-modal-slider-options .autoplay-delay-box").show();
			}else{
				$(".is-modal-slider-options .autoplay-delay-box").hide();
			}
		})

		$(".is-modal-slider-options .dnn-input-ok").on("click",function(){
		
			if ($("#section-slider-pagination").is(":checked")) {
				$isSection.removeAttr("data-pagination");
			}else{
				$isSection.attr("data-pagination","false");
			}
			if ($("#section-slider-navigation").is(":checked")) {
				$isSection.removeAttr("data-navigation");
			}else{
				$isSection.attr("data-navigation","false");
			}
			if ($("#section-slider-loop").is(":checked")) {
				$isSection.removeAttr("data-loop");
			}else{
				$isSection.attr("data-loop","false");
			}
			if ($("#section-slider-autoplay").is(":checked")) {
				$isSection.attr("data-autoplay","{\"delay\":"+$("#section-slider-autoplay-delay").val()+"}");
			}else{
				$isSection.removeAttr("data-autoplay");
			}
			if ($("#section-slider-fade").is(":checked")) {
				$isSection.attr("data-effect","fade");
				$isSection.data("effect","fade");
			}else{
				$isSection.removeAttr("data-effect");
				$isSection.data("effect",false);
			}
			if ($("#section-slider-speed").val()) {
				$isSection.data("speed",parseInt($("#section-slider-speed").val()));
			 	$isSection.attr("data-speed",parseInt($("#section-slider-speed").val()));
			}else{
				$isSection.removeData("speed");
				$isSection.removeAttr("data-speed");
			}

			if(typeof $isSection[0].swiper.destroy != undefined){
				$isSection[0].swiper.destroy();
				$isSection.removeClass("swiper-container-slide swiper-container-fade");
				$isSection.find(".swiper-pagination,.swiper-button-next,.swiper-button-prev").remove();
			}
		
			$(this).parents(".is-modal").removeClass("active");
			jQuery(".is-wrapper").data("contentbox").settings.onChange();

		})

	}

	// color picker 
	function ChangeColorPicker(){
		$(".is-modal.pickcolor .more,.is-modal.gradientcolor .more,.is-modal.customcolor .more").each(function(){
			var e = $(this);
			e.find('.input-text').colorpicker2(["show","place"]).on('changeColor', function(ev){
				e.find(".is-color-preview").css("backgroundColor",ev.color.toHex())
			  }).on("blur",function(){
				  if($(this).val()){
				e.find(".input-ok").click();
				}
				}).css("margin-top","14px").after(e.find(".is-color-preview"));

			e.siblings(".colorpicker2").on("mouseup",function(){
				e.find(".input-ok").click();
			})

			e.parent().find("button[data-color]").on("mouseup",function(){
				setTimeout(function(){
					e.find(".input-text").keyup();
				},32)
			})

			
			$(".cmd-box-pickbgcolor, .input-elm-bgcolor > button,.input-elm-color > button").on("mouseup",function(){
				setTimeout(function(){
					e.find(".input-text").keyup();
				},32)
			})
			


		})

	}



});

function DisplayMediaIFrame(u,t){
	var form =  $("#DnnMediaBox").attr("type", t).fadeIn().find("iframe");
	if(form.attr("src") != u){
		$("#MediaAddImages").off();
		form.attr("src", u);
	}
}

function applyMediaImage(url) {

//	$("#MediaAddImages").off();
	url = $("#imgaesTEXTURL").val();
	var type = jQuery("#DnnMediaBox").attr("type");


	

	if (url) {
		if (type == "image") {
			jQuery(".elm-active").attr("src", url).removeAttr("data-src");
		}
		if (type == "link") {
			if($("#DnnMediaBox").data("active")){
				$("#DnnMediaBox").data("active").val(url).focus();
			}else{
				jQuery('.is-modal.imagelink .input-link').val(url).focus();
			}

		} else if (type == "cover") {

			var $activeBox = jQuery(".current-cover-bg");
			if ($activeBox.find(".is-overlay").length == 0) {
				$activeBox.prepend('<div class="is-overlay"></div>')
			}
			var $overlay = $activeBox.find(".is-overlay");
			if ($overlay.find(".is-overlay-bg").length == 0) {
				$overlay.prepend('<div class="is-overlay-bg" style="transform:scale(1.05)" data-bottom-top="transform:translateY(-120px) scale(1.05);" data-top-bottom="transform:translateY(120px) scale(1.05)"></div>');
				$overlay.find(".is-overlay-bg").prepend('<div class="is-overlay-color" style="opacity:0.1"></div>')
			}
			$activeBox.find(".is-overlay-bg").css("background-image", `url('${url}')`).css("background-color", "")
			$activeBox.removeClass("current-cover-bg");
			jQuery(".is-wrapper").data("contentbox").settings.onRender();
			jQuery(".is-wrapper").data("contentbox").settings.onChange();

			if ($("#imgaesLoad").is(":checked")) {

				$activeBox.find(".is-overlay-bg").addClass("bg-Lazy");
			}else{
				$activeBox.find(".is-overlay-bg").removeClass("bg-Lazy");

			}

		} else if (type == "modules") {
			$("#modulesImageVal").val(url).change();
		} else if (type == "setting") {
			$("#inpElmBgImages").val(url).change();
		} else if (type == "mobilebg") {

			$("#MobileCoverBgImages").val(url).attr("data-modify",'true').change();

		} else if (type == "insertimage") {
			var hasimg = $(".elm-active img");
			$(".is-modal.insertimage .input-src").val(url);
			$(".is-modal.insertimage .input-ok").click();

			if ($("#imgaesLoad").is(":checked")) {
				if (hasimg.length) {
					hasimg.data("insertimage-odd", true);
					$(".elm-active img").each(function () {
						if ($(this).attr("src") == url && !$(this).data("insertimage-odd")) {
							$(this).addClass("img-Lazy");
						}
					})
					hasimg.data("insertimage-odd", false);
				} else {
					jQuery(".elm-active img").addClass("img-Lazy");
				}
			}

		}
	}
	if (type == "image") {
		if ($("#imgaesLoad").is(":checked")) {
			jQuery(".elm-active").addClass("img-Lazy");

		} else {
			jQuery(".elm-active").removeClass("img-Lazy").removeAttr("data-src");
		}
		$("#imgaesLoad").removeClass("is-change");
		jQuery(".is-wrapper").data("contentbox").settings.onChange();
	} else {
		//	jQuery(".elm-active").removeClass("img-Lazy");
	}


}

function getMediaUrl(options) {

	if(options.FileType){
		return $(".is-wrapper").data("mediaurl")+"&FileType="+options.FileType;
	}else{
		return $(".is-wrapper").data("mediaurl");
	}

}


function EmptySectionSlider(e) {
	e.removeClass("swiper-container-fade swiper-container-slide swiper-container-horizontal");
	e.children().children(".swiper-slide-duplicate").remove();
	e.children(".swiper-wrapper").removeAttr("style");
	e.children(".swiper-button-next").remove();
	e.children(".swiper-button-prev").remove();
	e.children(".swiper-pagination").remove();
	e.children(".swiper-notification").remove();
	e.children().children(".swiper-slide").removeClass("swiper-slide-next swiper-slide-duplicate-prev swiper-slide-active").removeAttr("data-swiper-slide-index");
}






var AutoGlobalCSS = {
	"is-arrow-down": '.is-arrow-down{display:block;position:absolute;bottom:65px;width:50px;height:50px;left:50%;margin-left:-25px;cursor:pointer;z-index:1}.is-arrow-down .icon.ion-ios-arrow-thin-down::before{content:"";width:0;height:20px;border-right:2px solid currentColor;position:absolute;left:50%;top:15px;margin-left:-1px;}.is-arrow-down .icon.ion-ios-arrow-thin-down::after{content:"";width:14px;height:14px;display:inline-block;border-bottom:2px solid currentColor;border-right:2px solid currentColor;position:absolute;bottom:16px;left:50%;margin-left:-7px;-webkit-transform:rotate(45deg);transform:rotate(45deg);}@media all and (max-width:1025px){.is-arrow-down{display:none !important;}}.is-arrow-down>a{background:rgba(0,0,0,0.18);border-radius:500px;color:rgba(255,255,255,0.75);font-size:22px;text-decoration:none;text-align:center;vertical-align:middle;width:100%;height:100%;display:block;}.bounce{-moz-animation:bounce 5s forwards;-webkit-animation:bounce 5s forwards;animation:bounce 5s forwards;}@-moz-keyframes bounce{0%,20%,50%,80%,100%{-moz-transform:translateY(0);}40%{-moz-transform:translateY(-30px);}60%{-moz-transform:translateY(-15px);}}@-webkit-keyframes bounce{0%,20%,50%,80%,100%{-webkit-transform:translateY(0);}40%{-webkit-transform:translateY(-30px);}60%{-webkit-transform:translateY(-15px);}}@keyframes bounce{0%,20%,50%,80%,100%{-webkit-transform:translateY(0);-moz-transform:translateY(0);-ms-transform:translateY(0);-o-transform:translateY(0);transform:translateY(0);}40%{-webkit-transform:translateY(-30px);-moz-transform:translateY(-30px);-ms-transform:translateY(-30px);-o-transform:translateY(-30px);transform:translateY(-30px);}60%{-webkit-transform:translateY(-15px);-moz-transform:translateY(-15px);-ms-transform:translateY(-15px);-o-transform:translateY(-15px);transform:translateY(-15px);}}.is-arrow-down a,.is-arrow-down a:link,.is-arrow-down a:visited{color:#fff;}.is-arrow-down.light a,.is-arrow-down.light a:link,.is-arrow-down.light a:visited{background:rgba(255,255,255,0.18);color:#111;}',
	"embed-responsive": '.embed-responsive{position:relative;display:block;width:100%;padding:0;overflow:hidden}.embed-responsive::before{display:block;content:""}.embed-responsive .embed-responsive-item,.embed-responsive embed,.embed-responsive iframe,.embed-responsive object,.embed-responsive video{position:absolute;top:0;bottom:0;left:0;width:100%;height:100%;border:0}.embed-responsive-21by9::before{padding-top:42.857143%}.embed-responsive-16by9::before{padding-top:56.25%}.embed-responsive-4by3::before{padding-top:75%}.embed-responsive-1by1::before{padding-top:100%}',
	"overflow-auto": '.overflow-auto {overflow: auto !important}',
	"overflow-hidden": '.overflow-hidden {overflow: hidden !important}',
	"position-static": '.position-static {position: static !important}',
	"position-relative": '.position-relative {position: relative !important}',
	"position-absolute": '.position-absolute {position: absolute !important}',
	"position-fixed": '.position-fixed {position: fixed !important}',
	"clearfix": '.clearfix::after {display: block;clear: both;content: ""}',
	"bg-attachment-fixed": '@media only screen and (min-device-width:768px) and (max-device-width:1024px) and (-webkit-min-device-pixel-ratio:1){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:768px) and (max-device-width:1024px) and (orientation:portrait) and (-webkit-min-device-pixel-ratio:1){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:768px) and (max-device-width:1024px) and (orientation:landscape) and (-webkit-min-device-pixel-ratio:1){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:768px) and (max-device-width:1024px) and (-webkit-min-device-pixel-ratio:2){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:768px) and (max-device-width:1024px) and (orientation:portrait) and (-webkit-min-device-pixel-ratio:2){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:768px) and (max-device-width:1024px) and (orientation:landscape) and (-webkit-min-device-pixel-ratio:2){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:834px) and (max-device-width:1112px) and (-webkit-min-device-pixel-ratio:2){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:834px) and (max-device-width:834px) and (orientation:portrait) and (-webkit-min-device-pixel-ratio:2){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:1112px) and (max-device-width:1112px) and (orientation:landscape) and (-webkit-min-device-pixel-ratio:2){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:1024px) and (max-device-width:1366px) and (-webkit-min-device-pixel-ratio:2){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:1024px) and (max-device-width:1024px) and (orientation:portrait) and (-webkit-min-device-pixel-ratio:2){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (min-device-width:1366px) and (max-device-width:1366px) and (orientation:landscape) and (-webkit-min-device-pixel-ratio:2){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}@media only screen and (max-width:767px){.bg-attachment-fixed,.bg-attachment-fixed .is-overlay-bg{background-attachment:scroll !important;}}'
}




function getPageCSS() {


	function jsArrUnique(arr) {
		var hash = [];
		for (var i = 0; i < arr.length; i++) {
			if (hash.indexOf(arr[i]) == -1) {
				hash.push(arr[i]);
			}
		}
		return hash;
	}

	var className = $("Body").html().match(/class="(.*?)"/g);

	


	if (className) {


		className = " " + jsArrUnique(className.join(" ").replace(/class="/g, " ").replace(/"/g, " ").replace(/\s+/g, " ").split(" ")).join("  ") + " ";


		let BootstrapCSS = {
			"dd": {},
			"sm": {},
			"md": {},
			"lg": {},
			"xl": {},
		};



		let ratio = (100 / 12);
		let media = ["sm", "md", "lg", "xl"];

		//col
		let col = className.match(/\s(col-.*?|col)\s/g);

		if (col) {
			col.forEach(function (i, index) {
			
				i = i.replace(/\s/g, "");
				let n = i.split("-");
				if (i == "col") {
					BootstrapCSS["dd"][i]= `.${i}{flex-basis: 0;flex-grow: 1;max-width: 100%;}`;
				}
				if (i == "col-sm" || i == "col-md" || i == "col-lg" || i == "col-xl") {
					BootstrapCSS[n[1]][i] = `.${i}{flex-basis: 0;flex-grow: 1;max-width: 100%;}`;
				} else if (n[1]) {
					let v = n[1];
					let m = false;
					if (v) {
						if (v == "auto" || v.indexOf("/5") != -1) {
							m = 'dd';
						} else if (parseInt(v)) {
							m = 'dd';
						} else {
							v = n[2];
							m = n[1];
							if (media.indexOf(m) == -1) {return;}
						}

						if (v.indexOf("/5") != -1) {
							BootstrapCSS[m][i] = `.${i.replace(/(\/)/g, "\\/")}{flex: 0 0 ${parseInt(v.split("/")[0])*20}%;max-width: ${parseInt(v.split("/")[0])*20}%;}`;
							return;
						}else if (parseInt(v)) {
							v = ratio * v + "%";

						} else if (v == "auto") {
							BootstrapCSS[m][i] = `.${i}{flex: 0 0 auto;width: auto;max-width: 100%;}`;
							return;
						} else {
							delete col[index];
							return;
						}
						BootstrapCSS[m][i] = `.${i}{flex: 0 0 ${v};max-width: ${v};}`;
					}
				}
			})


		//	col = col.filter(function (s) {
		//		return s && s.trim();
		//	});
		//	if(col.length){
		//		BootstrapCSS["dd"] = "." + col.join(",.").replace(/(\/)/g, "\\/").replace(/\s/g, "") + "{position: relative;width: 100%;padding-right: 15px;padding-left: 15px}" + BootstrapCSS["dd"];
		//	}
		}
		//order

		let order = className.match(/\s(order-.*?)\s/g);
		if (order) {
			order.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("-");
				if (n[1]) {
					let v = n[1];
					let m = false;
					if (i == "order-first") {
						BootstrapCSS["dd"][i] = `.${i}{order: -1;}`;
						return;
					} else if (i == "order-last") {
						BootstrapCSS["dd"][i] = `.${i}{order: 100;}`;
						return;
					} else if (v) {
						if (v == "0" || parseInt(v)) {
							m = 'dd';
						} else {
							v = n[2];
							m = n[1];
							if (media.indexOf(m) == -1) {return;}
						}
						if (parseInt(v) || v == "0") {
							v = parseInt(v);
						} else if (v == "first") {
							BootstrapCSS[m][i] = `.${i}{order: -1;}`;
							return;
						} else if (v == "last") {
							BootstrapCSS[m][i] = `.${i}{order: 100;}`;
							return;
						} else {
							return;
						}
						BootstrapCSS[m][i] = `.${i}{order: ${v};}`;
					}
				}
			})
		}

		//offset
		let offset = className.match(/\s(offset-.*?)\s/g);

		if (offset) {
			offset.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("-");
				if (n[1]) {
					let v = n[1];
					let m = false;
					if (v) {
						if (v == "0" || parseInt(v) || v.indexOf("/5") != -1) {
							m = 'dd';
						} else {
							v = n[2];
							m = n[1];
							if (media.indexOf(m) == -1) {return;}
						}

						if (v.indexOf("/5") != -1) {
							BootstrapCSS[m][i] = `.${i.replace(/(\/)/g, "\\/")}{margin-left:${parseInt(v.split("/")[0])*20}%;}`;
							return;
						}else if (v == "0") {
							v = "0";
						} else if (parseInt(v)) {
							v = parseInt(v);
							v = ratio * v + "%";


						} else {
							return;
						}
						BootstrapCSS[m][i] = `.${i}{margin-left:${v};}`;
					}
				}
			})
		}

		//padding and margin
		let padding = className.match(/\s(pt-|pr-|pb-|pl-|mt-|mr-|mb-|ml-|m-|p-).*?\s/g);

		if (padding) {
			let direction = {
				"pt": "padding-top",
				"pr": "padding-right",
				"pb": "padding-bottom",
				"pl": "padding-left",
				"p": "padding",
				"mt": "margin-top",
				"mr": "margin-right",
				"mb": "margin-bottom",
				"ml": "margin-left",
				"m": "margin"
			}

			padding.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("-");
				if (n[1]) {
					let v = n[1];
					let m = false;
					if (v) {
						if (v == "0" || parseInt(v) || v=="auto") {
							m = 'dd';
						} else {
							v = n[2];
							m = n[1];
							if (media.indexOf(m) == -1) {return;}
						}
					
						if (v == "0") {
							v = "0px";
						}else if (v == "auto") {
							v = "auto";
						} else if (parseInt(v)) {
							v = parseInt(v);
							v = v <= 5? v + "px!important":v + "px";
						} else {
							return;
						}
						

						BootstrapCSS[m][i] = `#Body .${i}{${direction[n[0]]}:${v};}`;
					}
				}
			})
		}

		//font size
		let size = className.match(/\ssize-.*?\s/g);

		if (size) {
			size.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("-");
				if (parseInt(n[1]) || n[1] == "0") {
					let v = parseInt(n[1]);

					if (v >= 60) {
						BootstrapCSS["dd"][i] = `.${i} {font-size:2.25rem!important;}`;
					} else if (v >= 48) {
						BootstrapCSS["dd"][i] = `.${i} {font-size:2.25rem!important;}`;
					} else if (v >= 42) {
						BootstrapCSS["dd"][i] = `.${i} {font-size:2rem!important;}`;
					} else if (v >= 38) {
						BootstrapCSS["dd"][i] = `.${i} {font-size:1.875rem!important;}`;
					} else if (v >= 35) {
						BootstrapCSS["dd"][i] = `.${i} {font-size:1.75rem!important;}`;
					} else if (v >= 30) {
						BootstrapCSS["dd"][i] = `.${i} {font-size:1.625rem!important;}`;
					} else if (v >= 26) {
						BootstrapCSS["dd"][i] = `.${i} {font-size:1.5rem!important;}`;
					} else if (v >= 22) {
						BootstrapCSS["dd"][i] = `.${i} {font-size:1.375rem!important;}`;
					} else {
						BootstrapCSS["dd"][i] = `.${i} {font-size:${v/16}rem!important;}`;
					}

					//	BootstrapCSS["sm"][i] =`.${i} {font-size:${v/16}rem!important}`;

					if (v >= 100) {
						BootstrapCSS["md"][i] = `.${i} {font-size:3rem!important;}`;
					} else if (v >= 60) {
						BootstrapCSS["md"][i] = `.${i} {font-size:2.625rem!important;}`;
					} else if (v >= 48) {
						BootstrapCSS["md"][i] = `.${i} {font-size:2.25rem!important;}`;
					}

					//	BootstrapCSS["lg"][i] =`.${i} {font-size:${v/16}rem!important}`;

					if (v >= 22) {
						BootstrapCSS["xl"][i] = `.${i} {font-size:${v/16}rem!important;}`;
					}

				}
			})
		}
		//letter-spacing

		let letterspacing = className.match(/\sletter-spacing-.*?\s/g);

		if (letterspacing) {
			letterspacing.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("-");
				if (parseInt(n[2]) || n[2] == "0") {
					let v = parseInt(n[2]);

					if (v >= 9) {
						BootstrapCSS["dd"][i] = `.${i} {letter-spacing:5px!important;}`;
					}
					if (v >= 7) {
						BootstrapCSS["dd"][i] = `.${i} {letter-spacing:4px!important;}`;
					}
					if (v >= 5) {
						BootstrapCSS["dd"][i] = `.${i} {letter-spacing:3px!important;}`;
					} else {
						BootstrapCSS["dd"][i] = `.${i} {letter-spacing:${v}px!important;}`;
					}

					if (v >= 5) {
						BootstrapCSS["xl"][i] = `.${i} {letter-spacing:${v}px!important;}`;
					}

				}
			})
		}

		//is-box 
		let isbox = className.match(/\s(is-box-.*?|is-box)\s/g);

		if (isbox) {
			isbox.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("-");
				if (i == "is-box") {

					BootstrapCSS["dd"][i] = `.${i} {display: table-cell; width:100%;height: 100%;position: relative;}`;

				} else if (parseInt(n[2]) || n[2] == "0") {
					let v = parseInt(n[2]);
					BootstrapCSS["lg"][i] = `.${i} {display: table-cell; width: ${ratio * v}%;height: 100%;position: relative;}`;
					if (v <= 5) {
						BootstrapCSS["dd"][i] = `.${i} .is-content-left{ margin-left: auto}.${i} .is-content-right{ margin-left: auto}`;
					}



				}
			})
		}



		//is-content-left
		let iscontentleft = className.match(/\s(is-content-left)\s/g);
		let edgex = className.match(/\s(edge-x-.*?)\s/g);


		if (iscontentleft) {
			BootstrapCSS["dd"]["is-content-left"] = '.is-container.is-content-left {margin-left: auto;}';
			BootstrapCSS["md"]["is-content-left"] = '.is-container.is-content-left {margin-left: 60px;}';
			BootstrapCSS["xl"]["is-content-left"] = '.is-container.is-content-left {margin-left: 100px;}';
			if (edgex) {
				edgex.forEach(function (i, index) {
					i = i.replace(/\s/g, "");
					let n = i.split("-");
					if (parseInt(n[2]) || n[2] == "0") {
						let v = parseInt(n[2]);
						BootstrapCSS["dd"][i] = `.is-content-left.${i} {margin-left:auto;}`;
						BootstrapCSS["lg"][i] = `.is-content-left.${i} {margin-left:${40 * v}px;}`;
					}
				})
			}
		}

		let iscontentright = className.match(/\s(is-content-right)\s/g);

		if (iscontentright) {
			BootstrapCSS["dd"]["is-content-right"] = '.is-container.is-content-right {margin-right: auto;}';
			BootstrapCSS["md"]["is-content-right"] = '.is-container.is-content-right {margin-right: 60px;}';
			BootstrapCSS["xl"]["is-content-right"] = '.is-container.is-content-right {margin-right: 100px;}';
			if (edgex) {
				edgex.forEach(function (i, index) {
					i = i.replace(/\s/g, "");
					let n = i.split("-");
					if (parseInt(n[2]) || n[2] == "0") {
						let v = parseInt(n[2]);
						BootstrapCSS["dd"][i] = `.is-content-right.${i} {margin-left:auto;}`;
						BootstrapCSS["lg"][i] = `.is-content-right.${i} {margin-left:${40 * v}px;}`;
					}
				})
			}
		}


		//is-content-top

		let iscontenttop = className.match(/\s(is-content-top)\s/g);
		let edgey = className.match(/(edge-y-.*?)\s/g);

		if (iscontenttop) {
			BootstrapCSS["dd"]["is-content-top"] = '.is-content-top {vertical-align: top;}.is-content-top > .is-boxes > .is-container{align-self: flex-start;}';
			if (edgey) {
				edgey.forEach(function (i, index) {
					i = i.replace(/\s/g, "");
					let n = i.split("edge-y-");
					if (parseInt(n[1]) || n[1] == "0") {
						let v = parseInt(n[1]);
						BootstrapCSS["dd"][i] = `.is-content-top.${i} .is-container{margin-top:${40 * v}px;}`;
					}
				})
			}
		}

		let iscontentbottom = className.match(/\s(is-content-bottom)\s/g);
		className = className.replace(/\s(is-content-bottom)\s/g, " ");

		if (iscontentbottom) {
			BootstrapCSS["dd"]["is-content-bottom"] = '.is-content-bottom {vertical-align: bottom;}.is-content-bottom > .is-boxes > .is-container{align-self: flex-end;}';
			if (edgey) {
				edgey.forEach(function (i, index) {
					i = i.replace(/\s/g, "");
					let n = i.split("edge-y-");
					if (parseInt(n[1]) || n[1] == "0") {
						let v = parseInt(n[1]);
						BootstrapCSS["dd"][i] = `.is-content-bottom.${i} .is-container{margin-bottom:${40 * v}px;}`;
					}
				})
			}
		}


		/* Text Opacity */

		let isopacity = className.match(/\s(is-opacity-.*?)\s/g);

		if (isopacity) {
			isopacity.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("is-opacity-");
				if (parseInt(n[1]) || n[1] == "0") {
					let v = parseInt(n[1]);
					BootstrapCSS["dd"][i] = `.${i},.${i} .is-container {opacity: ${v*0.01};}`;
				}
			})
		}


		// 	is-content
		let iscontent = className.match(/\s(is-content-.*?)\s/g);

		if (iscontent) {
			iscontent.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("is-content-");
				if (parseInt(n[1]) || n[1] == "0") {
					let v = parseInt(n[1]);
					BootstrapCSS["dd"][i] = `.${i}{max-width: ${v}px !important;}`;
				}
			})
		}


		// 	display
		let display = className.match(/\s(d-.*?)\s/g);

		if (display) {
			display.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.slice(2);
				let v = false;
				let m = false;
				let d = ["none", "inline", "inline-block", "block", "table", "table-row", "table-cell", "flex", "inline-flex"];

				if (d.indexOf(n) != -1) {
					m = "dd";
					v = n;
				} else {
					m = n.slice(0, 2);
					if (media.indexOf(m) != -1) {
						v = n.slice(3);
					}
				}
				if (v && d.indexOf(v) != -1) {
					BootstrapCSS[m][i] = `.${i}{display: ${v} !important;}`;
				}

			})
		}

		// 	flex
		let flex = className.match(/\s(flex-.*?)\s/g);

		if (flex) {
			flex.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("flex-")[1];
				let v = false;
				let m = false;
				let d = ["row", "column", "row-reverse", "column-reverse", "wrap", "nowrap", "wrap-reverse", "fill", "grow-0", "shrink-0", "grow-1", "shrink-1"];

				if (d.indexOf(n) != -1) {
					m = "dd";
					v = n;
				} else {
					m = n.slice(0, 2);
					if (media.indexOf(m) != -1) {
						v = n.slice(3);
					}
				}
				if (v && d.indexOf(v) != -1) {
					if (v == "fill") {
						BootstrapCSS[m][i] = `.${i}{flex: 1 1 auto !important;}`;
					} else if (v == "grow-0") {
						BootstrapCSS[m][i] = `.${i}{flex-grow: 0 !important;}`;
					} else if (v == "shrink-0") {
						BootstrapCSS[m][i] = `.${i}{flex-shrink: 0 !important;}`;
					} else if (v == "grow-1") {
						BootstrapCSS[m][i] = `.${i}{flex-grow: 1 !important;}`;
					} else if (v == "shrink-1") {
						BootstrapCSS[m][i] = `.${i}{flex-shrink: 1 !important;}`;
					} else if (v == "wrap" || v == "nowrap" || v == "wrap-reverse") {
						BootstrapCSS[m][i] = `.${i}{flex-wrap: ${v}!important;}`;
					} else {
						BootstrapCSS[m][i] = `.${i}{flex-direction:${v}!important;}`;
					}

				}

			})
		}


		// 	flex content
		let justify = className.match(/\s(justify-content-.*?)\s/g);

		if (justify) {
			justify.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("justify-content-")[1];
				let v = false;
				let m = false;
				let d = ["start", "end", "center", "between", "around"];

				if (d.indexOf(n) != -1) {
					m = "dd";
					v = n;
				} else {
					m = n.slice(0, 2);
					if (media.indexOf(m) != -1) {
						v = n.slice(3);
					}
				}
				if (v && d.indexOf(v) != -1) {
					if (v == "between") {
						BootstrapCSS[m][i] = `.${i}{ justify-content:space-between!important;}`;
					} else if (v == "around") {
						BootstrapCSS[m][i] = `.${i}{ justify-content:space-around!important;}`;
					} else if (v == "start") {
						BootstrapCSS[m][i] = `.${i}{ justify-content:flex-start!important;}`;
					} else if (v == "end") {
						BootstrapCSS[m][i] = `.${i}{ justify-content:flex-end!important;}`;
					} else {
						BootstrapCSS[m][i] = `.${i}{ justify-content:${v}!important;}`;
					}
				}
			})
		}

		// align-items
		let alignitems = className.match(/\s(align-items-.*?)\s/g);

		if (alignitems) {
			alignitems.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("align-items-")[1];
				let v = false;
				let m = false;
				let d = ["start", "end", "center", "baseline", "stretch"];

				if (d.indexOf(n) != -1) {
					m = "dd";
					v = n;
				} else {
					m = n.slice(0, 2);
					if (media.indexOf(m) != -1) {
						v = n.slice(3);
					}
				}
				if (v && d.indexOf(v) != -1) {
					if (v == "start") {
						BootstrapCSS[m][i] = `.${i}{ align-items: flex-start!important;}`;
					} else if (v == "end") {
						BootstrapCSS[m][i] = `.${i}{ align-items: flex-end!important;}`;
					} else {
						BootstrapCSS[m][i] = `.${i}{ align-items: ${v}!important;}`;
					}
				}
			})
		}

		// align-content
		let aligncontent = className.match(/\s(align-content-.*?)\s/g);

		if (aligncontent) {
			aligncontent.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("align-content-")[1];
				let v = false;
				let m = false;
				let d = ["start", "end", "center", "between", "around", "stretch"];

				if (d.indexOf(n) != -1) {
					m = "dd";
					v = n;
				} else {
					m = n.slice(0, 2);
					if (media.indexOf(m) != -1) {
						v = n.slice(3);
					}
				}
				if (v && d.indexOf(v) != -1) {
					if (v == "start") {
						BootstrapCSS[m][i] = `.${i}{ align-content: flex-start!important;}`;
					} else if (v == "end") {
						BootstrapCSS[m][i] = `.${i}{ align-content: flex-end!important;}`;
					} else if (v == "between") {
						BootstrapCSS[m][i] = `.${i}{ align-content: space-between!important;}`;
					} else if (v == "around") {
						BootstrapCSS[m][i] = `.${i}{ align-content: space-around!important;}`;
					} else {
						BootstrapCSS[m][i] = `.${i}{ align-content: ${v}!important;}`;
					}
				}
			})
		}

		// align-content
		let alignself = className.match(/\s(align-self-.*?)\s/g);

		if (alignself) {
			alignself.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("align-self-")[1];
				let v = false;
				let m = false;
				let d = ["auto", "start", "end", "center", "baseline", "stretch"];

				if (d.indexOf(n) != -1) {
					m = "dd";
					v = n;
				} else {
					m = n.slice(0, 2);
					if (media.indexOf(m) != -1) {
						v = n.slice(3);
					}
				}
				if (v && d.indexOf(v) != -1) {
					if (v == "start") {
						BootstrapCSS[m][i] = `.${i}{ align-self: flex-start!important;}`;
					} else if (v == "end") {
						BootstrapCSS[m][i] = `.${i}{ align-self: flex-end!important;}`;
					} else {
						BootstrapCSS[m][i] = `.${i}{ align-self: ${v}!important;}`;
					}
				}
			})
		}

		// float
		let float = className.match(/\s(float-.*?)\s/g);

		if (float) {
			float.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("float-")[1];
				let v = false;
				let m = false;
				let d = ["left", "right", "none"];

				if (d.indexOf(n) != -1) {
					m = "dd";
					v = n;
				} else {
					m = n.slice(0, 2);
					if (media.indexOf(m) != -1) {
						v = n.slice(3);
					}
				}
				if (v && d.indexOf(v) != -1) {
					BootstrapCSS[m][i] = `.${i}{ float: ${v}!important;}`;
				}
			})
		}

		// text align

		let textalign = className.match(/\s(text-.*?)\s/g);

		if (textalign) {
			textalign.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("text-")[1];
				let v = false;
				let m = false;
				let d = ["left", "right", "center"];

				if (d.indexOf(n) != -1) {
					m = "dd";
					v = n;
				} else {
					m = n.slice(0, 2);
					if (media.indexOf(m) != -1) {
						v = n.slice(3);
					}
				}
				if (v && d.indexOf(v) != -1) {
					BootstrapCSS[m][i] = `#Body .${i}{ text-align: ${v};}`;
				}
			})
		}

		// width

		let width = className.match(/\s(width-.*?)\s/g);

		if (width) {
			width.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("width-")[1];
				if (n && (parseInt(n) || n == "0")) {
					var v = parseInt(n);
					BootstrapCSS["xl"][i] = `#Body .${i}{ max-width: ${v}%;}`;
					if (v <= 75) {
						BootstrapCSS["lg"][i] = `#Body .${i}{ text-align: ${v+20}%;}`;
					}
					if (v <= 55) {
						BootstrapCSS["md"][i] = `#Body .${i}{ text-align: ${v+40}%;}`;
					}
				} else {
					delete width[index];
				}

			//	width = width.filter(function (s) {
			//		return s && s.trim();
			//	});
				
			//	if(width.length){
			//		BootstrapCSS["dd"] = "." + width.join(",.").replace(/\s/g, "") + "{margin-left: auto;margin-right: auto;text-align: center}" + BootstrapCSS["dd"];
			//	}

			})
		}

		//align
		let align = className.match(/\s(align-.*?)\s/g);

		if (align) {
			align.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("align-")[1];
				let d = ["baseline", "top", "middle", "bottom", "text-bottom", "text-top"];
				if (d.indexOf(n) != -1) {
					BootstrapCSS["dd"][i] = `.${i} {vertical-align: ${n} !important}`;
				}
			})
		}

		//height
		let height = className.match(/\s(height-.*?)\s/g);

		if (height) {
			height.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("height-")[1];

				if (parseInt(n) || n == "0") {
					let v = parseInt(n);
					if (v >= 40) {
						BootstrapCSS["dd"][i] = `.${i} {height:40px;}`;
						BootstrapCSS["md"][i] = `.${i} {height:${v}px;}`;
					} else {
						BootstrapCSS["dd"][i] = `.${i} {height:${v}px;}`;
					}


				}
			})

		}


		//is-section height
		let isSectionHeight = className.match(/\s(is-section-.*?)\s/g);

		if (isSectionHeight) {
			isSectionHeight.forEach(function (i, index) {
				i = i.replace(/\s/g, "");
				let n = i.split("is-section-")[1];

				if (n == "auto") {
					BootstrapCSS["dd"][i] = `.d-wrapper>div.is-section-auto.is-section {height: auto;}.d-wrapper>div.is-section-auto.is-section  .swiper-slide{height: auto;}`;
				} else if (parseInt(n) || n == "0") {
					let v = parseInt(n);
					BootstrapCSS["dd"][i] = `.d-wrapper>div.${i} {height: ${v}vh;}`;

				}

			})

		}




		// other
		if (AutoGlobalCSS) {
			className = className.split(" ");

			for (var key in AutoGlobalCSS) {
				if (className.indexOf(key) != -1) {
					if (typeof AutoGlobalCSS[key] == "object") {
						for (var m in AutoGlobalCSS[key]) {
							BootstrapCSS[m][key] = AutoGlobalCSS[key][m];
						}
					} else {
						BootstrapCSS["dd"][key] = AutoGlobalCSS[key];
					}

				}
			}
		}
 
		return	{
			"Normal":BootstrapCSS["dd"],
			"Responsive":{
				"576": BootstrapCSS["sm"],
				"768": BootstrapCSS["md"],
				"992": BootstrapCSS["lg"],
				"1200": BootstrapCSS["xl"]
			}
		}



/* 		let csste = "";

		if (BootstrapCSS["dd"]) {
			csste += BootstrapCSS["dd"]
		};
		if (BootstrapCSS["sm"]) {
			csste += "@media(min-width:576px) {" + BootstrapCSS["sm"] + "}"
		};
		if (BootstrapCSS["md"]) {
			csste += "@media(min-width:768px) {" + BootstrapCSS["md"] + "}"
		};
		if (BootstrapCSS["lg"]) {
			csste += "@media(min-width:992px) {" + BootstrapCSS["lg"] + "}"
		};
		if (BootstrapCSS["xl"]) {
			csste += "@media(min-width:1200px) {" + BootstrapCSS["xl"] + "}"
		};


		return csste; */

	}

	return false;

};

 
 




/* =========================================================
 * bootstrap-colorpicker2.js 
 * http://www.eyecon.ro/bootstrap-colorpicker2
 * =========================================================
 * Copyright 2012 Stefan Petre
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================= */
 
!function($){var Color=function(val){this.value={h:1,s:1,b:1,a:1};this.setColor(val)};Color.prototype={constructor:Color,setColor:function(val){val=val.toLowerCase();var that=this;$.each(CPGlobal.stringParsers,function(i,parser){var match=parser.re.exec(val),values=match&&parser.parse(match),space=parser.space||"rgba";if(values){if(space==="hsla"){that.value=CPGlobal.RGBtoHSB.apply(null,CPGlobal.HSLtoRGB.apply(null,values))}else{that.value=CPGlobal.RGBtoHSB.apply(null,values)}return false}return true})},setHue:function(h){this.value.h=1-h},setSaturation:function(s){this.value.s=s},setLightness:function(b){this.value.b=1-b},setAlpha:function(a){this.value.a=parseInt((1-a)*100,10)/100},toRGB:function(h,s,b,a){if(!h){h=this.value.h;s=this.value.s;b=this.value.b}h*=360;var R,G,B,X,C;h=(h%360)/60;C=b*s;X=C*(1-Math.abs(h%2-1));R=G=B=b-C;h=~~h;R+=[C,X,0,0,X,C][h];G+=[X,C,C,X,0,0][h];B+=[0,0,X,C,C,X][h];return{r:Math.round(R*255),g:Math.round(G*255),b:Math.round(B*255),a:a||this.value.a}},toHex:function(h,s,b,a){var rgb=this.toRGB(h,s,b,a);return"#"+((1<<24)|(parseInt(rgb.r)<<16)|(parseInt(rgb.g)<<8)|parseInt(rgb.b)).toString(16).substr(1)},toHSL:function(h,s,b,a){if(!h){h=this.value.h;s=this.value.s;b=this.value.b}var H=h,L=(2-s)*b,S=s*b;if(L>0&&L<=1){S/=L}else{S/=2-L}L/=2;if(S>1){S=1}return{h:H,s:S,l:L,a:a||this.value.a}}};var _guid=0;var Colorpicker=function(element,options){_guid++;this.element=$(element).attr("data-colorpicker2-guid",_guid);var format=options.format||this.element.data("color-format")||"hex";this.format=CPGlobal.translateFormats[format];this.isInput=this.element.is("input");this.component=this.element.is(".colorpicker2-component")?this.element.find(".add-on, .input-group-addon"):false;this.picker=$(CPGlobal.template).attr("data-colorpicker2-guid",_guid).on("mousedown.colorpicker2",$.proxy(this.mousedown,this));$(element).parent().after(this.picker);if(this.isInput){this.element.on({"focus.colorpicker2":$.proxy(this.show,this),"keyup.colorpicker2":$.proxy(this.update,this)})}else{if(this.component){this.component.on({"click.colorpicker2":$.proxy(this.show,this)})}else{this.element.on({"click.colorpicker2":$.proxy(this.show,this)})}}if(format==="rgba"||format==="hsla"){this.picker.addClass("alpha");this.alpha=this.picker.find(".colorpicker2-alpha")[0].style}if(this.component){this.picker.find(".colorpicker2-color").hide();this.preview=this.element.find("i")[0].style}else{this.preview=this.picker.find("div:last")[0].style}this.base=this.picker.find("div:first")[0].style;this.update();$($.proxy(function(){this.element.trigger("create",[this])},this))};Colorpicker.prototype={constructor:Colorpicker,show:function(e){this.picker.show();this.height=this.component?this.component.outerHeight():this.element.outerHeight();this.place();$(window).on("resize.colorpicker2",$.proxy(this.place,this));if(!this.isInput){if(e){e.stopPropagation();e.preventDefault()}}},update:function(){var color=this.isInput?this.element.prop("value"):this.element.data("color");if(typeof color==="undefined"||color===null){color="#ffffff"}this.color=new Color(color);this.picker.find("i").eq(0).css({left:this.color.value.s*100,top:100-this.color.value.b*100}).end().eq(1).css("top",100*(1-this.color.value.h)).end().eq(2).css("top",100*(1-this.color.value.a));this.previewColor()},hide:function(){},place:function(){var offset=this.component?this.component.offset():this.element.offset();this.picker.css({top:offset.top+this.height,left:offset.left})},destroy:function(){$(".colorpicker2[data-colorpicker2-guid="+this.element.attr("data-colorpicker2-guid")+"]").remove();this.element.removeData("colorpicker2").removeAttr("data-colorpicker2-guid").off(".colorpicker2");if(this.component!==false){this.component.off(".colorpicker2")}this.element.trigger("destroy",[this])},setValue:function(value){if(this.isInput){this.element.prop("value",value)}else{this.element.find("input").val(value);this.element.data("color",value)}this.update();this.element.trigger({type:"changeColor",color:this.color})},previewColor:function(){try{this.preview.backgroundColor=this.format.call(this)}catch(e){this.preview.backgroundColor=this.color.toHex()}this.base.backgroundColor=this.color.toHex(this.color.value.h,1,1,1);if(this.alpha){this.alpha.backgroundColor=this.color.toHex()}},pointer:null,slider:null,mousedown:function(e){e.stopPropagation();e.preventDefault();var target=$(e.target);var zone=target.closest("div");if(!zone.is(".colorpicker2")){if(zone.is(".colorpicker2-saturation")){this.slider=$.extend({},CPGlobal.sliders.saturation)}else{if(zone.is(".colorpicker2-hue")){this.slider=$.extend({},CPGlobal.sliders.hue)}else{if(zone.is(".colorpicker2-alpha")){this.slider=$.extend({},CPGlobal.sliders.alpha)}else{return false}}}var offset=zone.offset();this.slider.knob=zone.find("i")[0].style;this.slider.left=e.pageX-offset.left;this.slider.top=e.pageY-offset.top;this.pointer={left:e.pageX,top:e.pageY};$(document).on({"mousemove.colorpicker2":$.proxy(this.mousemove,this),"mouseup.colorpicker2":$.proxy(this.mouseup,this)}).trigger("mousemove")
}return false},mousemove:function(e){e.stopPropagation();e.preventDefault();var left=Math.max(0,Math.min(this.slider.maxLeft,this.slider.left+((e.pageX||this.pointer.left)-this.pointer.left)));var top=Math.max(0,Math.min(this.slider.maxTop,this.slider.top+((e.pageY||this.pointer.top)-this.pointer.top)));this.slider.knob.left=left+"px";this.slider.knob.top=top+"px";if(this.slider.callLeft){this.color[this.slider.callLeft].call(this.color,left/100)}if(this.slider.callTop){this.color[this.slider.callTop].call(this.color,top/100)}this.previewColor();if(!this.isInput){try{this.element.find("input").val(this.format.call(this)).trigger("change")}catch(e){this.element.find("input").val(this.color.toHex()).trigger("change")}}else{try{this.element.val(this.format.call(this)).trigger("change")}catch(e){this.element.val(this.color.toHex()).trigger("change")}}this.element.trigger({type:"changeColor",color:this.color});return false},mouseup:function(e){e.stopPropagation();e.preventDefault();$(document).off({mousemove:this.mousemove,mouseup:this.mouseup});return false}};$.fn.colorpicker2=function(option,value){return this.each(function(){var $this=$(this),data=$this.data("colorpicker2"),options=typeof option==="object"&&option;if(!data){if(option!=="destroy"){$this.data("colorpicker2",(data=new Colorpicker(this,$.extend({},$.fn.colorpicker2.defaults,options))))}}else{if(typeof option==="string"){data[option](value)}}})};$.fn.colorpicker2.defaults={};$.fn.colorpicker2.Constructor=Colorpicker;var CPGlobal={translateFormats:{"rgb":function(){var rgb=this.color.toRGB();return"rgb("+rgb.r+","+rgb.g+","+rgb.b+")"},"rgba":function(){var rgb=this.color.toRGB();if(rgb.a==1){return this.color.toHex()}else{return"rgba("+rgb.r+","+rgb.g+","+rgb.b+","+rgb.a+")"}},"hsl":function(){var hsl=this.color.toHSL();return"hsl("+Math.round(hsl.h*360)+","+Math.round(hsl.s*100)+"%,"+Math.round(hsl.l*100)+"%)"},"hsla":function(){var hsl=this.color.toHSL();return"hsla("+Math.round(hsl.h*360)+","+Math.round(hsl.s*100)+"%,"+Math.round(hsl.l*100)+"%,"+hsl.a+")"},"hex":function(){return this.color.toHex()}},sliders:{saturation:{maxLeft:100,maxTop:100,callLeft:"setSaturation",callTop:"setLightness"},hue:{maxLeft:0,maxTop:100,callLeft:false,callTop:"setHue"},alpha:{maxLeft:0,maxTop:100,callLeft:false,callTop:"setAlpha"}},RGBtoHSB:function(r,g,b,a){r/=255;g/=255;b/=255;var H,S,V,C;V=Math.max(r,g,b);C=V-Math.min(r,g,b);H=(C===0?null:V===r?(g-b)/C:V===g?(b-r)/C+2:(r-g)/C+4);H=((H+360)%6)*60/360;S=C===0?0:C/V;return{h:H||1,s:S,b:V,a:a||1}},HueToRGB:function(p,q,h){if(h<0){h+=1}else{if(h>1){h-=1}}if((h*6)<1){return p+(q-p)*h*6}else{if((h*2)<1){return q}else{if((h*3)<2){return p+(q-p)*((2/3)-h)*6}else{return p}}}},HSLtoRGB:function(h,s,l,a){if(s<0){s=0}var q;if(l<=0.5){q=l*(1+s)}else{q=l+s-(l*s)}var p=2*l-q;var tr=h+(1/3);var tg=h;var tb=h-(1/3);var r=Math.round(CPGlobal.HueToRGB(p,q,tr)*255);var g=Math.round(CPGlobal.HueToRGB(p,q,tg)*255);var b=Math.round(CPGlobal.HueToRGB(p,q,tb)*255);return[r,g,b,a||1]},stringParsers:[{re:/rgba?\(\s*(\d{1,3})\s*,\s*(\d{1,3})\s*,\s*(\d{1,3})\s*(?:,\s*(\d+(?:\.\d+)?)\s*)?\)/,parse:function(execResult){return[execResult[1],execResult[2],execResult[3],execResult[4]]}},{re:/rgba?\(\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*(?:,\s*(\d+(?:\.\d+)?)\s*)?\)/,parse:function(execResult){return[2.55*execResult[1],2.55*execResult[2],2.55*execResult[3],execResult[4]]}},{re:/#([a-fA-F0-9]{2})([a-fA-F0-9]{2})([a-fA-F0-9]{2})/,parse:function(execResult){return[parseInt(execResult[1],16),parseInt(execResult[2],16),parseInt(execResult[3],16)]}},{re:/#([a-fA-F0-9])([a-fA-F0-9])([a-fA-F0-9])/,parse:function(execResult){return[parseInt(execResult[1]+execResult[1],16),parseInt(execResult[2]+execResult[2],16),parseInt(execResult[3]+execResult[3],16)]}},{re:/hsla?\(\s*(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*(?:,\s*(\d+(?:\.\d+)?)\s*)?\)/,space:"hsla",parse:function(execResult){return[execResult[1]/360,execResult[2]/100,execResult[3]/100,execResult[4]]}}],template:'<div class="colorpicker2 dropdown-menu">'+'<div class="colorpicker2-saturation"><i><b></b></i></div>'+'<div class="colorpicker2-hue"><i></i></div>'+'<div class="colorpicker2-alpha"><i></i></div>'+'<div class="colorpicker2-color"><div /></div>'+"</div>"}}(window.jQuery);



function ImagesEditMediaBox(url,back){
	var box= document.getElementById("ImagesEditMediaBox");
	if(!box){
		var iDom = document.createElement('div');
		iDom.innerHTML = '<div id="ImagesEditMediaBox" style="position: fixed;top: 0;left: 0;width: 100%;height: 100%;z-index: 99999999999999999;background-color: rgba(255,255,255,1);"><iframe id="ImagesEditMediaBox_Iframe" width="100%" height="100%" style="border-width: 0px; vertical-align:middle" src="'+GetCropImageModalUrl+$(".content-builder.d-wrapper:not(.noedit)").eq(0).data("mid")+'&imgurl='+encodeURIComponent(url)+'" ></iframe></div>';
		document.body.insertBefore(iDom.childNodes[0], document.body.lastChild)

	}else{
		document.getElementById("ImagesEditMediaBox").style.display='block';  
		document.getElementById("ImagesEditMediaBox_Iframe").src = GetCropImageModalUrl+$(".content-builder.d-wrapper:not(.noedit)").eq(0).data("mid")+'&imgurl='+encodeURIComponent(url);
	}
	document.getElementById("ImagesEditMediaBox").getImageUrl = function(e){back(e);} 
}
