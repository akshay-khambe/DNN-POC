


var marqueeLauncher= function(mod){
    mod.each(function(i){
			var e= $(this);
			var box = e.children(".scroll");
			var ul =box.children("ul");

			var Interval = true;
			var Timeout = null;

			var speed = e.data("speed") ?e.data("speed"):1000;
			
			var time = parseInt((ul.width()/100)+1)*speed;
			
			var i= 0;
			function addClone(){
				ul.after(ul.clone());
				if(box.innerWidth()/2<e.innerWidth() && i < 10){
					i++;
					addClone();
				}				
			}
			addClone();

			

					
			e.children(".scroll").css("transition","transform "+time+"ms linear") ;  
			
			e.children(".scroll").css("transform","matrix(1, 0, 0, 1, -"+parseInt(ul.innerWidth())+", 0)") ;
			
		//	Interval = setInterval(function(){

		//	},time)

			e.children(".scroll").on("transitionend", function() { 
				if(Interval){
					e.children(".scroll").css({
						"transition":"transform 0ms linear",
						"transform":"matrix(1, 0, 0, 1, 0, 0)"
					});
					Timeout = setTimeout(function(){
						e.children(".scroll").css("transition","transform "+time+"ms linear") ;  
						e.children(".scroll").css("transform","matrix(1, 0, 0, 1, -"+parseInt(ul.innerWidth())+", 0)") ;
					},5)
				}
			})

			if(e.data("hoverstop")){
				e.children(".scroll").hover(function() {
					Interval =false;
					clearTimeout(Timeout);
					
					var _scroll = $(this);
	
					var transform = window.getComputedStyle(this, null).transform;
					var loadingX =  parseInt(transform.split(',')[4]) - parseInt(ul.innerWidth()) / time * 100 ;
					_scroll.css("transition","transform 100ms ease") ;  
					_scroll.css("transform","matrix(1, 0, 0, 1, "+loadingX+", 0)") ;
	
				}, function() {
	
					var _scroll = $(this);
	
					var loadingX =  parseInt(_scroll.css('transform').split(',')[4]);
					var newTime = parseInt(time - Math.abs( loadingX / parseInt(ul.innerWidth()) ) * time);

						Timeout = setTimeout(function(){

							_scroll.css("transition","transform "+newTime+"ms linear") ;  
							_scroll.css("transform","matrix(1, 0, 0, 1, -"+parseInt(ul.innerWidth())+", 0)") ;

						},5)
						
						setTimeout(function(){Interval = true; }, Math.max( newTime - 100,1));
				});
			}
			


			

    })
}
 

jQuery(document).ready(function () {

    if( typeof DNNapplyTypography == "undefined" ){
        marqueeLauncher($(".news-marquee"));
    }else{
        setTimeout(function(){
            marqueeLauncher($(".news-marquee"));
        },1000)
    }

});