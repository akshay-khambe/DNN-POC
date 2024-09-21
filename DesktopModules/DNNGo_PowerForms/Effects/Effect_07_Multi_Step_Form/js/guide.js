(function($){
	
	$.fn.dnngoguide =function(options){
	var defaults = {
			validationEngine_file: true
		}
	var opts = $.extend(defaults, options);


var e=$(this);


		
	e.find(".form_prev").on("click",function(){
		e.find("fieldset.active,.guide_anchor >.active").removeClass("active").prev().addClass("active").nextAll().removeClass("successful")
		
		if(e.find("fieldset.active").index()==0){
			$(this).attr("disabled","disabled");
		}
		e.find(".form_next").show();
		e.find(".form_submit input[type=submit]").hide();
	})
	
	
	e.find(".form_next").on("click",function(){
		
	   if (!e.parents(".validationEngineContainer").validationEngine('validate') && opts) {   return false;}
	   
		e.find("fieldset.active,.guide_anchor >.active").removeClass("active").next().addClass("active").prevAll().addClass("successful");
		
		if(e.find("fieldset").length-1==e.find("fieldset.active").index()){
			$(this).hide();
			e.find(".form_submit input[type=submit]").show();
		}
		e.find(".form_prev").removeAttr("disabled");
		
	})
 	e.find('.form_submit input[type="submit"]').on("click", function () {if( $(this).css("display") == "none"){return false;}})
	
}})(jQuery);
