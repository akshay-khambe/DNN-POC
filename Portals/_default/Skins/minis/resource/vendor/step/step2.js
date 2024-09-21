$(document).ready(function() {
	$(".step-02").each(function(){
		var box =$(this);
		box.find("canvas").remove();
		var canvas = document.createElement('canvas');
		var context = canvas.getContext('2d');
		var hv= 1.2;
		function draw(){
			
			if($(window).width()<768){
				hv= 0.5;
			}else{
				hv= 1.2;
			}
		
		canvas.width = box.width();
		canvas.height = box.height();
		
		context.beginPath();
		context.setLineDash([3, 3]);
		context.moveTo(box.width()/2,15);

		box.children("li").each(function(index){
			var li =$(this);
			var icon_size = li.children(".icon").width()/2;

			if(index===0){
				context.bezierCurveTo(50,-10,icon_size,li.position().top,icon_size,li.position().top+icon_size);
			

			}else if(index%2){
				context.bezierCurveTo(li.width()*0.3,li.position().top+li.height()*hv,li.width()*0.74,li.position().top-li.height()*hv,li.width()-icon_size,li.position().top+icon_size);
			}else{
				context.bezierCurveTo(li.width()*0.5,li.position().top+li.height()*hv,li.width()*0.45,li.position().top-li.height()*hv,icon_size,li.position().top+icon_size);
			}
		})
		
		if(box.children("li").length%2){
			context.bezierCurveTo(0,box.height()+40,box.width()*0.3,box.height(),box.width()*0.6,box.height()-15);
		}else{
			context.bezierCurveTo(box.width(),box.height()+40,box.width()*0.7,box.height(),box.width()*0.6,box.height()-15);
		}


		context.lineWidth = 1;
		
		context.strokeStyle = box.css("border-color");

		context.stroke();    
		}
		

 		draw();

		box.append(canvas);


		$(window).resize(function(){
			context.fillStyle="rgba(255,255,255,0)";
			context.fillRect(0,0,box.width(),box.height());
			context.clearRect(0,0,box.width(),box.height());
			draw();
		})

		if( typeof DNNapplyTypography !== "undefined" ){
			var stime= true;
			box.bind('DOMNodeInserted', function(e) {  
				if(stime){
					stime= false;
					setTimeout(function(){
						context.fillStyle="rgba(255,255,255,0)";
						context.fillRect(0,0,box.width(),box.height());
						context.clearRect(0,0,box.width(),box.height());
						draw();
						stime= true;
					},300)
				}
				
			}); 
		
		}
	})



})

