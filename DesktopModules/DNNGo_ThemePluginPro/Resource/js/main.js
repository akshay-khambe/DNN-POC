// global variables
var isIE8 = false;
var isIE9 = false;
var $windowWidth;
var $windowHeight;
var $pageArea;
// Debounce Function
(function ($, sr) {
    // debouncing function from John Hann
    // http://unscriptable.com/index.php/2009/03/20/debouncing-javascript-methods/
    var debounce = function (func, threshold, execAsap) {
        var timeout;
        return function debounced() {
            var obj = this,
                args = arguments;

            function delayed() {
                if (!execAsap)
                    func.apply(obj, args);
                timeout = null;
            };

            if (timeout)
                clearTimeout(timeout);
            else if (execAsap)
                func.apply(obj, args);

            timeout = setTimeout(delayed, threshold || 100);
        };
    };
    // smartresize
    jQuery.fn[sr] = function (fn) {
        return fn ? this.bind('resize', debounce(fn)) : this.trigger(sr);
    };

})(jQuery, 'clipresize');
/* jquery - flexible conditionize - v1.1 - https://github.com/rguliev/conditionize.js - by Rustam Guliev at 2017-07-19*/
(function ($) {
	$.fn.conditionize = function (options) {
		var settings = $.extend({
			hideJS: true
		}, options);
		$.fn.showOrHide = function (is_met, $section) {
			if (is_met) {
				$section.show();
				$section.find("select, input").removeClass("disabled");
			} else {
				$section.hide();
                $section.find("select, input").addClass("disabled");
			}
		}
		return this.each(function () {
			var $section = $(this);
			var cond = $(this).data('condition');

			// First get all (distinct) used field/inputs
			var re = /(#?\w+)/ig;
			var match = re.exec(cond);

			var inputs = {},
				e = "",
				name = "";
			while (match !== null) {
				name = match[1];
				e = (name.substring(0, 1) == '#' ? name : "[name=" + name + "]");
				if ($(e).length && !(name in inputs)) {
					inputs[name] = e;
				}
				match = re.exec(cond);
			}

			// Replace fields names/ids by $().val()
			for (name in inputs) {
				e = inputs[name];
				tmp_re = new RegExp("(" + name + ")\\b", "g");
				if ($(e).attr('type') == 'radio' || $(e).attr('type') == 'checkbox') { //  $(e).attr('type') == 'checkbox'
					cond = cond.replace(tmp_re, "$('" + e + ":checked').val()");
				
				} else {
					cond = cond.replace(tmp_re, "$('" + e + "').val()");
				}

			}

			//Set up event listeners
			for (name in inputs) {
				$(inputs[name]).on('change', function () {
                    try { 
                        $.fn.showOrHide(eval(cond), $section);
                    } catch (e) {
                        console.log(e+":"+cond)
                    } 
				});
			}

			//If setting was chosen, hide everything first...
			if (settings.hideJS) {
				$(this).hide();
			}
            //Show based on current value on page load
            try {
                $.fn.showOrHide(eval(cond), $section);
            } catch (e) {
                console.log(e+":"+cond)
            }

             
          
		});
	}
}(jQuery));

$(document).ready(function () {
	$('.conditional').conditionize();
});
//Main Function
var Main = function () {
    //function to detect explorer browser and its version
    var runInit = function () {
        if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)) {
            var ieversion = new Number(RegExp.$1);
            if (ieversion == 8) {
                isIE8 = true;
            } else if (ieversion == 9) {
                isIE9 = true;
            }
        }
    };
    //function to adjust the template elements based on the window size
    var runElementsPosition = function () {
        $windowWidth = $(window).width();
        $windowHeight = $(window).height();
        $pageArea = $windowHeight - $('body > .navbar').outerHeight() - $('body > .footer').outerHeight();
        $('.sidebar-search input').removeAttr('style').removeClass('open');
        runContainerHeight();

    };
    //function to adapt the Main Content height to the Main Navigation height
    var runContainerHeight = function () {
        mainContainer = $('.main-content > .container');
        mainNavigation = $('.main-navigation');
        if ($pageArea < 760) {
            $pageArea = 760;
        }
        if (mainContainer.outerHeight() < mainNavigation.outerHeight() && mainNavigation.outerHeight() > $pageArea) {
            mainContainer.css('min-height', mainNavigation.outerHeight());
        } else {
            mainContainer.css('min-height', $pageArea);
        };
    };
    //function to activate the ToDo list, if present
    var runToDoAction = function () {
        if ($(".todo-actions").length) {
            $(".todo-actions").click(function () {
                if ($(this).find("i").hasClass("fa-square-o") || $(this).find("i").hasClass("icon-check-empty")) {
                    if ($(this).find("i").hasClass("fa")) {
                        $(this).find("i").removeClass("fa-square-o").addClass("fa-check-square-o");
                    } else {
                        $(this).find("i").removeClass("icon-check-empty").addClass("fa fa-check-square-o");
                    };
                    $(this).parent().find("span").css({
                        opacity: .25
                    });
                    $(this).parent().find(".desc").css("text-decoration", "line-through");
                } else {
                    $(this).find("i").removeClass("fa-check-square-o").addClass("fa-square-o");
                    $(this).parent().find("span").css({
                        opacity: 1
                    });
                    $(this).parent().find(".desc").css("text-decoration", "none");
                }
                return !1;
            });
        }
    };
    //function to activate the Tooltips, if present
    var runTooltips = function () {
        if ($(".tooltips").length) {
            $('.tooltips').tooltip();
        }
    };
    //function to activate the Popovers, if present
    var runPopovers = function () {
        if ($(".popovers").length) {
            $('.popovers').popover();
        }
    };
    //function to allow a button or a link to open a tab
    var runShowTab = function () {
        if ($(".show-tab").length) {
            $('.show-tab').bind('click', function (e) {
                e.preventDefault();
                var tabToShow = $(this).attr("href");
                if ($(tabToShow).length) {
                    $('a[href="' + tabToShow + '"]').tab('show');
                }
            });
        };
        if (getParameterByName('tabId').length) {
            $('a[href="#' + getParameterByName('tabId') + '"]').tab('show');
        }
    };
    var runPanelScroll = function () {
        if ($(".panel-scroll").length) {
            $('.panel-scroll').perfectScrollbar({
                wheelSpeed: 50,
                minScrollbarLength: 20
            });
        }
    };
    //function to extend the default settings of the Accordion
    var runAccordionFeatures = function () {
        if ($('.accordion').length) {
            $('.accordion .panel-collapse').each(function () {
                if (!$(this).hasClass('in')) {
                    $(this).prev('.panel-heading').find('.accordion-toggle').addClass('collapsed');
                }
            });
        }
        $(".accordion").collapse().height('auto');
        var lastClicked;

        $('.accordion .accordion-toggle').bind('click', function () {
            currentTab = $(this);
            $('html,body').animate({
                scrollTop: currentTab.offset().top - 100
            }, 1000);
        });
    };
    //function to reduce the size of the Main Menu
    var runNavigationToggler = function () {
        $('.navigation-toggler').bind('click', function () {
            if (!$('body').hasClass('navigation-small')) {
                $('body').addClass('navigation-small');
            } else {
                $('body').removeClass('navigation-small');
            };
        });
    };
    //function to activate the panel tools
    var runModuleTools = function () {
        $('.panel-tools .panel-expand').bind('click', function (e) {
            $('.panel-tools a').not(this).hide();
            $('body').append('<div class="full-white-backdrop"></div>');
            $('.main-container').removeAttr('style');
            backdrop = $('.full-white-backdrop');
            wbox = $(this).parents('.panel');
            wbox.removeAttr('style');
            if (wbox.hasClass('panel-full-screen')) {
                backdrop.fadeIn(200, function () {
                    $('.panel-tools a').show();
                    wbox.removeClass('panel-full-screen');
                    backdrop.fadeOut(200, function () {
                        backdrop.remove();
                    });
                });
            } else {
                $('body').append('<div class="full-white-backdrop"></div>');
                backdrop.fadeIn(200, function () {
                    $('.main-container').css({
                        'max-height': $(window).outerHeight() - $('header').outerHeight() - $('.footer').outerHeight() - 100,
                        'overflow': 'hidden'
                    });
                    backdrop.fadeOut(200);
                    backdrop.remove();
                    wbox.addClass('panel-full-screen').css({
                        'max-height': $(window).height(),
                        'overflow': 'auto'
                    });
                });
            }
        });
        $('.panel-tools .panel-close').bind('click', function (e) {
            $(this).parents(".panel").remove();
            e.preventDefault();
        });
        $('.panel-tools .panel-refresh').bind('click', function (e) {
            var el = $(this).parents(".panel");
            el.block({
                overlayCSS: {
                    backgroundColor: '#fff'
                },
                message: '<img src="assets/images/loading.gif" /> Just a moment...',
                css: {
                    border: 'none',
                    color: '#333',
                    background: 'none'
                }
            });
            window.setTimeout(function () {
                el.unblock();
            }, 1000);
            e.preventDefault();
        });
        $('.panel-tools .panel-collapse').bind('click', function (e) {
            e.preventDefault();
            var el = jQuery(this).parent().closest(".panel").children(".panel-body");
            if ($(this).hasClass("collapses")) {
                $(this).addClass("expand").removeClass("collapses");
                el.slideUp(200);
            } else {
                $(this).addClass("collapses").removeClass("expand");
                el.slideDown(200);
            }
        });
    };
    //function to activate the 3rd and 4th level menus
    var runNavigationMenu = function () {
        $('.main-navigation-menu li.active').addClass('open');
        $('.main-navigation-menu > li a').bind('click', function () {
            if ($(this).parent().children('ul').hasClass('sub-menu') && (!$('body').hasClass('navigation-small') || !$(this).parent().parent().hasClass('main-navigation-menu'))) {
                if (!$(this).parent().hasClass('open')) {
                    $(this).parent().addClass('open');
                    $(this).parent().parent().children('li.open').not($(this).parent()).not($('.main-navigation-menu > li.active')).removeClass('open').children('ul').slideUp(200);
                    $(this).parent().children('ul').slideDown(200, function () {
                        runContainerHeight();
                    });
                } else {
                    if (!$(this).parent().hasClass('active')) {
                        $(this).parent().parent().children('li.open').not($('.main-navigation-menu > li.active')).removeClass('open').children('ul').slideUp(200, function () {
                            runContainerHeight();
                        });
                    } else {
                        $(this).parent().parent().children('li.open').removeClass('open').children('ul').slideUp(200, function () {
                            runContainerHeight();
                        });
                    }
                }
            }
        });
    };
    //function to activate the Go-Top button
    var runGoTop = function () {
        $('.go-top').bind('click', function (e) {
            $("html, body").animate({
                scrollTop: 0
            }, "slow");
            e.preventDefault();
        });
    };
    //function to avoid closing the dropdown on click
    var runDropdownEnduring = function () {
        if ($('.dropdown-menu.dropdown-enduring').length) {
            $('.dropdown-menu.dropdown-enduring').click(function (event) {
                event.stopPropagation();
            });
        }
    };
    //function to return the querystring parameter with a given name.
    var getParameterByName = function (name) {
        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    };
    //function to activate the iCheck Plugin
    var runCustomCheck = function () {
        $('.auto input[type="checkbox"], .auto input[type="radio"]').each(function (i) {
            $(this).addClass("square-green");
        });
        if ($('input[type="checkbox"]').length || $('input[type="radio"]').length) {
            $('input[type="checkbox"].grey, input[type="radio"].grey').iCheck({
                checkboxClass: 'icheckbox_minimal-grey',
                radioClass: 'iradio_minimal-grey',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].red, input[type="radio"].red').iCheck({
                checkboxClass: 'icheckbox_minimal-red',
                radioClass: 'iradio_minimal-red',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].green, input[type="radio"].green').iCheck({
                checkboxClass: 'icheckbox_minimal-green',
                radioClass: 'iradio_minimal-green',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].teal, input[type="radio"].teal').iCheck({
                checkboxClass: 'icheckbox_minimal-aero',
                radioClass: 'iradio_minimal-aero',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].orange, input[type="radio"].orange').iCheck({
                checkboxClass: 'icheckbox_minimal-orange',
                radioClass: 'iradio_minimal-orange',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].purple, input[type="radio"].purple').iCheck({
                checkboxClass: 'icheckbox_minimal-purple',
                radioClass: 'iradio_minimal-purple',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].yellow, input[type="radio"].yellow').iCheck({
                checkboxClass: 'icheckbox_minimal-yellow',
                radioClass: 'iradio_minimal-yellow',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].square-black, input[type="radio"].square-black').iCheck({
                checkboxClass: 'icheckbox_square',
                radioClass: 'iradio_square',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].square-grey, input[type="radio"].square-grey').iCheck({
                checkboxClass: 'icheckbox_square-grey',
                radioClass: 'iradio_square-grey',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].square-red, input[type="radio"].square-red').iCheck({
                checkboxClass: 'icheckbox_square-red',
                radioClass: 'iradio_square-red',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].square-green, input[type="radio"].square-green').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].square-teal, input[type="radio"].square-teal').iCheck({
                checkboxClass: 'icheckbox_square-aero',
                radioClass: 'iradio_square-aero',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].square-orange, input[type="radio"].square-orange').iCheck({
                checkboxClass: 'icheckbox_square-orange',
                radioClass: 'iradio_square-orange',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].square-purple, input[type="radio"].square-purple').iCheck({
                checkboxClass: 'icheckbox_square-purple',
                radioClass: 'iradio_square-purple',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].square-yellow, input[type="radio"].square-yellow').iCheck({
                checkboxClass: 'icheckbox_square-yellow',
                radioClass: 'iradio_square-yellow',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].flat-black, input[type="radio"].flat-black').iCheck({
                checkboxClass: 'icheckbox_flat',
                radioClass: 'iradio_flat',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].flat-grey, input[type="radio"].flat-grey').iCheck({
                checkboxClass: 'icheckbox_flat-grey',
                radioClass: 'iradio_flat-grey',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-red',
                radioClass: 'iradio_flat-red',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].flat-green, input[type="radio"].flat-green').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass: 'iradio_flat-green',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].flat-teal, input[type="radio"].flat-teal').iCheck({
                checkboxClass: 'icheckbox_flat-aero',
                radioClass: 'iradio_flat-aero',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].flat-orange, input[type="radio"].flat-orange').iCheck({
                checkboxClass: 'icheckbox_flat-orange',
                radioClass: 'iradio_flat-orange',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].flat-purple, input[type="radio"].flat-purple').iCheck({
                checkboxClass: 'icheckbox_flat-purple',
                radioClass: 'iradio_flat-purple',
                increaseArea: '10%' // optional
            });
            $('input[type="checkbox"].flat-yellow, input[type="radio"].flat-yellow').iCheck({
                checkboxClass: 'icheckbox_flat-yellow',
                radioClass: 'iradio_flat-yellow',
                increaseArea: '10%' // optional
            });
        };
    };
    //Search Input function
    var runSearchInput = function () {
        var search_input = $('.sidebar-search input');
        var search_button = $('.sidebar-search button');
        var search_form = $('.sidebar-search');
        search_input.attr('data-default', $(search_input).outerWidth()).focus(function () {
            $(this).animate({
                width: 200
            }, 200);
        }).blur(function () {
            if ($(this).val() == "") {
                if ($(this).hasClass('open')) {
                    $(this).animate({
                        width: 0,
                        opacity: 0
                    }, 200, function () {
                        $(this).hide();
                    });
                } else {
                    $(this).animate({
                        width: $(this).attr('data-default')
                    }, 200);
                }
            }
        });
        search_button.bind('click', function () {
            if ($(search_input).is(':hidden')) {
                $(search_input).addClass('open').css({
                    width: 0,
                    opacity: 0
                }).show().animate({
                    width: 200,
                    opacity: 1
                }, 200).focus();
            } else if ($(search_input).hasClass('open') && $(search_input).val() == '') {
                $(search_input).removeClass('open').animate({
                    width: 0,
                    opacity: 0
                }, 200, function () {
                    $(this).hide();
                });
            } else if ($(search_input).val() != '') {
                return;
            } else
                $(search_input).focus();
            return false;
        });
    };
    //Set of functions for Style Selector
    var runStyleSelector = function () {
        $('.style-toggle').bind('click', function () {
            if ($(this).hasClass('open')) {
                $(this).removeClass('open').addClass('close');
                $('#style_selector_container').hide();
            } else {
                $(this).removeClass('close').addClass('open');
                $('#style_selector_container').show();
            }
        });
        setColorScheme();
        setLayoutStyle();
        setHeaderStyle();
        setFooterStyle();
        setBoxedBackgrounds();
    };
    $('.drop-down-wrapper').perfectScrollbar({
        wheelSpeed: 50,
        minScrollbarLength: 20
    });
    $('.navbar-tools .dropdown').on('shown.bs.dropdown', function () {
        $(this).find('.drop-down-wrapper').scrollTop(0).perfectScrollbar('update');
    });
    var setColorScheme = function () {
        $('.icons-color a').bind('click', function () {
            $('.icons-color img').each(function () {
                $(this).removeClass('active');
            });
            $(this).find('img').addClass('active');
            if ($('#skin_color').attr("rel") == "stylesheet/less") {
                $('#skin_color').next('style').remove();
                $('#skin_color').attr("rel", "stylesheet");

            }
            $('#skin_color').attr("href", "assets/css/theme_" + $(this).attr('id') + ".css");

        });
    };
    var setBoxedBackgrounds = function () {
        $('.boxed-patterns a').bind('click', function () {
            if ($('body').hasClass('layout-boxed')) {
                var classes = $('body').attr("class").split(" ").filter(function (item) {
                    return item.indexOf("bg_style_") === -1 ? item : "";
                });
                $('body').attr("class", classes.join(" "));
                $('.boxed-patterns img').each(function () {
                    $(this).removeClass('active');
                });
                $(this).find('img').addClass('active');
                $('body').addClass($(this).attr('id'));
            } else {
                alert('Select boxed layout');
            }
        });
    };
    var setLayoutStyle = function () {
        $('select[name="layout"]').change(function () {
            if ($('select[name="layout"] option:selected').val() == 'boxed')
                $('body').addClass('layout-boxed');
            else
                $('body').removeClass('layout-boxed');
        });
    };
    var setHeaderStyle = function () {
        $('select[name="header"]').change(function () {
            if ($('select[name="header"] option:selected').val() == 'default')
                $('body').addClass('header-default');
            else
                $('body').removeClass('header-default');
        });
    };
    var setFooterStyle = function () {
        $('select[name="footer"]').change(function () {
            if ($('select[name="footer"] option:selected').val() == 'fixed')
                $('body').addClass('footer-fixed');
            else
                $('body').removeClass('footer-fixed');
        });
    };
    var runColorPalette = function () {
        if ($('.colorpalette').length) {
            $('.colorpalette').colorPalette().on('selectColor', function (e) {
                $(this).closest('ul').prev('a').children('i').css('background-color', e.color).end().closest('div').prev('input').val(e.color);
                runActivateLess();
            });
        };
    };

    //function to activate Less style
    var runActivateLess = function () {
        $('		.icons-color img').removeClass('active');
        if ($('#skin_color').attr("rel") == "stylesheet") {
            $('#skin_color').attr("rel", "stylesheet/less").attr("href", "assets/less/styles.less");
            less.sheets.push($('link#skin_color')[0]);
            less.refresh();
        };
        less.modifyVars({
            '@base': $('.color-base').val(),
            '@text': $('.color-text').val(),
            '@badge': $('.color-badge').val()
        });
    };

    //Window Resize Function
    var runWIndowResize = function (func, threshold, execAsap) {
        //wait until the user is done resizing the window, then execute
        $(window).clipresize(function () {
            runElementsPosition();
        });
    };
    //function to save user settings
    var runSaveSetting = function () {
        $('.save_style').bind('click', function () {
            var clipSetting = new Object;
            if ($('body').hasClass('rtl')) {
                clipSetting.rtl = true;
            } else {
                clipSetting.rtl = false;
            };
            if ($('body').hasClass('layout-boxed')) {
                clipSetting.layoutBoxed = true;
                $("body[class]").filter(function () {
                    var classNames = this.className.split(/\s+/);
                    for (var i = 0; i < classNames.length; ++i) {
                        if (classNames[i].substr(0, 9) === "bg_style_") {
                            clipSetting.bgStyle = classNames[i];
                        }
                    }

                });
            } else {
                clipSetting.layoutBoxed = false;
            };
            if ($('body').hasClass('header-default')) {
                clipSetting.headerDefault = true;
            } else {
                clipSetting.headerDefault = false;
            };
            if ($('body').hasClass('footer-fixed')) {
                clipSetting.footerDefault = false;
            } else {
                clipSetting.footerDefault = true;
            };
            if ($('#skin_color').attr('rel') == 'stylesheet') {
                clipSetting.useLess = false;
            } else if ($('#skin_color').attr('rel') == 'stylesheet/less') {
                clipSetting.useLess = true;
                clipSetting.baseColor = $('.color-base').val();
                clipSetting.textColor = $('.color-text').val();
                clipSetting.badgeColor = $('.color-badge').val();
            };
            clipSetting.skinClass = $('#skin_color').attr('href');

            $.cookie("clip-setting", JSON.stringify(clipSetting));

            var el = $('#style_selector_container');
            el.block({
                overlayCSS: {
                    backgroundColor: '#fff'
                },
                message: '<img src="assets/images/loading.gif" /> Just a moment...',
                css: {
                    border: 'none',
                    color: '#333',
                    background: 'none'
                }
            });
            window.setTimeout(function () {
                el.unblock();
            }, 1000);
        });
    };
    //function to load user settings
    var runCustomSetting = function () {
        if ($.cookie("clip-setting")) {
            var loadSetting = jQuery.parseJSON($.cookie("clip-setting"));
            if (loadSetting.layoutBoxed) {

                $('body').addClass('layout-boxed');
                $('#style_selector select[name="layout"]').find('option[value="boxed"]').attr('selected', 'true');
            };
            if (loadSetting.headerDefault) {
                $('body').addClass('header-default');
                $('#style_selector select[name="header"]').find('option[value="default"]').attr('selected', 'true');
            };
            if (!loadSetting.footerDefault) {
                $('body').addClass('footer-fixed');
                $('#style_selector select[name="footer"]').find('option[value="fixed"]').attr('selected', 'true');
            };
            if ($('#style_selector').length) {
                if (loadSetting.useLess) {

                    $('.color-base').val(loadSetting.baseColor).next('.dropdown').find('i').css('background-color', loadSetting.baseColor);
                    $('.color-text').val(loadSetting.textColor).next('.dropdown').find('i').css('background-color', loadSetting.textColor);
                    $('.color-badge').val(loadSetting.badgeColor).next('.dropdown').find('i').css('background-color', loadSetting.badgeColor);
                    runActivateLess();
                } else {
                    $('.color-base').val('#FFFFFF').next('.dropdown').find('i').css('background-color', '#FFFFFF');
                    $('.color-text').val('#555555').next('.dropdown').find('i').css('background-color', '#555555');
                    $('.color-badge').val('#007AFF').next('.dropdown').find('i').css('background-color', '#007AFF');
                    $('#skin_color').attr('href', loadSetting.skinClass);
                };
            };
            $('body').addClass(loadSetting.bgStyle);
        } else {
            runDefaultSetting();
        };
    };
    //function to clear user settings
    var runClearSetting = function () {
        $('.clear_style').bind('click', function () {
            $.removeCookie("clip-setting");
            $('body').removeClass("layout-boxed header-default footer-fixed");
            $('body')[0].className = $('body')[0].className.replace(/\bbg_style_.*?\b/g, '');
            if ($('#skin_color').attr("rel") == "stylesheet/less") {
                $('#skin_color').next('style').remove();
                $('#skin_color').attr("rel", "stylesheet");

            }

            $('		.icons-color img').first().trigger('click');
            runDefaultSetting();
        });
    };
    //function to restore user settings
    var runDefaultSetting = function () {
        $('#style_selector select[name="layout"]').val('default');
        $('#style_selector select[name="header"]').val('fixed');
        $('#style_selector select[name="footer"]').val('default');
        $('		.boxed-patterns img').removeClass('active');
        $('.color-base').val('#FFFFFF').next('.dropdown').find('i').css('background-color', '#FFFFFF');
        $('.color-text').val('#555555').next('.dropdown').find('i').css('background-color', '#555555');
        $('.color-badge').val('#007AFF').next('.dropdown').find('i').css('background-color', '#007AFF');
    };
    var customControl = function () {

        var responsiveDom = `<ul class="responsive-control-list">
            <li><span class="fa fa-tv"></span></li>
            <li><span class="fa fa-desktop"></span></li>
            <li><span class="fa fa-laptop"></span></li>
            <li><span class="fa fa-tablet"></span></li>
            <li><span class="fa fa-mobile"></span></li>
        </ul>`;
        var spacingDom = `<ul class="responsive-control-list">
            <li><span class="fa fa-arrow-up"></span></li>
            <li><span class="fa fa-arrow-right"></span></li>
            <li><span class="fa fa-arrow-down"></span></li>
            <li><span class="fa fa-arrow-left"></span></li>
        </ul>`;

        var borderDom = `<ul class="responsive-control-list">
                            <li><span class="fa fa-text-width"></span>
                            <input type="text" class="form-control input_text validate[custom[number]]" >
                            </li>
                            <li class="no-icon">
                            <select class="form-control input_text">
                                <option value="">unit</option>
                                <option value="px" selected="selected">px</option>
                                <option value="%">%</option>
                                <option value="em">em</option>
                                <option value="pt">pt</option>
                            </select>
                            </li>
                            <li class="no-icon">
                            <select class="form-control input_text">
                                <option value="">style</option>
                                <option value="hidden">Hidden</option>
                                <option value="dashed">Dashed</option>
                                <option value="solid" selected="selected">Solid</option>
                                <option value="double">Double</option>
                                <option value="groove">Groove</option>
                                <option value="ridge">Ridge</option>
                                <option value="inset">Inset</option>
                                <option value="outset">Outset</option>
                            </select>
                            </li>
                            <li class="no-icon">
                            <div class="input-group" style="width: 157px;">
                                <label class="input-group-addon color-picker-box"> <i class="clip-eyedropper-2 " ></i> </label>
                                <input type="text" class="form-control dng-color-picker input_text" data-colorpicker-guid="27" />
                            </div>
                            </li>
                        </ul>`;

        var backgroundDom = `<ul class="responsive-control-list">
                                    <li class="no-icon">
                                    <select class="form-control input_text">
                                    <option value="scroll">scroll</option><option selected="selected" value="fixed">fixed</option>
                                    </select>
                                    </li>
                                    <li class="no-icon">
                                    <select class="form-control input_text">
                                    <option value="left">left</option><option selected="selected" value="center">center</option><option value="right">right</option>
                                    </select>
                                    </li>
                                    <li class="no-icon">
                                    <select class="form-control input_text">
                                    <option value="top">top</option><option selected="selected" value="center">center</option><option value="bottom">bottom</option>
                                    </select>
                                    </li>
                                    <li class="no-icon">
                                    <select class="form-control input_text">
                                    <option selected="selected" value="no-repeat">no-repeat</option><option value="repeat-x">repeat-x</option><option value="repeat-y">repeat-y</option><option value="repeat">repeat</option>
                                    </select>
                                    </li>
                                    <li class="no-icon">
                                    <select class="form-control input_text">
                                    <option value="auto">auto</option><option value="contain">contain</option><option selected="selected" value="cover">cover</option>
                                    </select>
                                    </li>
                            </ul>`;



        function textboxChange(p, dom, type) {
            var e = p.find("input,select");
            var box = $(dom);
            if(p.hasClass("responsive-1600")){
               box.prepend(`<li><span class="fa">XXL</span></li>`);
            }


            var val = e.val().split(",");
            for (i = 0; i < box.find("ul > li").length; i++) {
                if (!val[i]) {
                    val[i] = "";
                }
            }

            if (type == "text") {
                box.find("li").each(function (index) {
                    var className, item = e.clone(false).removeAttr("name").removeAttr("id").removeAttr("style").removeAttr("value");
                    if ( !p.hasClass("required-all") && ((index != 1 && p.hasClass("responsive-textbox") && !p.hasClass("inverted")) || (index != 4 && p.hasClass("responsive-textbox") && p.hasClass("inverted")))) {
                        className = item.attr("class").replace("required,", "").replace("required", "");
                    } else {
                        className = e.attr("class");
                    }

                    $(this).append(item);
                    item.attr("class", className).val(val[index]).change();
                    item.on("change", function () {
                        val = e.val().split(",");
                        val[index] = item.val() ? item.val().replace(/[\'\"\,\\\/\b\f\n\r\t]/g, '') : "";
                        e.val(val.join(","))
                    })

                })
            } else if (type == "border") {
                box.find("li").each(function (index) {
                    var item = $(this).find("input,select").eq(0);
                    item.val(val[index]);
                    item.siblings(".color-picker-box").css("background-color", val[index])
                    item.on("change", function () {
                        val = e.val().split(",");
                        val[index] = item.val() ? item.val().replace(/[\'\"\,\\\/\b\f\n\r\t]/g, '') : "";
                        e.val(val.join(",")).change()
                    })
                })
            }

            e.attr("class", "form-control input_text hide");
            e.before(box);
            p.addClass("show-textbox");

        }

        $(".responsive-textbox").each(function () {
            textboxChange($(this), responsiveDom, 'text')
        })

        $(".spacing-textbox").each(function () {
            textboxChange($(this), spacingDom, 'text')
        })

        $(".border-textbox").each(function () {
            textboxChange($(this), borderDom, 'border')
        })
        $(".background-textbox").each(function () {
            textboxChange($(this), backgroundDom, 'border')
        })

    };

    //function to select image box
    var runSelectImageBox = function () {
        $(".select-image-box").each(function (index, domEle) {
            $(domEle).find("input").bind('blur change keypress ', function () {
                $(domEle).find("img").attr("src", $(this).val());
                if ($(this).val() != "" && $(this).val().length > 0) {
                    $(domEle).find(".btn-image-select").html("<i class=\"fa fa-folder-open-o\"></i> Change");

                    $(domEle).find(".btn-image-remove").show();
                } else {
                    $(domEle).find(".btn-image-select").html("<i class=\"fa fa-folder-open-o\"></i> Select Image");
                    $(domEle).find(".btn-image-remove").hide();
                }
            });

            $(domEle).find(".btn-image-remove").click(function () {
                $(domEle).find("input").attr("data-urls","").val("").keypress().change();
            });
            $(domEle).find(".btn-image-select").click(function () {

                $("#SelectImage_Iframe").attr("src", $(this).attr("data-href"));

                $("body").on("click", "#SelectImage_Modal .btn-insert", function () {
                    if($(domEle).find("input").attr("data-info")){
                        var info = JSON.parse($(domEle).find("input").attr("data-info"));
                        
                        $("#SelectImage_Modal").addClass('modal-loading');

                        var url = info.GetServiceUrl;
                            delete info.GetServiceUrl;
                        $.get(url,info, function (data) {
                            $(domEle).find("input").val(data).keypress().change();
                            $("#SelectImage_Modal").removeClass('modal-loading');
                            $("#SelectImage_Modal").modal('hide');
                        })
                    }else{
                        $(domEle).find("input").val($(domEle).find("input").attr("data-urls")).keypress().change();
                        $("#SelectImage_Modal").modal('hide');
                    }

                });

            });
           

        });
    };
    var currentTab = function () {

        $(".nav.nav-tabs a").on("click",function(){
            if($($(this).attr("href"))){
                window.location.hash =  $(this).attr("href");
            }
        })
        if(window.location.hash && $(window.location.hash).length){
          
            $(window.location.hash).addClass("active").siblings().removeClass("active");
           
            $('a[href="'+window.location.hash+'"]').parent().addClass("active").siblings().removeClass("active");
        }

    };


    var runCustomFontBox = function () {
     
            function itemTemplate(item){
                return `<div class="custom-font-control-group">
                    <div class="control-title">
                        <div class="title-name"><span>${item.name?item.name:"Font Name"}</span><span>${item.weight?"&nbsp;("+item.weight+")":""}</span><span>${item.style?"&nbsp;("+item.style+")":""}</span></div>
                        <div class="title-delete"><i class="fa fa-close"></i></div>
                    </div>
                    <div class="font-control-box"><div class="font-control-padding">
                        <div class="font-name">
                            <span class="title">* Font Family:</span>
                            <input type="text" name="name" value="${item.name}" class="form-control name-input" data-index="0" placeholder="Font Name">
                        </div>
                        <div class="font-url">
                            <span class="title">woff File:</span>
                            <input type="text" name="woff" data-type="woff" value="${item.woff}" class="form-control" placeholder="woff Url">
                            <a data-href="" class="btn-select"><i class="fa fa-file-text-o"></i></a>
                        </div>
                        <div class="font-url">
                            <span class="title">woff2 File:</span>
                            <input type="text" name="woff2" data-type="woff2" value="${item.woff2}" class="form-control" placeholder="woff2 Url">
                            <a data-href="" class="btn-select"><i class="fa fa-file-text-o"></i></a>
                        </div>
                        <div class="font-url">
                            <span class="title">ttf File:</span>
                            <input type="text" name="ttf" data-type="ttf" value="${item.ttf}" class="form-control" placeholder="ttf Url">
                            <a data-href="" class="btn-select"><i class="fa fa-file-text-o"></i></a>
                        </div>
                        <div class="font-url">
                            <span class="title">eot File:</span>
                            <input type="text" name="eot" data-type="eot" value="${item.eot}" class="form-control" placeholder="eot Url">
                            <a data-href="" class="btn-select"><i class="fa fa-file-text-o"></i></a>
                        </div>
                        <div class="font-url">
                            <span class="title">svg File:</span>
                            <input type="text" name="svg" data-type="svg" value="${item.svg}" class="form-control" placeholder="svg Url">
                            <a data-href="" class="btn-select"><i class="fa fa-file-text-o"></i></a>
                        </div>
                        <div class="font-url">
                        <span class="title">Font Weight:</span>
                        <select name="weight" class="form-control weight-select" data-index="1">
                            <option value="">Default</option>
                            <option value="100" ${item.weight =="100"?"selected":""}>100</option> 
                            <option value="200" ${item.weight =="200"?"selected":""}>200</option> 
                            <option value="300" ${item.weight =="300"?"selected":""}>300</option> 
                            <option value="400" ${item.weight =="400"?"selected":""}>400</option> 
                            <option value="500" ${item.weight =="500"?"selected":""}>500</option> 
                            <option value="600" ${item.weight =="600"?"selected":""}>600</option> 
                            <option value="700" ${item.weight =="700"?"selected":""}>700</option> 
                            <option value="800" ${item.weight =="800"?"selected":""}>800</option> 
                            <option value="900" ${item.weight =="900"?"selected":""}>900</option> 
                            <option value="normal" ${item.weight =="normal"?"selected":""}>normal</option> 
                            <option value="bold" ${item.weight =="bold"?"selected":""}>bold</option>  
                        </select>
                        </div>
                        <div class="font-url">
                        <span class="title">Font Style:</span>
                        <select name="style" class="form-control style-select" data-index="2">
                            <option value="">Default</option>
                            <option value="normal" ${item.style =="normal"?"selected":""}>normal</option> 
                            <option value="italic" ${item.style =="italic"?"selected":""}>italic</option> 
                        </select>
                        </div>
                        </div>
                    </div>
                </div>`;
            }

        $("#custom-font-Control").each(function (index) {
            var box= $(this);
            var d = {
                "name":"",
                "woff":"",
                "woff2":"",
                "ttf":"",
                "eot":"",
                "svg":"",
                "weight":"",
                "style":""
                };
               // box.append(itemTemplate({"":""}));
                box.append('<div class="addFont btn btn-primary btn-sm addCustomFont">Add Font</div>');
            

                if(box.find("input.CustomFont").val()){
                    var FontListData = JSON.parse(box.find("input.CustomFont").val());

                   FontListData.forEach(function(i){
                  //  var opts = $.extend(d, i);
                    var opts = {};
                   
                    for(var j in d){ 
                        opts[j] = i[j]?i[j]:"";
                    };


                    box.find(".addCustomFont").before(itemTemplate(opts));
                   })

                }
           

                box.find(".addCustomFont").on("click",function(){
                    box.find(".custom-font-control-group").find(".font-control-box").stop().slideUp();
                    
                    $(this).before(itemTemplate(d));
                    box.find(".custom-font-control-group").find(".font-control-box").last().slideDown();

                })

                box.on("click",".title-name",function(){
                    $(this).parent().siblings(".font-control-box").stop().slideToggle().parent().siblings(".custom-font-control-group").find(".font-control-box").stop().slideUp();
                })

                box.on("click",".title-delete",function(){

                    $(this).parents(".custom-font-control-group").remove();
                    UpdateData();

                })  
                box.on("change",".name-input,.weight-select,.style-select",function(){
                    if($(this).val()){
                        $(this).parents(".custom-font-control-group").find(".title-name").find("span").eq($(this).data("index")).html($(this).data("index")!=0?"&nbsp;("+$(this).val()+")":$(this).val());
                    }else{
                        $(this).parents(".custom-font-control-group").find(".title-name").find("span").eq($(this).data("index")).html($(this).data("index")!=0?"":"Font Name");
                    } 
                })  
 
                function UpdateData(){
                    var data = [];
                    box.find(".custom-font-control-group").each(function(){
                        if($(this).find(".name-input").val()){
                            var item ={};
                            $(this).find("input:not(.error),select:not(.error)").each(function(){
                                if($(this).val()){
                                    item[$(this).attr("name")] =$(this).val();
                                }
                            })
                            data.push(item);
                            $(this).find(".name-input").removeClass("error");
                        }else{
                            $(this).find(".name-input").addClass("error");
                        }
                    })
                    if(data.length){
                        box.find("input.CustomFont").val(JSON.stringify(data))
                    }else{
                        box.find("input.CustomFont").val('[]');
                    }
                };

                box.on("change","input,select",function(){

                    if($(this).data("type")){
                        var url = $(this).val();
                        if(url && $(this).data("type").toLowerCase() !=  url.substring(url.lastIndexOf('.')+ 1).toLowerCase()){
                            $(this).addClass("error");
                        }else{
                            $(this).removeClass("error");
                            $(this).find(".name-input").removeClass("error");
                        }
                    }

                    UpdateData();
                })  

                box.on("click",".btn-select",function(e){
                    e.preventDefault();
                    var domEle = $(this).siblings("input");
                    var id = domEle.attr("id");

                    if(!id){
                        id = "fonturl-"+ Math.round(Math.random()*100000)
                        domEle.attr("id",id);
                    }
                    
                    $("#SelectImage_Iframe").attr("src", box.data("href") + id + "&FileExtension="+ domEle.data("type"));
                    
                    $("#SelectImage_Modal").modal('show');
                   
                    $("body").on("click", "#SelectImage_Modal .btn-insert", function () {
                        $(domEle).val($(domEle).attr("data-urls")).keypress().change();
                        $("#SelectImage_Modal").modal('hide');
                    });

                })  



        });
    };




    
    return {
        //main function to initiate template pages
        init: function () {
            runWIndowResize();
            runInit();
            runStyleSelector();
            runSearchInput();
            runElementsPosition();
            runToDoAction();
            runNavigationToggler();
            runNavigationMenu();
            runGoTop();
            runModuleTools();
            runDropdownEnduring();
            runTooltips();
            runPopovers();
            runAccordionFeatures();
            runClearSetting();
            customControl();
            //  runCustomCheck();
            runSelectImageBox();
            runCustomFontBox();
            currentTab();
			
        }
    };
} ();