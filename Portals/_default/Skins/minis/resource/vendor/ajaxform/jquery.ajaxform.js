(function ($) {
	'use strict';

	$.ajaxForm = {
		init: function (selector, options) {
			$(selector).ajaxForm(options);
		}
	};

	$.fn.ajaxForm = function (options) {
		$(this).each(function (i, elem) {
			$(elem).wrapInner(function () {
				return '<form action="' + $(this).data("action") + '" class="validationEngineContainer" />';
			});
			var form = $($(elem).find("form"));
		//	console.log('form', form);
			var message = form.find('div.message');

			form.find(".form_list").append(message);		 
			

			form.validationEngine();


			var settings = $.extend({
				'url': form.attr('action'),
			}, options);

			var url = settings.url.replace('/post?', '/post-json?').concat('&c=?');

			form.attr('novalidate', 'true');
			
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
							messageinfo = form.parents(".ajaxform").data("message")?form.parents(".ajaxform").data("message"):resp.message;

							if($(elem).parent().data("successlink")){
								window.location.href=$(elem).parent().data("successlink");
							}

						} else {
							message.removeClass('valid').addClass('error');
						}
						
						
						message.html(messageinfo).stop().dequeue().hide().fadeIn(200).delay(3000).fadeOut();

						if (settings.Success) {
							settings.Success(resp);
						}
						form.removeClass("request");
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
									//if($(elem).data("grecaptcha")){setgrecaptcha();}
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
								}
							});
						}


					},1000)
					// Translate and display submit message
					return false;

				});

			

		});
		return this;
	};

})(jQuery);




function getajaxform(parent) {
	var length = parent.find(".ajaxform").length,
		index = 0;

	function finish() {
		index++;
		if (index == length) {
			function Success(resp) {
			//	console.log("success", resp);
				if (resp.result === 'success') {
					// Do stuff

				}
			}

			function Error(resp) {
				console.log("error", resp);
			}
			//	setTimeout(function () {

			if("function" != typeof $(document).validationEngine){
			var	validationEngineLoad =	setInterval(function () {
					if("function" == typeof $(document).validationEngine){
						clearInterval(validationEngineLoad);
						$(".external-forms").ajaxForm({
							Success: Success,
							Error: Error
						});
					}
				},200);
			}else{
				$(".external-forms").ajaxForm({
					Success: Success,
					Error: Error
				});
			}
		 
			//	}, "500"); 
		}
	}
	function LineEffect(box) {
		box.find('input[type="text"],[type="email"],input[type="url"],input[type="tel"],input[type="number"],textarea').on("focus", function() {
			$(this).parent().addClass("valid focus").siblings().addClass("valid focus");
		}).on("blur", function() {
			!$(this).val() && $(this).parent().removeClass("valid").siblings().removeClass("valid");
			$(this).parent().removeClass("focus").siblings().removeClass("focus");
		}).each(function() {
			$(this).parent().addClass("fixline").siblings("label").addClass("fixlabel");
		}).removeAttr("placeholder");
	}



	parent.find(".ajaxform").each(function () {
		var box = $(this);
		var url = box.data("url");
		if (url) {
			$.ajax({
				url: url,
				type: 'POST',
				//	dataType: 'jsonp',
				//	jsonp: 'jsoncallback',
				success: function (data) {
					if(data.indexOf("<body")!=-1){
						box.html("Setting error").removeClass("loading");
						return ;
					 }

					box.html(data).removeClass("loading");

					if( box.hasClass("ajaxform-06") || box.hasClass("ajaxform-08")){
						LineEffect(box);
					}
					 
					finish();
				},
				error: function (resp, text) {
					box.html(text).removeClass("loading");
					finish();
				}
			});

			




		} else {
			box.html("<div class=\"from-error\">Please click the setting button to choose the source of the form.</div>").removeClass("loading");
			finish();
		}

		
	})
}

$(document).ready(function () {
	getajaxform($("body"));
})