(function ($) {
	'use strict';

	$.ajaxForm2 = {
		init: function (selector, options) {
			$(selector).ajaxForm2(options);
			
		}
	};

	$.fn.ajaxForm2 = function (options) {
		$(this).each(function (i, elem) {
			$(elem).wrapInner(function () {
				return '<form action="' + $(this).data("action") + '" class="validationEngineContainer" />';
			});
			var form = $($(elem).find("form"));
		//	console.log('form', form);
			var message = form.find('div.message');

			form.find(".form_list").append(message);		 
			if(!message.length){
				form.append("<div class=\"message\"></div>");
				message = form.find('div.message');
			}

			form.validationEngine({
				promptPosition: 'topLeft'
			});


			var settings = $.extend({
				'url': form.attr('action'),
			}, options);

			var url = settings.url.replace('/post?', '/post-json?').concat('&c=?');
			form.attr('novalidate', 'true');

			function setgrecaptcha() {
				grecaptcha.execute(g_data.key, { action: g_data.action }).then(function (token) { 
					$(g_data.id).val(token);
				//	console.log("token-val:", $(g_data.id).val());
				});
			}			
			if($(elem).data("grecaptcha")){
				var g_data= $(elem).data("grecaptcha");
			//console.log(g_data);
				var Async_grecaptcha = setInterval(function () {
					if ("undefined" != typeof grecaptcha) {
						grecaptcha.ready(function () {
							setgrecaptcha();
							var ref = setInterval(function () {
								setgrecaptcha();
							}, 1000 * 60 * 2);
						});
						clearInterval(Async_grecaptcha);
					}
				}, 100)
			}
			
			//var submitMsg = 'Submitting...';
			//message.html(submitMsg).stop().hide().fadeIn().delay(3000).fadeOut();

			form.submit(function () {
				

					var msg;
					message.stop().dequeue().hide();
					function successCallback(resp) {

						var messageinfo = resp.message;
						if (resp.result === 'success') {
							message.removeClass('error').addClass('valid');
							form[0].reset();
							messageinfo = form.parent().data("message")?form.parent().data("message"):resp.message;
						} else {
							message.removeClass('valid').addClass('error');
							messageinfo = resp.error?resp.error:"";
						}
						if(form.parent().data("successlink")){
							window.location.href=form.parent().data("successlink");
						}
						
						message.html(messageinfo).stop().dequeue().hide().fadeIn(200).delay(3000).fadeOut();

						if (settings.Success) {
							settings.Success(resp);
						}
						form.removeClass("request");
						if($(elem).data("grecaptcha")){setgrecaptcha();}
					}

					if (!form.validationEngine('validate')) {
						return false;
					}

					form.addClass("request");

					var data = {};
					var dataArray = form.serializeArray();
					$.each(dataArray, function (index, item) {
						if(data[item.name]){
							data[item.name] += ','+item.value;
						}else{
							data[item.name] = item.value;
						}

					});

					setTimeout(function(){
						if(form.find('input[type="file"]').length){	

							const formData = new FormData();

							for (let key in data) {
								formData.append(key, data[key]);
							};

							form.find('input[type="file"]').each(function(){
								formData.append($(this).attr("name"), $(this)[0].files[0]);
							});

							$.ajax({
								url: url,
								data: formData,
								type: 'POST',
								success: successCallback,
								dataType: 'jsonp',
								jsonp: 'jsoncallback',
								cache: false,
								processData: false,
								contentType: false,
								xhr: function () {
									let newxhr = new XMLHttpRequest();
									
									return newxhr;
								},
								error: function (resp, text) {
									message.html('ajax form submit error: ' + text).fadeIn(200).delay(3000).fadeOut();
						
									if (settings.Error) {
										settings.Error(resp);
									}
									form.removeClass("request");
									if($(elem).data("grecaptcha")){setgrecaptcha();}
								}
							});

						}else{
							$.ajax({
								url: url,
								data: data,
								type: 'POST',
								success: successCallback,
								dataType: 'jsonp',
								jsonp: 'jsoncallback',
								error: function (resp, text) {
									message.html('ajax form submit error: ' + text).fadeIn(200).delay(3000).fadeOut();
						//			console.log('ajax form submit error: ' + text);
									if (settings.Error) {
										settings.Error(resp);
									}
									form.removeClass("request");
									if($(elem).data("grecaptcha")){setgrecaptcha();}
								}
							});
						};


					},1000)
					// Translate and display submit message
					return false;

				});

		});
		return this;
	};

})(jQuery);


function LineEffect(box) {
	box.find('input[type="text"],[type="email"],input[type="url"],input[type="tel"],input[type="number"],textarea').on("focus", function() {
		$(this).parent().addClass("valid focus").siblings().addClass("valid focus");
	}).on("blur", function() {
		!$(this).val() && $(this).parent().removeClass("valid").siblings().removeClass("valid");
		$(this).parent().removeClass("focus").siblings().removeClass("focus");
	}).each(function() {
		$(this).parent().addClass("fixline").siblings(".form_label").addClass("fixlabel");
	}).removeAttr("placeholder");
}


function getajaxForm2(parent) {
	function Success(resp) {
	//	console.log("success", resp);
		if (resp.result === 'success') {
			// Do stuff

		}
	}

	function Error(resp) {
		console.log("error", resp);
	}
	 

	if("function" != typeof $(document).validationEngine){

	var	validationEngineLoad =	setInterval(function () {
			if("function" == typeof $(document).validationEngine){
				clearInterval(validationEngineLoad);
				parent.find(".Module-PowerForms").ajaxForm2({
					Success: Success,
					Error: Error
				}).each(function(){

					if( $(this).hasClass("powerforms-06") || $(this).hasClass("powerforms-08")){
						LineEffect($(this));
					}	
				});
			}
		},200);

	}else{

		parent.find(".Module-PowerForms").ajaxForm2({
			Success: Success,
			Error: Error
		}).each(function(){

			if( $(this).hasClass("powerforms-06") || $(this).hasClass("powerforms-08")){
				LineEffect($(this));
			}	
		});

	}
 

}

$(document).ready(function () {
	getajaxForm2($("body"));
})

