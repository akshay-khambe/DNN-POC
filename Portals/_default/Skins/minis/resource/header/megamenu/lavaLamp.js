(function($){$.fn.lavaLamp=function(o){o=$.extend({fx:"linear",speed:500,click:function(){}},o||{});return this.each(function(index){var me=$(this),noop=function(){},$back=$('<li class="back"><div class="left"><div class="center"></div></div></li>').appendTo(me),$li=$(">li",this),curr=$("li.current",this)[0]||$($li[0]).addClass("current")[0],on=1;$li.not(".back").hover(function(){move(this)},noop);$(this).hover(noop,function(){move(curr)});if($("#anchorNav").length!=0){$(window).scroll(function(){if(!$(curr).hasClass("current")&&on==1){curr=me.find("li.current")[0];setCurr(curr);return false;}})} ;$li.click(function(e){on=0;setCurr(this);return o.click.apply(this,[e,this])});setCurr(curr);function setCurr(el){$back.stop().animate({"left":el.offsetLeft+"px","width":el.offsetWidth+"px"},function(){setTimeout(function(){on=1},100);});curr=el};function move(el){$back.each(function(){$.dequeue(this,"fx")}).animate({width:el.offsetWidth,left:el.offsetLeft},o.speed,o.fx)};if(index==0){$(window).resize(function(){$back.css({width:curr.offsetWidth,left:curr.offsetLeft})})}})}})(jQuery);

jQuery(document).ready(function($) {
    jQuery(function() {
      jQuery(".hoverstyle_4 .primary_structure").lavaLamp({
      //  fx: 'easeOutExpo', 
        speed: 300
      });
    });
});
