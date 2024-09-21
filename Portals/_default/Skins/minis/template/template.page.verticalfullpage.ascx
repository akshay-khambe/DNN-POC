#parse( "component/template.register.ascx" )
#parse( "component/template.css.ascx" )
#parse( "component/template.pageloaders.ascx" )
 
<div class="dng-main mm-page mm-slideout ${xf.ViewGlobalSetting("ContainerLayout","Wide")} fullpage-opacity-0" id="mm-content-box" data-page-type="verticalfullpage">
  <div id="dng-wrapper"> 

    #if(${xf.ViewPageSetting("HeaderLayout","Inherit")}!="None" && !(${xf.ViewPageSetting("HeaderLayout","Inherit")}=="Inherit" && ${xf.ViewGlobalSetting("HeaderLayout","Inherit")}=="None"))
    #if(${xf.ViewPageSetting("HeaderLayout","Inherit")}!="Inherit" )
  	 ${xf.ViewIncludeLayoutHTML("Header","HeaderLayout",true)}
    #else
  	 ${xf.ViewIncludeLayoutHTML("Header","HeaderLayout",false)}
    #end
    #end
  

 
    <section id="dnn_content">   
    <div class="ContentPane" id="ContentPane" runat="server"></div>
    #if(${xf.ViewPageSetting("ContentLayout","Inherit")}!="Inherit" )
      ${xf.ViewIncludeLayoutHTML("Content","ContentLayout",true)} 
    #else
      ${xf.ViewIncludeLayoutHTML("Content","ContentLayout",false)} 
    #end
    </section>
    #if(${xf.ViewPageSetting("FooterLayout","Inherit")}!="None" && !(${xf.ViewPageSetting("FooterLayout","Inherit")}=="Inherit" && ${xf.ViewGlobalSetting("FooterLayout","Inherit")}=="None"))
    #if(${xf.ViewPageSetting("FooterAnchor",false)})
      <div class="anchorTag footerAnchorTag" id="${xf.ViewPageSetting("FooterAnchorID","")}" data-title="${xf.ViewPageSetting("FooterAnchorTitle","")}">
    #end   
    #parse( "component/template.footer.ascx" )
    #end
  </div>


</div>

<script>
  var OnePageOption={
    navigation:${xf.ViewPageSetting("Navigation","true")},
    navigation_position:"${xf.ViewPageSetting("NavigationPosition","right")}",
    navigation_style:"${xf.ViewPageSetting("NavigationStyle","style01")}",
    easing:"${xf.ViewPageSetting("easing","linear")}",
    duration:${xf.ViewPageSetting("duration","1200")},
  }
</script>          
<script type="text/javascript" src="${xf.SkinPath}resource/vendor/easing/jquery.easing.min.js"></script> 
<script type="text/javascript" src="${xf.SkinPath}resource/vendor/anchor/anchor.js"></script> 
#parse( "component/template.script.ascx" )

<script>
  $(".dng-main").attr("style", "width:calc(100% + " + (window.innerWidth - $(window).width()) + "px)").css({
    "height": "100vh",
    "overflow": "hidden",
    "overflow-y": "auto"
  });



  function gradientColor(start, end, step, max) {

    l = step / max;

    R = (end[0] - start[0]) * l + start[0];
    G = (end[1] - start[1]) * l + start[1];
    B = (end[2] - start[2]) * l + start[2];
    return "rgb(" + parseInt(R) + "," + parseInt(G) + "," + parseInt(B) + ")";
  }

  function colorRgbArray(sColor) {
    if (sColor.indexOf("#") != -1) {
      var reg = /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;
      var sColor = sColor.toLowerCase();
      if (sColor && reg.test(sColor)) {
        if (sColor.length === 4) {
          var sColorNew = "#";
          for (var i = 1; i < 4; i += 1) {
            sColorNew += sColor.slice(i, i + 1).concat(sColor.slice(i, i + 1));
          }
          sColor = sColorNew;
        }
        var sColorChange = [];
        for (var i = 1; i < 7; i += 2) {
          sColorChange.push(parseInt("0x" + sColor.slice(i, i + 2)));
        }
        return sColorChange;
      }
    } else {
      sColor = sColor.split("(")[1].split(")")[0].split(",");

      var c = [];

      sColor.forEach(function (item) {
        c.push(parseInt(item));
      });

      return c;



    }
  };

  var colorlist = [];

  function GetColorList() {
    colorlist = [];
    $(".dng-main .is-section").each(function () {
      var color = $(this).css("background-color");
      if (color) {
        color = colorRgbArray(color);
        colorlist.push({
          o: $(this).position().top,
          c: color
        });
        $(this).data("color", color);
      }
    })
    $(".dng-main").addClass("section-transparent").scroll();
  }
  $(".dng-main").scroll(function () {
    var t = $(this).scrollTop();
    var last =true;
    for (var i = 0; i < colorlist.length; i++) {
      var item = colorlist[i];
      if (t < item["o"]) {
        if (colorlist[i - 1]) {
          $(".dng-main").css("background-color", gradientColor(colorlist[i - 1]["c"], item["c"], t - colorlist[i - 1]["o"], item["o"] - colorlist[i - 1]["o"]));
        }
        last =false;
        return false;
      }
    }
    if(last){ 
      $(".dng-main").css("background-color", gradientColor(colorlist[colorlist.length - 1]["c"],colorlist[colorlist.length - 1]["c"],1,1));
    }
  })
  

  $(window).on("load resize ready",function () {
    colorlist = [];
    $(".dng-main .is-section").each(function () {
      var color = $(this).data("color");
      if (color) {
        colorlist.push({
          o: $(this).position().top,
          c: color
        });
      }
    })
     $(".dng-main").scroll();
  })

  if (typeof DNNapplyTypography != "undefined") {
    jQuery(document).ready(function () {
      $("#divBoxBackgroundColor button,.customcolor button").on("mouseup", function () {
        $(".dng-main").removeClass("section-transparent");
        setTimeout(function () {
          GetColorList();
        }, 100)
      })
    })
  }

  GetColorList();


</script>


