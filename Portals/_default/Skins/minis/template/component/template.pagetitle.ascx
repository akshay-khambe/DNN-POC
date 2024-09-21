 

   
   
    #if((${xf.ViewPageSetting("pageTitleLayout","inherit")}=="inherit" && ${xf.ViewGlobalSetting("Pagetitleenabled","true")}=="true") || ${xf.ViewPageSetting("pageTitleLayout","inherit")} =="on" )
      #if((${xf.ViewPageSetting("bgincludeheader","inherit")}=="inherit" && ${xf.ViewGlobalSetting("bgincludeheader","true")}=="true") || ${xf.ViewPageSetting("bgincludeheader","inherit")} =="on" )
      <div class="page-title-bg #if(${xf.ViewPageSetting("ptColorOverlay","inherit")} =="inherit")#if( ${xf.ViewGlobalSetting("ptColorOverlay","off")} !="off") ${xf.ViewGlobalSetting("ptColorOverlay","off")}-overlay#end#else${xf.ViewPageSetting("ptColorOverlay","inherit")}-overlay#end">
      #end
    #end

    #if(${xf.ViewPageSetting("HeaderLayout","Inherit")}!="None" && !(${xf.ViewPageSetting("HeaderLayout","Inherit")}=="Inherit" && ${xf.ViewGlobalSetting("HeaderLayout","Inherit")}=="None"))
    #if(${xf.ViewPageSetting("HeaderLayout","Inherit")}!="Inherit" )
  	 ${xf.ViewIncludeLayoutHTML("Header","HeaderLayout",true)}
    #else
  	 ${xf.ViewIncludeLayoutHTML("Header","HeaderLayout",false)}
    #end
    #end
  
    #if((${xf.ViewPageSetting("pageTitleLayout","inherit")}=="inherit" && ${xf.ViewGlobalSetting("Pagetitleenabled","true")}=="true") || ${xf.ViewPageSetting("pageTitleLayout","inherit")} =="on" )

      #if((${xf.ViewPageSetting("bgincludeheader","inherit")}=="inherit" && ${xf.ViewGlobalSetting("bgincludeheader","true")}=="false") || ${xf.ViewPageSetting("bgincludeheader","inherit")} =="off" )
      <div class="page-title-bg #if(${xf.ViewPageSetting("ptColorOverlay","inherit")} =="inherit")#if( ${xf.ViewGlobalSetting("ptColorOverlay","off")} !="off") ${xf.ViewGlobalSetting("ptColorOverlay","off")}-overlay#end#else${xf.ViewPageSetting("ptColorOverlay","inherit")}-overlay#end">
      #end

      #if(${xf.ViewPageSetting("Custompagetitlebg","inherit")} =="custom")
        #set($ptVideoPoster = ${xf.ViewPageSetting("ptVideoPoster","")})
        #set($ptmp4url = ${xf.ViewPageSetting("ptmp4url","")})
      #else
        #set($ptVideoPoster = ${xf.ViewGlobalSetting("ptVideoPoster","")})
        #set($ptmp4url = ${xf.ViewGlobalSetting("ptmp4url","")})
      #end

        #if((${xf.ViewPageSetting("Custompagetitlebg","inherit")} =="inherit" && ${xf.ViewGlobalSetting("ptbgtype","Image")}=="Video") || (${xf.ViewPageSetting("Custompagetitlebg","inherit")} =="custom" && ${xf.ViewPageSetting("ptbgtype","Image")} =="Video"))
        <div class="page-title-Video">
            <video poster="${ptVideoPoster}" autoplay muted loop>
              <source src="${ptmp4url}" type="video/mp4">
          </video> 
        </div>
        #end
    #end




    #if((${xf.ViewPageSetting("pageTitleLayout","inherit")}=="inherit" && ${xf.ViewGlobalSetting("Pagetitleenabled","true")}=="true") || ${xf.ViewPageSetting("pageTitleLayout","inherit")} =="on" )
    <dnn:DnnCssInclude ID="Page_title_css" runat="server" FilePath="resource/css/pagetitle.css" PathNameAlias="SkinPath" Priority="10"  />
    <div id="page-title" class="page-title #if(${xf.ViewPageSetting("ptFontColor","inherit")} =="inherit")${xf.ViewGlobalSetting("ptFontColor","light")}#else${xf.ViewPageSetting("ptFontColor","inherit")}#end ${xf.ViewGlobalSetting("ptFontSize","large")}" #if(${xf.ViewPageSetting("TitleHeight","inherit")} =="inherit" ) #if(${xf.ViewGlobalSetting("TitleHeight","custom")} == "custom") data-height="${xf.ViewGlobalSetting("TitleCustomHeight","40")}" #else data-height="full" #end #else #if(${xf.ViewPageSetting("TitleHeight","custom")} == "custom") data-height="${xf.ViewPageSetting("TitleCustomHeight","40")}" #else data-height="full" #end #end >
   
      <div class="container page-title-container #if(${xf.ViewGlobalSetting("PageTitleLayout","Horizontal")}=="Horizontal") page-title-row-${xf.ViewGlobalSetting("TitleLayout","left")} #else page-title-column-center #end">

      <div class="center"> 


    #if(${xf.ViewPageSetting("TitleScrolling","inherit")} == "inherit")
       #if(${xf.ViewGlobalSetting("TitleScrolling","false")}=="true") 
        #set($TitleScrolling = "scrolling-text" )
       #else
        #set($TitleScrolling = "" )
       #end
    #else 
     #if(${xf.ViewPageSetting("TitleScrolling","inherit")} == "on")
        #set($TitleScrolling = "scrolling-text" )
     #else
        #set($TitleScrolling = "" )
     #end
    #end

        <div class="center-v ${TitleScrolling}">

         #if(${xf.ViewGlobalSetting("PageTitleLayout","Horizontal")}=="Horizontal")
          #if((${xf.ViewPageSetting("TitleDisplayTitle","inherit")}=="inherit" && ${xf.ViewGlobalSetting("TitleDisplayTitle","true")}=="true") || ${xf.ViewPageSetting("TitleDisplayTitle","inherit")} =="on" )
            <h1 class="main-title bold">
              <%= IIf(String.IsNullOrEmpty( PortalSettings.ActiveTab.Title), PortalSettings.ActiveTab.TabName, PortalSettings.ActiveTab.Title)%>
            </h1>
          #end
            <div class="PageTitlePane width-md-40" id="PageTitlePane" runat="server"></div>
         #else
          <div class="title-area">
            #if((${xf.ViewPageSetting("TitleDisplayTitle","inherit")}=="inherit" && ${xf.ViewGlobalSetting("TitleDisplayTitle","true")}=="true") || ${xf.ViewPageSetting("TitleDisplayTitle","inherit")} =="on" )
            <h1 class="main-title">
              <%= IIf(String.IsNullOrEmpty( PortalSettings.ActiveTab.Title), PortalSettings.ActiveTab.TabName, PortalSettings.ActiveTab.Title)%>
            </h1>
           #end
            <div class="PageTitlePane width-md-40" id="PageTitlePane" runat="server"></div>
          </div> 
         #end


        </div>



      </div>
        
      #if(${xf.ViewGlobalSetting("TitleDisplayArrow","true")} =='true')
          <div class="page-title-arrow #if(${xf.ViewGlobalSetting("TitleHeight","custom")} == "custom") mobile_hide #end">
              <div class="arrow arrow-first"></div>
              <div class="arrow arrow-second"></div>
          </div>
      #end
        
      </div>
    </div> 
    </div> 
    #end
<div class="PageTitleFullPane" id="PageTitleFullPane" runat="server"></div>