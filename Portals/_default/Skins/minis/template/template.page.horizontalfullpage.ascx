#parse( "component/template.register.ascx" )
#parse( "component/template.css.ascx" )
#parse( "component/template.pageloaders.ascx" )
 
<div class="dng-main mm-page mm-slideout ${xf.ViewGlobalSetting("ContainerLayout","Wide")} fullpage-opacity-0" id="mm-content-box" data-page-type="horizontalfullpage">
  <div id="dng-wrapper"> 

    #if(${xf.ViewPageSetting("HeaderLayout","Inherit")}!="None" && !(${xf.ViewPageSetting("HeaderLayout","Inherit")}=="Inherit" && ${xf.ViewGlobalSetting("HeaderLayout","Inherit")}=="None"))
    #if(${xf.ViewPageSetting("HeaderLayout","Inherit")}!="Inherit" )
  	 ${xf.ViewIncludeLayoutHTML("Header","HeaderLayout",true)}
    #else
  	 ${xf.ViewIncludeLayoutHTML("Header","HeaderLayout",false)}
    #end
    #end
  

 
    <section id="dnn_content"> 
      <div class="scroll_content">
    <div class="ContentPane" id="ContentPane" runat="server"></div>
    </div>
    </section>
    
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


