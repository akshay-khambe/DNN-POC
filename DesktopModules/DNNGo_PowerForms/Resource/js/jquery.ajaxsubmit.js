(function ($) {
	'use strict';

    $.ajaxSubmit = {
		init: function (selector, options) {
            $(selector).ajaxSubmit(options);
		}
	};

    $.fn.ajaxSubmit = function (options) {
        $(this).each(function (i, elem) {

			$(elem).wrapInner(function () {
                return '<form action="' + $(this).data("action") + '" class="validationEngineContainer" />';
			});
			var form = $( $(elem).find("form"));

            var settings = $.extend({
                'url': form.attr('action'),
                'submitbut': form.find('input.submit_but').length?form.find('input.submit_but'):form.find('input[type="submit"],button[type="submit"]'),
            }, options);

            var submitbut = $(settings.submitbut);

			
			form.validationEngine();

			var url = settings.url.replace('/post?', '/post-json?').concat('&c=?');

			form.attr('novalidate', 'true');

			form.submit(function () {
              
				var msg;
				function successCallback(resp) {
					if (resp.result === 'success') {
						$(".form_div_" + resp.ModuleId + " form").get(0).reset();
						$(".form_div_" + resp.ModuleId + " .jsignature-container .reset").trigger("click");
					} else {
		
					}

					if (settings.Success) {
						settings.Success(resp);
					}
				}

				if (!form.validationEngine('validate')) {
					return false;
				}

				var data = {};
				var dataArray = form.serializeArray();
				$.each(dataArray, function (index, item) {
					data[item.name] = item.value;
                });

                if (settings.Load) {
                    settings.Load();
                }

				data["PageURL"] = window.location.href;

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
							if (settings.Error) {
								settings.Error(resp);
							}
						}
					});





				}else{

					$.ajax({
						url: url,
						data: data,
						type:'POST',
						success: successCallback,
						dataType: 'jsonp',
						jsonp: 'jsoncallback',
						error: function (resp, text) {
							if (settings.Error) {
								settings.Error(resp);
							}
						}
					});
				}
				return false;
			});
		});
		return this;
	};
})(jQuery);



//$(function ($) {


//    function Success(resp) {
//        console.log("success", resp);
//        if (resp.result === 'success') {
//             Do stuff

//        }
//    }

//    function Error(resp) {
//        console.log("error", resp);
//    }


//    setTimeout(function () {
//        $(".external-forms").ajaxSubmit({ Success: Success, Error: Error });
//    }, "500");
    
//});