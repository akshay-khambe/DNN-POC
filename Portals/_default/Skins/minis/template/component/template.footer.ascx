    #if(${xf.ViewPageSetting("FooterLayout","Inherit")}!="None" && !(${xf.ViewPageSetting("FooterLayout","Inherit")}=="Inherit" && ${xf.ViewGlobalSetting("FooterLayout","Inherit")}=="None"))
    <footer class="footer#if(${xf.ViewGlobalSetting("footerMode","scroll")}=="fixed") fixed_footer#end"> 
    #if(${xf.ViewPageSetting("FooterLayout","Inherit")}!="Inherit" )
  	 ${xf.ViewIncludeLayoutHTML("Footer","FooterLayout",true)}
    #else
     ${xf.ViewIncludeLayoutHTML("Footer","FooterLayout",false)}
    #end
    </footer>
    #end