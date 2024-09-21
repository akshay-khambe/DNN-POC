(function ($) {
	$.fn.dnngomegamenu = function (m) {
		m = $.extend({
			slide_speed: 200,
			delay_show: 150,
			delay_disappear: 500,
			megamenuwidth: "box",
			WidthBoxClassName: ".container",
			popUp: "vertical",
			direction: "ltr",
			clickdisplay:false,
			masklayer:false
		}, m || {});
		var rtl = m.direction == "rtl" ? true : false;
		return this.each(function (index) {
			var me = $(this),
				primary = me.find(".primary_structure > li");
		 
				if(me.parent().data("clickdisplay")){
						m.clickdisplay = true;
					if(me.parent().data("masklayer")){
						m.masklayer = true;
					}
				}

				me.find(".primary_structure").attr({
					"role": "menubar"
				});
				me.find("li").attr({
					"role": "none"
				});

				me.find("li > a").attr({
					"role": "menuitem",
				});
				me.find(".dir > a").attr({
					"aria-haspopup": "true",
					"aria-expanded": "false"
				});

				me.find(".primary_structure ul").attr({
					"role": "menu"
				});

			if (rtl) {
				me.addClass("rtl");
			}

			if(m.masklayer){
				var mask=$('<div class="menu-mask"></div>');
				if(me.parent().data("maskbg")){
					mask.css("background-color",me.parent().data("maskbg"))
				}

				me.parents("header").append(mask);
			}		 

			if (!!('ontouchstart' in window) || m.clickdisplay) {
				primary.children("a").on('click', function (event) {
					
					if ($(this).siblings("div").eq(0).is(":hidden")) {
						event.preventDefault();
						$(this).data("nolink",true);
					}else{
						$(this).data("nolink",false);
					}
				})
			}

			var delayPrimary = false;

			function primaryMenuHide(i){
				if(i.length){
					i.removeClass("menu_hover");
					if(i.parent().hasClass(".dir")){
						i.children("a").attr("aria-expanded","false");
					}

					clearTimeout(delayPrimary);

					i.find(".dnngo_menuslide").stop().fadeOut(m.slide_speed);
				
					i.hasClass("dir") && m.clickdisplay && m.masklayer && mask.stop().fadeOut();
				}
			}
			function primaryMenuShow(i){
				i.addClass("menu_hover");
				if(i.parent().hasClass(".dir")){
					i.children("a").attr("aria-expanded","true");
				}
				delayPrimary =setTimeout(function(){
					i.find(".dnngo_menuslide").stop().fadeIn(m.slide_speed);
				},200)


			 i.hasClass("dir") && m.clickdisplay && m.masklayer && mask.stop().fadeIn();

			}

			if( m.clickdisplay){
				primary.on("click",function (event) {
				
					if(!$(this).hasClass("menu_hover") && $(this).hasClass("dir")){
						var Prev = me.find(".primary_structure > li.menu_hover");
							primaryMenuHide(Prev);
							primaryMenuShow($(this));
							return false;
					}else{
					//	event.stopPropagation();
					}

				})

				me.on("blur",function(){
					var Prev = me.find(".primary_structure > li.menu_hover");
					Prev.length && primaryMenuHide(Prev);
				})
				
				$(document).on("click",function(event){
					if(!me.is(event.target)&&me.has(event.target).length===0){
						var Prev = me.find(".primary_structure > li.menu_hover");
						Prev.length && primaryMenuHide(Prev);
					}
				})




			}else{
				primary.on("mouseenter",function () {
					primaryMenuShow($(this));
				}).on("mouseleave",function () {
					primaryMenuHide($(this));
				})
			}


			primary.find(".dnngo_menu_list,.dnngo_boxslide").each(function(){
				var itembox = $(this),
					parent = itembox.parent(".dnngo_menuslide"),
					parentVis = parent.parent("li"),
 					width = parent.data("width") ? parent.data("width") : false,
					position = parent.data("position") ? parent.data("position") : 0,
					contWindth = 0,
					dir="left";
					function itemPosition(){
						contWindth = m.megamenuwidth == 'box' ? $(m.WidthBoxClassName+":visible").last().width():$(window).width();
						if(width){
							var iWidth = Math.min(width, $(window).width());
								if(iWidth > contWindth){
									contWindth = $(window).width();
								}
						}else{
							var iWidth = contWindth;
						}
						if (position == 0 || position == 1) {
							var cur = Math.min((($(window).width() - contWindth)/2 + contWindth) - (parentVis.offset().left+iWidth),position==0?0:parentVis.width()/2 - iWidth/2);
						} else if (position == 2) {
							dir="right";
							parent.css("left","auto");
							var cur =  Math.min((parentVis.offset().left + parentVis.width() - iWidth) - (($(window).width() - contWindth)/2),0);
						}
						parent.css({"width":iWidth}).css(dir,cur);
					}
					itemPosition();
					$(window).resize(function(){
						itemPosition();
					})
			})

			primary.find(".dnngo_slide_menu > li.dir,.dnngo_submenu > ul > li.dir").on("mouseenter",function () {
				var e = $(this),sub=e.children(".dnngo_submenu");
				if(!sub.length) return;

				var top = e.offset().top - $(window).scrollTop();

				if((top + sub.height() > $(window).height())){
					sub.css("top",Math.max($(window).height() - top - sub.height(),-top) )
				}

				sub.stop().fadeIn(m.slide_speed);
				e.addClass("menu_hover");
				$(this).children("a").attr("aria-expanded","true");
				if(sub.offset().left + sub.width() > $(window).width()){
					e.addClass("reverse");
				}
			}).on("mouseleave",function () {
				var e = $(this),sub=e.children(".dnngo_submenu");
				if(!sub.length) return;
				e.removeClass("menu_hover");
				$(this).children("a").attr("aria-expanded","false");
				sub.stop().fadeOut(m.slide_speed,function(){e.removeClass("reverse");sub.css("top","")});
				
			})
	
			primary.find(".dnngo_menuslide,.dnngo_submenu").each(function(){
				var e = $(this),
					ih = e.height(),
					wh = $(window).height(),
					ioft = e.offset().top;
					var clearTop = 0;
					$(window).resize(function(){
						wh = $(window).height();
						ih = e.height();
						ioft = e.parent().offset() ? e.parent().offset().top:ioft;
					})

					e.on("mouseenter",function () {
					//	e.css("top","");
						ih = e.height();
						ioft = e.offset().top - $(window).scrollTop(),
						ioft2 = e.offset().top - $(window).scrollTop();

						clearInterval(clearTop);
						
					}).on("mouseleave",function () {
						clearTop = setTimeout(function(){
						if(e.is(":hidden"))	e.css("top","");
						},500)
					})

					e.on("mousewheel DOMMouseScroll", function (event) {
						event.preventDefault();
						event.stopPropagation();
						ioft2 = e.offset().top - $(window).scrollTop();
						step = 100;
					
						if(e.css("opacity")!=1){return ;}
						
						if(ioft + ih > wh){
							var delta = (event.originalEvent.wheelDelta && (event.originalEvent.wheelDelta > 0 ? 1 : -1)) || (event.originalEvent.detail && (event.originalEvent.detail > 0 ? -1 : 1));      
							if(delta== -1){
								if(ih + ioft2 > wh){
									if( ioft2 - step < wh - ih){ step = Math.abs(wh - ih - ioft2) }
									e.stop().animate({"top": e.position().top - step },240)
								}
							}
							if(delta== 1){
								if(ioft2 < 0 ){
									if( ioft2 > -step){ step = Math.abs(ioft2) } 
									e.stop().animate({"top":e.position().top + step},240)
								}
							}	
						}
					})
			})


			primary.find(".dnngo_menu_list").each(function () {
				var line = $("<div class=\"line\"></div>");
				var n = $(this).parent("div").attr("class").split("numbercolumns-")[1].split(" ")[0];
				for (var i = 0; i < n; i++) {
					line.append("<span></span>")
				}
				$(this).find(".dnngo_submenu").each(function () {
					$(this).children("ul").unwrap();
				})

				$(this).after(line);
			})

			me.data("clickdisplay",m.clickdisplay).menusKeyboard();

		});
	};
})(jQuery);

(function ($) {
	$.fn.menusKeyboard = function () {

		var menus = $(this);
		var curr = menus.find(":focus");
		var keyCode;
		var shiftKey;
		var role ;
		var clickdisplay =  menus.data("clickdisplay");
		var keydown = false;

		function menusondownkey(e, key) {
			switch (key) {
				case 9:
					menusonfocus("tab");
					break;
				case 13:
				case 32:
					if (curr.parent("li").hasClass("dir") && curr.siblings("div").is(":hidden")) {
						e.preventDefault();
						menusonfocus("enter");
					}
					break;
				case 37:
					e.preventDefault();
					menusonfocus("left");
					break;
				case 38:
					e.preventDefault();
					menusonfocus("up");
					break;
				case 39:
					e.preventDefault();
					menusonfocus("right");
					break;
				case 40:
					e.preventDefault();
					menusonfocus("down");
					break;
				case 27:
					e.preventDefault();
					menusonfocus("end");
					break;
			}

		}

		function menusonup() {
			if(role=="menubar" && curr.siblings("div").length){

				clickdisplay ? curr.parent().click():curr.parent().mouseenter();

				curr.siblings("div").find("a").last().focus();

			}else if(role=="menu"){
				if (curr.parent("li").prev().length) {
					curr.parent("li").prev().children("a").focus();
				} else {
					curr.parent("li").siblings().last().children("a").focus();
				}
			}

		}

		function menusondown() {
			if(role=="menubar" && curr.siblings("div").length){
				clickdisplay ? curr.parent().click():curr.parent().mouseenter();
				curr.siblings("div").find("a").eq(0).focus();
			}else if(role=="menu"){
				if (curr.parent("li").next().length) {
					curr.parent("li").next().children("a").focus();
				} else {
					curr.parent("li").siblings().first().children("a").focus();
				}
			}

		}

		function menusonright() {
			if(role=="menubar"){
				if (curr.parent("li").next().length) {
					curr.parent("li").next().children("a").focus();
				} else {
					curr.parent("li").siblings().first().children("a").focus();
				}
				clickdisplay && menus.trigger("blur");
			}else if(role=="menu" && curr.siblings("div").length){
				curr.parent().mouseenter();
				curr.siblings("div").find("a").eq(0).focus();
			}
		}

		function menusonleft() {
			if(role=="menubar"){
				if (curr.parent("li").prev().length) {
					curr.parent("li").prev().children("a").focus();
				} else {
					curr.parent("li").siblings().last().children("a").focus();
				}
				clickdisplay && menus.trigger("blur");
			}else if(role=="menu"){
				var p = curr.parent().parents("li.dir").first();
				p.mouseleave().children("a").focus();
				p.parents("li.dir").first().mouseenter();	
			}
		}

		function menusonfocus(action) {

			switch (action) {
				case "first":
					menus.find("a").eq(0).focus();
					break;
				case "down":
					menusondown();
					break;
				case "up":
					menusonup();
					break;
				case "right":
					menusonright();
				break;
				case "left":
					menusonleft();
				break;
				case "enter":
					clickdisplay ? curr.parent().click():curr.parent().mouseenter();
				break;
				case "end":
					curr.parents("li.dir").last().mouseenter().children("a").focus();
					clickdisplay ? menus.trigger("blur"):curr.mouseleave();
					drop = false;
				break;
				
				curr = menus.find(":focus");
				role = curr.parents("ul").first().attr("role");
				if (curr.parents("ul").eq(0).hasClass("primary_structure")) {
					curr.parent().mouseleave();
				}


			}
		}
		menus.on("keydown", function (e) {
			keyCode = e.keyCode || e.which || e.charCode;
			shiftKey = e.shiftKey;
			if (menus.find("a").is(":focus") || keyCode == 123) {
				//curr.mouseout();
				curr = menus.find(":focus");
				role = curr.parents("ul").first().attr("role");
				if (shiftKey && keyCode == 123) {
					e.preventDefault();
					menusonfocus("first");
				} else if (shiftKey && keyCode == 9) {
					menusonfocus("backtab");
				} else {
					menusondownkey(e, e.keyCode);
				}
			}
			keydown = true;
		}).on("keyup", function (e) {
			menus.find(":focus").parent().siblings("li.dir").children("div:visible").each(function(){
				$(this).parent("li.dir").mouseleave();
				$(this).parent("li.dir").parents("li.dir").first().mouseenter();
				clickdisplay && menus.trigger("blur");	
			})	
			keydown = false;
		}).find("a").on("blur",function(){
			if(!menus.is(":focus-within") && keydown){ 
				clickdisplay ? menus.trigger("blur") : menus.find(".dnngo_menuslide:visible").find("li").eq(0).mouseleave();
			}
			keydown = false;	
		});

	};
})(jQuery);

 