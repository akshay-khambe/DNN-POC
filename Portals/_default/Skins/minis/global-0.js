
var GlobalThemeOptions = {
    accent:"#1abc9c ",
    accent2:"#523ee8",
    accent3:"#fb7c35",
    accent4:"#1fa4e8",
};





/* megamenu.js start*/

/* megamenu.js start*/


/** dnngo.js start*/

/** dnngo.js end*/

/*Page Animating*/
$(document).ready(function() {
    
    if ($(".page-loaders").length === 0 ||  typeof DNNapplyTypography != "undefined"  ) {
        return false;
    }

    var isAnimating = false;
    $('body').addClass('page-loader-changing');

    var alinkAnimating = function(event,t) {

        var href = t.attr('href');

        if (!href) {
            return;
        }
        if (href.substring(0, 1) == "#"){
            return;
        }
        if( href.substring(0, 4) !== "http" &&  href.substring(0, 1) !== "/" ){
            return;
        }
        if(href.split("#")[0] == window.location.href.split("#")[0] ){
            return;
        }
        if (href.indexOf(".jpg") !==-1 || href.indexOf(".png") !==-1 || href.indexOf(".gif") !==-1 || href.indexOf(".bmp") !==-1) {
            return;
        }
        if(t.attr("class")){
            if (t.attr("class").indexOf("LightBox") !== -1 ) {
                return;
            }
        }
        if (t.hasClass("mm-title")) {
            return;
        }

        event.preventDefault();
        var newPage = href;
        var target = t.attr("target") ? t.attr("target") : "_self";
        //if the page is not animating - trigger animation
        if (!isAnimating) {
            isAnimating = true;
            $('body').addClass('page-is-changing');
            setTimeout(function() {
                window.open(newPage, target);
                if (target !== "_self") {
                    $('body').delay(300).queue(function() {
                        $('body').removeClass('page-is-changing').dequeue();
                        isAnimating = false;
                    });
                } 

            }, 300);
            
        }
    }

    $('.dng-megamenu,.dng-mobilemenu,.page-breadcrumbs,.footer-info-box,.userMenu,.logo,.link-animate').on('click', 'a',function(event){
        alinkAnimating(event,$(this));
    });
    $('.link-animate').on('click',function(event){
        alinkAnimating(event,$(this));
    });

});




/** custom.js start*/
(function($){const image=new Image();image.src='data:image/webp;base64,UklGRiQAAABXRUJQVlA4IBgAAAAwAQCdASoBAAEAAwA0JaQAA3AA/vuUAAA=';image.onerror=function(){if(typeof GetWebpConvertServiceUrl!="undefined"&&$(".d-wrapper").eq(0).data("mid")){let WebpServiceUrl=GetWebpConvertServiceUrl+$(".d-wrapper").eq(0).data("mid")+"&f=png&WebP=";let LocalUrl=window.location.host;$('.content-builder img[src*=".webp"],.content-builder img[data-src*=".webp"],.content-builder [style*=".webp"],.content-builder a[href*=".webp"],.content-builder video[poster*=".webp"]').each(function(){let isImg=this.localName.toUpperCase();let url=false;if(isImg=="IMG"){url=$(this).attr("data-src")||$(this).attr("src");}else if(isImg=="A"){url=$(this).attr("href");}else if(isImg=="VIDEO"){url=$(this).attr("poster");}else{url=this.style.backgroundImage.split('"')[1];}
if(url.indexOf(LocalUrl)!=-1){url=url.split(LocalUrl)[1];};if((url.indexOf("http://")!=-1||url.indexOf("https://")!=-1))return;url=WebpServiceUrl+encodeURIComponent(url);if(isImg=="IMG"){$(this).attr("src").indexOf(".webp")!=-1?$(this).attr("src",url):$(this).attr("data-src",url);}else if(isImg=="A"){$(this).attr("href",url);}else if(isImg=="VIDEO"){$(this).attr("poster",url);}else{this.style.backgroundImage='url('+url+')';}})}};})(jQuery);var floatingOffset=0;jQuery(".header-bg-box").each(function(){if(jQuery(this).data("height")){floatingOffset+=parseInt($(this).data("height"));}})
var defaultfloatingOffset=floatingOffset;if(jQuery(".floating-nav-scrollup").length){floatingOffset=defaultfloatingOffset=0;}
if(jQuery(window).width()<992){if(jQuery(".mobile-header").css("position")=="fixed"){floatingOffset=$(".mobile-header-replace").height()||$(".mobile-header").height();}else{floatingOffset=0;}}
jQuery(window).resize(function(){if(jQuery(window).width()<992){if(jQuery(".mobile-header").css("position")=="fixed"){floatingOffset=jQuery(".mobile-header-replace").height()||$(".mobile-header").height();}else{floatingOffset=0;}}else{floatingOffset=defaultfloatingOffset;}});jQuery.fn.offsetTopParent=function(parent){return $(this).offset().top+parent.scrollTop();}
var ImgLoad=function(callback,e){var imgdefereds=[];e.find('img').each(function(){var dfd=jQuery.Deferred();jQuery(this).bind('load',function(){dfd.resolve();}).bind('error',function(){dfd.resolve();});if(this.complete){setTimeout(function(){dfd.resolve();},1000);}
imgdefereds.push(dfd);});jQuery.when.apply(null,imgdefereds).done(function(){callback();});};(function($){"use strict";var DNG={};DNG.GetUrlParam=function(paraName){var url=document.location.toString();var arrObj=url.split("?");if(arrObj.length>1){var arrPara=arrObj[1].split("&");var arr;for(var i=0;i<arrPara.length;i++){arr=arrPara[i].split("=");if(arr!=null&&arr[0]==paraName){return arr[1]}}return""}else{return""}};DNG.fixedFooter=function(){$(".fixed_footer").each(function(){var e=$(this);e.wrap("<div class=\"fixed_footer_clone\"><div class=\"fixed_footer_bottom\"></div></div>");var wh=$(window).height(),parent=e.parent().parent(),parent2=e.parent();parent.height(e.innerHeight());$(window).resize(function(){parent.height(e.innerHeight());e.css("max-height",$(window).height());wh=$(window).height();parent2.height($(window).scrollTop()+wh-parent.offset().top);});$(window).on('load',function(){parent.height(e.innerHeight());e.css("max-height",$(window).height());wh=$(window).height();parent2.height($(window).scrollTop()+wh-parent.offset().top);});e.addClass("active");e.css("max-height",$(window).height());parent2.height($(window).scrollTop()+wh-parent.offset().top);$(window).scroll(function(){parent2.height($(window).scrollTop()+wh-parent.offset().top);});});};DNG.pageLoaders=function(){$(".page-loaders").fadeOut();};DNG.floatingNav=function(){$(".header-wrap.floating-nav").each(function(){var e=$(this),top=e.data("top")!==undefined?e.data("top"):Math.max(e.offset().top,1);var floating_nav=function(){if($(window).scrollTop()>=top){if(!e.hasClass("floating-active")){if(e.hasClass("floating-nav-fade")){e.stop().css("opacity","0").animate({"opacity":"1",},500).addClass("floating-active");}else if(e.hasClass("floating-nav-slide")){e.stop().css({"opacity":"0",top:-e.height()+"px"}).animate({"opacity":"1",top:"0"},300).addClass("floating-active");}else if(e.hasClass("floating-nav-sticky")){e.addClass("floating-active");}}}else{if(e.hasClass("floating-active")){if(e.hasClass("floating-nav-fade")||e.hasClass("floating-nav-slide")){e.stop().css({"opacity":1}).removeClass("floating-active");;}}
if(e.hasClass("floating-nav-sticky")){e.removeClass("floating-active");}}};var minHeight=$("header.header_bg").height();e.parent(".header-replace").css("min-height",minHeight).addClass("sticky-fixed");if(e.hasClass("floating-nav-scrollup")){var scroll=e.offset().top;var top2=top;$(window).scroll(function(){if($(window).scrollTop()>scroll){if($(window).scrollTop()>=top){e.addClass("floating-active");scroll=$(window).scrollTop();}
if(e.hasClass("floating-active-down")&&$(window).scrollTop()>=top){e.removeClass("floating-active-down").addClass("floating-active-up");}}else{if($(window).scrollTop()<=top2){e.removeClass("floating-active floating-active-up floating-active-down");scroll=top;return;}else if(scroll-$(window).scrollTop()>10&&$(window).scrollTop()>=top){scroll=$(window).scrollTop();e.removeClass("floating-active-up").addClass("floating-active-down");}}});top=e.height()+100+top;}
floating_nav();$(window).scroll(function(){floating_nav();});});};DNG.backToTop=function(){jQuery('#back-to-top').on("click",function(){jQuery('body,html').stop().animate({scrollTop:0},($("html").css("scroll-behavior")=="smooth"?0:800));});var backtop=function(){if(Math.max.call(window.scrollTop,document.body.scrollTop,document.documentElement.scrollTop)>245){jQuery('#back-to-top').addClass("active");}else{jQuery('#back-to-top').removeClass("active");}};$(window).on('load',function(){backtop();});$(window).scroll(function(){backtop();});var share=jQuery('.fixed-widget-list .share');var shareout="";var length=share.prevAll().length;share.on("mouseover",function(){if($(window).width()<=767)return false;$(this).addClass("active").prevAll().each(function(i){$(this).stop().delay(40*i).queue(function(){$(this).addClass("active");$(this).dequeue();})})}).on("click",function(){if(share.hasClass("active")){share.removeClass("active").prevAll().each(function(i){$(this).stop().delay(40*(length-i)).queue(function(){$(this).removeClass("active");$(this).dequeue();})})}else{$(this).addClass("active").prevAll().each(function(i){$(this).stop().delay(40*i).queue(function(){$(this).addClass("active");$(this).dequeue();})})}}).parent().on("mouseleave",function(){if($(window).width()<=767)return false;shareout=setTimeout(function(){share.removeClass("active").prevAll().each(function(i){$(this).stop().delay(40*(length-i)).queue(function(){$(this).removeClass("active");$(this).dequeue();})})},300)}).on("mouseenter",function(){shareout&&clearInterval(shareout);});};DNG.mobileheadernavbar=function(){$("body > form").append($(".mobile-header-navbar .mega-menu-wrap").addClass("mobile_menu").append("<span class='mobile_menu_close lnr lnr-cross'></span>"));if($("#wpadminbar").length!=0&&$(".mobile-header").css("position")=="fixed"){$(window).scroll(function(){$(".mobile-header").css("top",Math.max($("#wpadminbar").height()-$(window).scrollTop(),0));})}};DNG.pageTitle=function(){$("#page-title").each(function(){var e=$(this);if(e.data("height")==="full"){e.children(".page-title-container").innerHeight($(window).height()-e.offset().top);$(window).resize(function(){e.children(".page-title-container").innerHeight($(window).height()-e.offset().top);});}
e.find(".page-title-arrow").on("click",function(){jQuery('body,html').stop().animate({scrollTop:e.innerHeight()+e.offset().top-floatingOffset},($("html").css("scroll-behavior")=="smooth"?0:800));});var center=e.find(".center-v.scrolling-text");if(center.length){var con_height=center.innerHeight();var e_height=e.innerHeight();if($(".page-breadcrumbs.inset").length){e_height=e.innerHeight()-$(".page-breadcrumbs.inset").innerHeight();}
var offset_bottom=e_height-con_height-center.position().top;var e_top=e.offset().top-floatingOffset;var curr_roll=0;$(window).resize(function(){con_height=center.innerHeight();e_height=e.innerHeight();if($(".page-breadcrumbs.inset").length){e_height=e.innerHeight()-$(".page-breadcrumbs.inset").innerHeight();}});$(window).scroll(function(){if(e_top<$(window).scrollTop()){curr_roll=$(window).scrollTop()-e_top;center.css({'transform':'translateY('+Math.min(curr_roll/2,offset_bottom)+'px)','opacity':1-(1/e_height)*(curr_roll)})}else{center.removeAttr("style")}})}});};DNG.detailPageTitle=function(){$(".detail-pagetitle").each(function(){var e=$(this);if(e.data("height")==="full"){e.innerHeight($(window).height()-e.offset().top);$(window).resize(function(){e.innerHeight($(window).height()-e.offset().top);});}
e.find(".page-title-arrow").on("click",function(){jQuery('body,html').stop().animate({scrollTop:e.innerHeight()+e.offset().top-floatingOffset},($("html").css("scroll-behavior")=="smooth"?0:800));});});};DNG.pageEndAnimating=function(){if($(".page-loaders").length===0||typeof DNNapplyTypography!="undefined"){return false;}
var isAnimating=false;$('body').addClass('page-loader-changing');var alinkAnimating=function(event,t){var href=t.attr('href');if(!href){return;}
if(href.substring(0,1)=="#"){return;}
if(href.substring(0,4)!=="http"&&href.substring(0,1)!=="/"){return;}
if(href.split("#")[0]==window.location.href.split("#")[0]){return;}
if(href.indexOf(".jpg")!==-1||href.indexOf(".png")!==-1||href.indexOf(".gif")!==-1||href.indexOf(".bmp")!==-1){return;}
if(t.attr("class")){if(t.attr("class").indexOf("LightBox")!==-1){return;}}
if(t.hasClass("mm-title")){return;}
event.preventDefault();var newPage=href;var target=t.attr("target")?t.attr("target"):"_self";if(!isAnimating){isAnimating=true;$('body').addClass('page-is-changing');setTimeout(function(){window.open(newPage,target);if(target!=="_self"){$('body').delay(300).queue(function(){$('body').removeClass('page-is-changing').dequeue();isAnimating=false;});}},300);}}
$('.dng-megamenu,.dng-mobilemenu,.page-breadcrumbs,.footer-info-box,.userMenu,.logo,.link-animate').on('click','a',function(event){alinkAnimating(event,$(this));});$('.link-animate').on('click',function(event){alinkAnimating(event,$(this));});};DNG.sidebarSticky=function(){$(".sidebar-fix").each(function(){var box=$(this);var container=box.find(".container.has-sidebar");var left=box.data("width");if(!container.length)return;function sidebarSwitch(){if(container.offset().left<left){$("html").addClass("switch-sidebar");}else{$("html").removeClass("switch-sidebar");}}
sidebarSwitch();$(window).on("resize",function(){sidebarSwitch();})
if(container.offset().left<left){setTimeout(function(){box.addClass("show");},500)}else{box.addClass("show");}})
$('.sidebar_sticky[data-sticky="on"],.sticky_media,.sidebar-sticky').each(function(){if(typeof DNNapplyTypography!="undefined"){return;}
var wpadminbar=$("#wpadminbar").length==0?0:$("#wpadminbar").height();var e=$(this),parent=e.parent(),parentbox=e.parents(".is-container,[data-sticky=parent]").eq(0),offset=e.data("offset")?e.data("offset"):0,offsetTop=wpadminbar+floatingOffset+offset,stickyEnd=parseInt(parentbox.height())+parentbox.offset().top,parenttop=parent.offset().top-offsetTop,height=e.innerHeight(),parentwidth=parent.width(),parentboxwidth=parentbox.width();e.width(e.width());parentbox.css("min-height",height);if($(window).width()<=991){parentbox.css("min-height","auto");e.width("auto");e.css("position","sticky");}
$(window).on('load resize',function(){height=e.innerHeight();stickyEnd=parseInt(parentbox.height())+parentbox.offset().top;offsetTop=wpadminbar+floatingOffset+offset;parenttop=parent.offset().top-offsetTop;e.width(parent.width());parentbox.css("min-height",height);parentwidth=parent.width();parentboxwidth=parentbox.width();})
function stickyposition(){if(parentwidth+30>=parentboxwidth){parentbox.css("min-height","auto");e.removeAttr("style");return false;}else{if($(window).scrollTop()>parenttop){height=e.innerHeight();stickyEnd=parseInt(parentbox.height())+parentbox.offset().top;parenttop=parent.offset().top-offsetTop;if($(window).scrollTop()>stickyEnd-height-offsetTop){e.css({"position":"relative","top":stickyEnd-(height+parenttop)-offsetTop,});}else{e.css({"position":"fixed","top":offsetTop});}}else{e.css({"position":"relative","top":"0"});}}}
$(window).on("scroll resize",function(){stickyposition();});stickyposition();});$(".sidebar-menu-icon").on("click",function(){var pr=window.innerWidth-$(window).width();$("html").toggleClass("show-sidebar");$("html").css({"overflow":"hidden","padding-right":pr});});$(".sidebar-menu-close").on("click",function(){$("html").toggleClass("show-sidebar");$("html").css({"overflow":"","padding-right":''});});};DNG.anchorSmooth=function(){var OnePageOption=DNG.OnePageOption;var urlhref=window.location.pathname;var reg=/[~!@#$%^&*()/\|,.<>?"'();:=\[\]{}]/;var scrollbox=jQuery('body,html');var w=$(window);if($(".dng-main").data("page-type")=="verticalfullpage"){scrollbox=jQuery(".dng-main");w=jQuery(".dng-main");}
if(OnePageOption.duration){$(".primary_structure >li.current >a,.menu_list.mm-listview > li.current >a,.mobilemenu-main .gomenu>ul>li>a").each(function(){var h=$(this).attr("href");if(h==window.location.href.split("#")[0]||h.substring(0,h.length-1)==window.location.href.split("#")[0]){$(this).on("click",function(e){e.preventDefault();if($(this).parents(".mm-listview").length){$(".dng-mobilemenu .mobile-menu-icon").eq(0).click();}
scrollbox.stop().animate({scrollTop:0},($("html").css("scroll-behavior")=="smooth"?0:(OnePageOption.duration?OnePageOption.duration:500)),OnePageOption.easing);window.history.pushState({},0,h);return false;}).addClass("dng-anchor").attr("href","#Body")}})}else{var OnePageOption={duration:500,easing:"swing"};}
$('.content-builder,.header_bg,.mobile-header,.dng-leftmenu,.dng-megamenu,.dng-sidepanemenu,#anchorNav,.dng-mobilemenu,.mobilemenu-main .gomenu').find('a[href*="#"]:not(.mm-btn):not(.mm-next):not(.mm-title)').each(function(){if(!$(this).hasClass("LightBox")&&!$(this).hasClass("is-lightbox")){if(!reg.test(this.hash.trim().substr(1))){var $target=this.hash&&this.hash!="#"?$(this.hash):false;var $hash=this.hash;var url=this.pathname;if($target.length&&url==urlhref){$(this).addClass('dng-anchor').on("click",function(e){e.preventDefault();var t=$target.offset().top;if($(".dng-main").data("page-type")=="verticalfullpage"){t=$target.offsetTopParent(scrollbox);}
scrollbox.stop().animate({scrollTop:t-floatingOffset},($("html").css("scroll-behavior")=="smooth"?0:(OnePageOption.duration?OnePageOption.duration:500)),OnePageOption.easing?OnePageOption.easing:"swing");if($hash!="#Body"){window.history.pushState(null,null,$hash);}});}}}})
function menuAnchorPosition(menu){var $current=menu.find('.dng-anchor').eq(0);if($current.length){$current.parent().addClass("current");}
w.scroll(function(){if(parseInt(w.scrollTop())+w.height()==parseInt($(document).height())){$current=menu.find('.dng-anchor').last();}else{menu.find('.dng-anchor').each(function(){var t=$(this.hash).offset().top;if($(".dng-main").data("page-type")=="verticalfullpage"){t=$(this.hash).offsetTopParent(scrollbox);}
if(w.scrollTop()>=t-floatingOffset-1){$current=$(this);}else{return false;}});}
if(w.scrollTop()==0){menu.find('.dng-anchor').eq(0);}
$current.parents("ul").find("a[href*=#]").parent().removeClass("current");$current.parent().addClass("current").children("a").focus();})}
menuAnchorPosition($(".dng-leftmenu"));menuAnchorPosition($(".dng-megamenu"));menuAnchorPosition($(".dng-sidepanemenu"));menuAnchorPosition($("#anchorNav"));menuAnchorPosition($(".dng-mobilemenu"));menuAnchorPosition($(".mobilemenu-main .gomenu"));function AnchorPosition(anchor){var $current=anchor.children('li').eq(0);$current.addClass("active");w.scroll(function(){anchor.find('li > a').each(function(){var t=$(this.hash).offset().top;if($(".dng-main").data("page-type")=="verticalfullpage"){t=$(this.hash).offsetTopParent(scrollbox);}
if(w.scrollTop()>=t-floatingOffset-1){$current=$(this).parent("li");}else{return false;}});$current.addClass("active").siblings().removeClass("active");})}
AnchorPosition($(".anchor-link"));};DNG.editMode_panename=function(){$(".addModuleHandler").each(function(){$(this).parent().attr("id")&&$(this).after("<div class=\"edit-panename\">"+$(this).parent().attr("id").split("dnn_")[1]+"</div>")})};DNG.carousel04=function(){var buttonBox=$(".carousel04-buttonBox");if($(window)[0].innerWidth<768){buttonBox.height(buttonBox.find(".box").height());}else{buttonBox.height("auto");}
$(window).resize(function(){if($(window)[0].innerWidth<768){buttonBox.height(buttonBox.find(".box").height());}else{buttonBox.height("auto");}});};DNG.dngparallax=function(){$('[data-parallax="parallax"]').each(function(){if(typeof jQuery.fn.paroller=="function"){$(this).paroller();};$(window).scroll();$(this).addClass("parallax-load");})
$('[data-parallax="youtube"],[data-parallax="video"]').each(function(){var e=$(this);e.prepend('<div class="dng-video-wrapper"><div class="dng-video-responsive"></div></div>');var responsive=e.find(".dng-video-responsive");var box=e.find(".dng-video-wrapper");var offsetTop=e.offset().top;var boxheight=parseInt(e.height());if(e.data("parallax")=="youtube"){if(!e.data("url"))return false;var id='playerBox'+e.data("id");responsive.append('<div class="playerBox youtube-playerBox" id="'+id+'" style="width:300px;height:150px;"></div>')
if(!$("#youtube_iframe_api").length){var iframe=e.find(".playerBox").eq(0);var tag=document.createElement('script');tag.src="https://www.youtube.com/iframe_api";tag.id="youtube_iframe_api";var firstScriptTag=document.getElementsByTagName('script')[0];firstScriptTag.parentNode.insertBefore(tag,firstScriptTag);}
var player,play=false;window.onYouTubePlayerAPIReady=function(){var playerVars={controls:0,rel:0,showinfo:0,modestbranding:1,version:3,iv_load_policy:3,wmode:"transparent",playsinline:1,fs:0,disablekb:1,loop:0};if(e.data("loop"))playerVars["loop"]=1;if(e.data("muted"))playerVars["mute"]=1;if(e.data("start"))playerVars["start"]=e.data("start");if(e.data("end"))playerVars["end"]=e.data("end");player=new YT.Player(id,{videoId:e.data("url"),playerVars:playerVars,list:false,listType:false,events:{'onReady':onPlayerReady,'onStateChange':onPlayerStateChange,'onPlaybackQualityChange':onPlayerPlaybackQualityChange,}});function onPlayerReady(event){event.target.playVideo();if(e.data("viewport")){if(!play&&$(window).scrollTop()+parseInt($(window).height())>offsetTop&&$(window).scrollTop()<offsetTop+boxheight){event.target.playVideo();play=true;}else{event.target.pauseVideo();}
$(window).scroll(function(){if(!play&&$(window).scrollTop()+parseInt($(window).height())>offsetTop&&$(window).scrollTop()<offsetTop+boxheight){event.target.playVideo();play=true;}
if(play&&($(window).scrollTop()>offsetTop+boxheight||$(window).scrollTop()+parseInt($(window).height())<offsetTop)){event.target.pauseVideo();play=false;}})}
iframe=e.find(".playerBox").eq(0);count();}
function onPlayerStateChange(event){if(e.data("loop")){if(event.data==YT.PlayerState.ENDED){if(e.data("start")){player.seekTo(e.data("start"));}else{player.seekTo(0);}
player.playVideo();}}}
function onPlayerPlaybackQualityChange(event){}}}else{var html='<video playsinline class="playerBox"';if(e.data("loop"))html+=' loop';if(e.data("muted"))html+=' muted';if(!e.data("viewport"))html+=' autoplay';html+='>';if(e.data("mp4"))html+=' <source src="'+e.data("mp4")+'" type="video/mp4">';if(e.data("ogg"))html+=' <source src="'+e.data("ogg")+'" type="video/ogg">';if(e.data("webm"))html+=' <source src="'+e.data("webm")+'" type="video/webm">';html+='</video>';responsive.append(html)
var iframe=e.find(".playerBox").eq(0);iframe[0].addEventListener("loadedmetadata",function(){count();var play=false;if(e.data("viewport")){if(!play&&$(window).scrollTop()+parseInt($(window).height())>offsetTop&&$(window).scrollTop()<offsetTop+boxheight){iframe[0].play();play=true;}
$(window).scroll(function(){if(!play&&$(window).scrollTop()+parseInt($(window).height())>offsetTop&&$(window).scrollTop()<offsetTop+boxheight){iframe[0].play();play=true;}
if(play&&($(window).scrollTop()>offsetTop+boxheight||$(window).scrollTop()+parseInt($(window).height())<offsetTop)){iframe[0].pause();play=false;}})}else{iframe[0].play();}});}
function count(){iframe.attr({"width":iframe.width(),"height":iframe.height()}).css({"width":"100%","height":"100%"})
responsive.css("padding-bottom",(parseInt(iframe.attr("height"))/parseInt(iframe.attr("width"))*100+"%"))
var width=(parseInt(e.innerHeight())/parseInt(box.innerHeight()))*(parseInt(box.innerWidth())/parseInt(e.innerWidth()))*parseInt(e.innerWidth());box.innerWidth(width+2);$(window).resize(function(){width=(parseInt(e.innerHeight())/parseInt(box.innerHeight()))*(parseInt(box.innerWidth())/parseInt(e.innerWidth()))*parseInt(e.innerWidth());box.innerWidth(width+2);offsetTop=e.offset().top;boxheight=parseInt(e.height());})
$(window).load(function(){width=(parseInt(e.innerHeight())/parseInt(box.innerHeight()))*(parseInt(box.innerWidth())/parseInt(e.innerWidth()))*parseInt(e.innerWidth());box.innerWidth(width+2);offsetTop=e.offset().top;boxheight=parseInt(e.height());$(window).scroll();})}
$(this).addClass("parallax-load");})};DNG.sicoSVG=function(){$("i.sico").each(function(){if(!$(this).find("svg").length){var name=$(this).attr("class").split("sico ")[1].split(" ")[0];$(this).append('<svg><use xlink:href="#'+name+'"></use></svg>')}})}
$(document).ready(function(){DNG.OnePageOption=typeof OnePageOption!="undefined"?OnePageOption:{};DNG.fixedFooter();DNG.floatingNav();DNG.backToTop();DNG.pageTitle();DNG.detailPageTitle();DNG.sidebarSticky();DNG.anchorSmooth();DNG.editMode_panename();DNG.dngparallax();DNG.carousel04();DNG.sicoSVG();});$(document).ready(function(){$(window).on("load",function(){if($("body").hasClass("body-side-static-left")||$("body").hasClass("body-side-static-right")){DNG.pageLoaders();}else{DNG.pageLoaders();}
if(typeof Main!="undefined"&&typeof Main.LightBoxPatch!="undefined")Main.LightBoxPatch();});});if(typeof ImgLoad!="undefined"){$(document).ready(function(){ImgLoad(function(){DNG.pageLoaders();},$("body"))});}})(jQuery);$('link[mediatitle="noneall"],link[media="none"]').each(function(){$(this).attr("media","all")})
$(".html5-video").each(function(){var e=$(this),btn=e.find(".video-play"),video=e.find("video")[0];btn.show().on("click",function(){video.play();})
video.addEventListener('play',function(){btn.hide();});video.addEventListener('pause',function(){btn.show();});video.addEventListener('ended',function(){btn.show();});})
$(".Login .userName > a").click(function(){$(this).siblings("ul").css("display")=="none"?$(this).siblings("ul").slideDown(200):$(this).siblings("ul").slideUp(200);return false;})
if(navigator.userAgent.match(/Trident\/7\./)){document.body.addEventListener("mousewheel",function(){event.preventDefault();var wd=event.wheelDelta;var csp=window.pageYOffset;window.scrollTo(0,csp-wd);});};if($("body").hasClass("dnnEditState")){$(".BannerPane").before($(".overlay-panel-content"));$(document).ready(function(){$(".BannerPane").after($(".side-panel-box"));})}
$(document).ready(function(){$(".btn-plugin-import").on("click",function(){history.replaceState(null,'',location.pathname+location.search);})})
$(document).ready(function(){$("a.search").attr("aria-label","Search")})
$(document).ready(function(e){$('.is-arrow-down a').on('click',function(e){$('html,body').animate({scrollTop:$(this).parents(".is-section").offset().top+parseInt($(this).parents(".is-section").height())},($("html").css("scroll-behavior")=="smooth"?0:800));e.preventDefault();e.stopImmediatePropagation();return false;});$('.d-wrapper > div:first-child').find('.is-scale-animated').addClass('is-appeared');$('.is-scale-animated').appear();$('.is-scale-animated').on('appear',function(){$(this).addClass('is-appeared');});$('.is-scale-animated').on('disappear',function(){$(this).removeClass('is-appeared');});$('.is-animated').each(function(){$(this).addClass('animated');$(this).addClass('fadeOut');});$('.is-section').appear();$('.is-section').each(function(){if($(this).is(':appeared')){applyAnimationSection($(this));}});if($(window).scrollTop()==0){setTimeout(applyAnimationSection($('.is-section').first()),2000);}
$('.is-section').on('appear',function(){applyAnimationSection($(this));});$('.is-section').on('disappear',function(){removeAnimationSection($(this));});$('.is-container').appear();$('.is-container').each(function(){if($(this).is(':appeared')){applyAnimation($(this));}});if($(window).scrollTop()==0){$('.is-section').first().find('.is-container').each(function(){setTimeout(applyAnimation($(this)),2000);});}
$('.is-container').on('appear',function(){applyAnimation($(this));});$('.is-container').on('disappear',function(){removeAnimation($(this));});});function applyAnimation($root){var n=0;$root.find('.is-animated').each(function(){if($(this).data('animated')!='done'){if(n>0)$(this).css('animation-delay',n+'s');n=n+0.2;$(this).removeClass('fadeOut');if($(this).hasClass('is-pulse'))$(this).addClass('pulse');if($(this).hasClass('is-bounceIn'))$(this).addClass('bounceIn');if($(this).hasClass('is-fadeIn'))$(this).addClass('fadeIn');if($(this).hasClass('is-fadeInDown'))$(this).addClass('fadeInDown');if($(this).hasClass('is-fadeInLeft'))$(this).addClass('fadeInLeft');if($(this).hasClass('is-fadeInRight'))$(this).addClass('fadeInRight');if($(this).hasClass('is-fadeInUp'))$(this).addClass('fadeInUp');if($(this).hasClass('is-flipInX'))$(this).addClass('flipInX');if($(this).hasClass('is-flipInY'))$(this).addClass('flipInY');if($(this).hasClass('is-slideInUp'))$(this).addClass('slideInUp');if($(this).hasClass('is-slideInDown'))$(this).addClass('slideInDown');if($(this).hasClass('is-slideInLeft'))$(this).addClass('slideInLeft');if($(this).hasClass('is-slideInRight'))$(this).addClass('slideInRight');if($(this).hasClass('is-zoomIn'))$(this).addClass('zoomIn');if($(this).hasClass('once'))$(this).data('animated','done');}});}
function removeAnimation($root){$root.find('.is-animated').each(function(){$(this).removeClass('pulse');$(this).removeClass('bounceIn');$(this).removeClass('fadeIn');$(this).removeClass('fadeInDown');$(this).removeClass('fadeInLeft');$(this).removeClass('fadeInRight');$(this).removeClass('fadeInUp');$(this).removeClass('flipInX');$(this).removeClass('flipInY');$(this).removeClass('slideInUp');$(this).removeClass('slideInDown');$(this).removeClass('slideInLeft');$(this).removeClass('slideInRight');$(this).removeClass('zoomIn');if(!$(this).hasClass('once')){$(this).addClass('fadeOut');}});}
function applyAnimationSection($section){var n=0;if($section.hasClass('is-animated')){if($section.data('animated')!='done'){if(n>0)$section.css('animation-delay',n+'s');n=n+0.2;$section.removeClass('fadeOut');if($section.hasClass('is-pulse'))$section.addClass('pulse');if($section.hasClass('is-bounceIn'))$section.addClass('bounceIn');if($section.hasClass('is-fadeIn'))$section.addClass('fadeIn');if($section.hasClass('is-fadeInDown'))$section.addClass('fadeInDown');if($section.hasClass('is-fadeInLeft'))$section.addClass('fadeInLeft');if($section.hasClass('is-fadeInRight'))$section.addClass('fadeInRight');if($section.hasClass('is-fadeInUp'))$section.addClass('fadeInUp');if($section.hasClass('is-flipInX'))$section.addClass('flipInX');if($section.hasClass('is-flipInY'))$section.addClass('flipInY');if($section.hasClass('is-slideInUp'))$section.addClass('slideInUp');if($section.hasClass('is-slideInDown'))$section.addClass('slideInDown');if($section.hasClass('is-slideInLeft'))$section.addClass('slideInLeft');if($section.hasClass('is-slideInRight'))$section.addClass('slideInRight');if($section.hasClass('is-zoomIn'))$section.addClass('zoomIn');if($section.hasClass('once'))$section.data('animated','done');}}
$section.find('.is-box.is-animated').each(function(){if($(this).data('animated')!='done'){if(n>0)$(this).css('animation-delay',n+'s');n=n+0.2;$(this).removeClass('fadeOut');if($(this).hasClass('is-pulse'))$(this).addClass('pulse');if($(this).hasClass('is-bounceIn'))$(this).addClass('bounceIn');if($(this).hasClass('is-fadeIn'))$(this).addClass('fadeIn');if($(this).hasClass('is-fadeInDown'))$(this).addClass('fadeInDown');if($(this).hasClass('is-fadeInLeft'))$(this).addClass('fadeInLeft');if($(this).hasClass('is-fadeInRight'))$(this).addClass('fadeInRight');if($(this).hasClass('is-fadeInUp'))$(this).addClass('fadeInUp');if($(this).hasClass('is-flipInX'))$(this).addClass('flipInX');if($(this).hasClass('is-flipInY'))$(this).addClass('flipInY');if($(this).hasClass('is-slideInUp'))$(this).addClass('slideInUp');if($(this).hasClass('is-slideInDown'))$(this).addClass('slideInDown');if($(this).hasClass('is-slideInLeft'))$(this).addClass('slideInLeft');if($(this).hasClass('is-slideInRight'))$(this).addClass('slideInRight');if($(this).hasClass('is-zoomIn'))$(this).addClass('zoomIn');if($(this).hasClass('once'))$(this).data('animated','done');}});}
function removeAnimationSection($section){if($section.hasClass('is-animated')){$section.removeClass('pulse');$section.removeClass('bounceIn');$section.removeClass('fadeIn');$section.removeClass('fadeInDown');$section.removeClass('fadeInLeft');$section.removeClass('fadeInRight');$section.removeClass('fadeInUp');$section.removeClass('flipInX');$section.removeClass('flipInY');$section.removeClass('slideInUp');$section.removeClass('slideInDown');$section.removeClass('slideInLeft');$section.removeClass('slideInRight');$section.removeClass('zoomIn');if(!$section.hasClass('once')){$section.addClass('fadeOut');}}
$section.find('.is-animated').each(function(){$(this).removeClass('pulse');$(this).removeClass('bounceIn');$(this).removeClass('fadeIn');$(this).removeClass('fadeInDown');$(this).removeClass('fadeInLeft');$(this).removeClass('fadeInRight');$(this).removeClass('fadeInUp');$(this).removeClass('flipInX');$(this).removeClass('flipInY');$(this).removeClass('slideInUp');$(this).removeClass('slideInDown');$(this).removeClass('slideInLeft');$(this).removeClass('slideInRight');$(this).removeClass('zoomIn');if(!$(this).hasClass('once')){$(this).addClass('fadeOut');}});}
(function($){var selectors=[];var check_binded=false;var check_lock=false;var defaults={interval:250,force_process:false};var $window=$(window);var $prior_appeared=[];function process(){check_lock=false;for(var index=0,selectorsLength=selectors.length;index<selectorsLength;index++){var $appeared=$(selectors[index]).filter(function(){return $(this).is(':appeared');});$appeared.trigger('appear',[$appeared]);if($prior_appeared[index]){var $disappeared=$prior_appeared[index].not($appeared);$disappeared.trigger('disappear',[$disappeared]);}
$prior_appeared[index]=$appeared;}};function add_selector(selector){selectors.push(selector);$prior_appeared.push();}
$.expr.pseudos['appeared']=function(element){var $element=$(element);if(!$element.is(':visible')){return false;}
var window_left=$window.scrollLeft();var window_top=$window.scrollTop();var offset=$element.offset();var left=offset.left;var top=offset.top;if(top+$element.height()>=window_top&&top-($element.data('appear-top-offset')||0)<=window_top+$window.height()-200&&left+$element.width()>=window_left&&left-($element.data('appear-left-offset')||0)<=window_left+$window.width()){return true;}else{return false;}};$.fn.extend({appear:function(options){var opts=$.extend({},defaults,options||{});var selector=this.selector||this;if(!check_binded){var on_check=function(){if(check_lock){return;}
check_lock=true;setTimeout(process,opts.interval);};$(window).on('scroll',on_check).on('resize',on_check);check_binded=true;}
if(opts.force_process){setTimeout(process,opts.interval);}
add_selector(selector);return $(selector);}});$.extend({force_appear:function(){if(check_binded){process();return true;}
return false;}});})(function(){if(typeof module!=='undefined'){return require('jquery');}else{return jQuery;}}());function loadScript(url,callback){var script=document.createElement("script")
script.type="text/javascript";if(script.readyState){script.onreadystatechange=function(){if(script.readyState=="loaded"||script.readyState=="complete"){script.onreadystatechange=null;callback();}};}else{script.onload=function(){callback();};}
script.src=url;document.body.appendChild(script);}
$(document).ready(function(){function tabs(){$(this).addClass("active").siblings().removeClass("active");var index=$(this).index();var box=$(this).parents(".section-tabs-list,.section-tabs-indexed").siblings(".section-tabs-container").find(".is-container").eq(index);box.fadeIn().addClass("active").siblings(".is-container").hide().removeClass("active");$(window).scroll();if($(window).width()<768){jQuery('body,html').stop().animate({scrollTop:box.offset().top-floatingOffset-30},($("html").css("scroll-behavior")=="smooth"?0:800));}}
if(typeof DNNapplyTypography=="undefined"){$(".section-tabs-list .item,.section-tabs-indexed .item").on("click",tabs)}else{$(".d-wrapper").on("click",".section-tabs-list .item,.section-tabs-indexed .item",tabs)}})
$(window).on('load',function(){setTimeout(function(){$("html").scrollLeft(0);},100)})
$(document).ready(function(){$("header.header_bg").append($(".btn-plugin.btn-plugin-headerlayout"));var ftop=$(".mobile-header").hasClass("header-position")?1:parseInt($(".mobile-header").height());$(window).scroll(function(){if($(".mobile-header").hasClass("floating-nav")){if($(window).scrollTop()>ftop){$(".mobile-header").addClass("floating-nav-active")}else{$(".mobile-header").removeClass("floating-nav-active")}}})})
$(function(){if($(".header-replace.header-position").length&&$(".ContentPane").is(":visible")&&!$(".ContentPane").find(".content-builder").length&&$(".ContentPane").offset().top<=0){$(".ContentPane").css("padding-top",$(".header-replace.header-position").height()+30);}})
$(function(){$(".languageBox").each(function(){var e=$(this);e.find(".language-current").on("click",function(event){event.preventDefault();var b=$(this);b.attr("aria-expanded",b.attr("aria-expanded")=="true"?"false":"true");e.find(".language-list").stop().fadeToggle();if(b.attr("aria-expanded")=="true"){e.find(".language-list a").eq(0).trigger("focus");}})
$(document).on("click",function(event){if(!e.is(event.target)&&e.has(event.target).length===0){e.find(".language-list").fadeOut(function(){e.find(".language-current").attr("aria-expanded","false");});}})
e.find("button,input,a").on("blur",function(){if(!e.is(":focus-within")){e.find(".language-list").fadeOut(function(){e.find(".language-current").attr("aria-expanded","false");});}})
if(!e.find(".language-list").find("a").length){e.addClass("no-list");}})})
/** custom.js end*/

