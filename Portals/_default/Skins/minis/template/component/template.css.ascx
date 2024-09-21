
<!--Layout-->
#if(${xf.ViewPageSetting("HeaderLayout","Inherit")}!="None" && !(${xf.ViewPageSetting("HeaderLayout","Inherit")}=="Inherit" && ${xf.ViewGlobalSetting("HeaderLayout","Inherit")}=="None"))
#if(${xf.ViewPageSetting("HeaderLayout","Inherit")}!="Inherit" )
${xf.ViewIncludeLayoutCSS("Header","HeaderLayout",true)}
#else
${xf.ViewIncludeLayoutCSS("Header","HeaderLayout",false)}
#end
#end

#if(${xf.ViewPageSetting("ContentLayout","Inherit")}!="Inherit" )
${xf.ViewIncludeLayoutCSS("Content","ContentLayout",true)}
#else
${xf.ViewIncludeLayoutCSS("Content","ContentLayout",false)}
#end

#if(${xf.ViewPageSetting("FooterLayout","Inherit")}!="None" && !(${xf.ViewPageSetting("FooterLayout","Inherit")}=="Inherit" && ${xf.ViewGlobalSetting("FooterLayout","Inherit")}=="None"))
#if(${xf.ViewPageSetting("FooterLayout","Inherit")}!="Inherit" )
${xf.ViewIncludeLayoutCSS("Footer","FooterLayout",true)}
#else
${xf.ViewIncludeLayoutCSS("Footer","FooterLayout",false)}
#end
#end

<!--bootstrap-->
#if(${xf.ViewGlobalSetting("bootstrapcss",false)}) 
${xf.ViewIncludeCSS("resource/vendor/bootstrap/bootstrap.css",9)}
#else
${xf.ViewIncludeCSS("resource/vendor/bootstrap/bootstrap.lite.css",9)}
#end
<!--aos-->
#if(${xf.ViewGlobalSetting("aoscss",false)}) 
${xf.ViewIncludeCSS("resource/vendor/aos/aos.css",9)}
#end

<!--Theme-->
#if(${xf.ViewGlobalSetting("mmenucss",true)}) 
${xf.ViewIncludeCSS("resource/css/jquery.mmenu.css",9)}
#end

 
${xf.ViewIncludeCSS("resource/css/header.css",9)} 

 
${xf.ViewIncludeCSS("resource/css/theme.css",9)}
${xf.ViewIncludeGlobalCSS(18)}