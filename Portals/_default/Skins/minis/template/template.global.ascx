#parse( "component/template.register.ascx" )
#parse( "component/template.css.ascx" )
#parse( "component/template.pageloaders.ascx" )


#set($SidebarPosition = ${xf.ViewGlobalSetting("SidebarPosition","left")} )
#set($Sidebarenabled = ${xf.ViewGlobalSetting("Sidebarenabled","false")} )

#if($SidebarPosition != "left" && $SidebarPosition != "right")
  #set($sidebarcol = "auto" )
  #set($sidebarcolrtl = "container" )
#else
  #set($sidebarcol = ${xf.ViewGlobalSetting("SidebarWidth",2)} )
  #set($sidebarcolrtl = 12 - ${xf.ViewGlobalSetting("SidebarWidth",2)} )
#end

<div class="dng-main mm-page mm-slideout ${xf.ViewGlobalSetting("ContainerLayout","Wide")}#if($Sidebarenabled == "true")#if($SidebarPosition == "fixleftfull" || $SidebarPosition == "fixrightfull") has-sidebar-${SidebarPosition}#end#end"  id="mm-content-box">
  <div id="dng-wrapper"> 

    #parse( "component/template.pagetitle.ascx" )

    #parse( "component/template.breadcrumb.ascx" )


    <div class="BannerPane" id="BannerPane" runat="server"></div>


    <section id="dnn_content">      
    
      #if($Sidebarenabled == "true")

      <div class="sidebar-menu-icon icon-${SidebarPosition}"><span class="dg-menu-anime"><i></i></span></div>

      #if($SidebarPosition == "fixleft" || $SidebarPosition == "fixright" )
      <div class="has-sidebar sidebar-fix sidebar_pos_${SidebarPosition}" data-sticky="parent" data-width="${xf.ViewGlobalSetting("SidebarWidth2","300")}">
        <div class="col-lg-${sidebarcol} sidebar_dynamic sidebar_dynamic_sytle01 widget_line">
        <div class="sidebar-menu-close"></div>

          <div class="sidebar_sticky" data-offset="30" #if(${xf.ViewGlobalSetting("SidebarFixed",false)})data-sticky="on"#end>

              #if(${xf.ViewGlobalSetting("displaySidebarMenu",true)})
              <div class="sidebar-menu">
                <dnn:LEFTGOMENU runat="server" id="dnnGOMENU6" Effect="HTML" ViewLevel="${xf.ViewGlobalSetting("SidebarMenulevel","0")}"  />
              </div>
              #end
              <div class="panebox SidebarPane" id="SidebarPane" runat="server"></div>
          </div>
        </div>

      #end

      <div class="container has-sidebar sidebar_pos_${SidebarPosition}" data-sticky="parent">
      <div class="row" >
        #if($SidebarPosition == "left" || $SidebarPosition == "fixleftfull" )
        <div class="col-lg-${sidebarcol} sidebar_dynamic sidebar_dynamic_sytle01 widget_line sidebar_pos_${SidebarPosition}">
        <div class="sidebar-menu-close"></div>
       
       <div class="sidebar_sticky" data-offset="30" #if(${xf.ViewGlobalSetting("SidebarFixed",false)})data-sticky="on"#end>
              #if(${xf.ViewGlobalSetting("displaySidebarMenu",true)})
              <div class="sidebar-menu">
                <dnn:LEFTGOMENU runat="server" id="dnnGOMENU6" Effect="HTML" ViewLevel="${xf.ViewGlobalSetting("SidebarMenulevel","0")}"  />
              </div>
              #end
                <div class="panebox SidebarPane" id="SidebarPane" runat="server"></div>
        </div></div>
        #end
     
      <div class="col-lg-${sidebarcolrtl} sidebar-siblings-container">
      #end

      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="ContentPane" id="ContentPane" runat="server"></div>
          </div>
        </div>
      </div>

     ${xf.ViewIncludeLayoutHTML("Content","ContentLayout",false)} 
    #if($Sidebarenabled == "true")
    </div>

    #if($SidebarPosition == "right"  || $SidebarPosition == "fixrightfull" )
    
    <div class="col-lg-${sidebarcol} sidebar_dynamic sidebar_dynamic_sytle01 widget_line sidebar_pos_${SidebarPosition}"> 
        <div class="sidebar-menu-close"></div>
    <div class="sidebar_sticky" data-offset="30" #if(${xf.ViewGlobalSetting("SidebarFixed",false)})data-sticky="on"#end>  
        #if(${xf.ViewGlobalSetting("displaySidebarMenu",true)})
         <div class="sidebar-menu">
          <dnn:LEFTGOMENU runat="server" id="dnnGOMENU7" Effect="HTML" ViewLevel="${xf.ViewGlobalSetting("SidebarMenulevel","0")}"  /> 
        </div>
        #end
        <div class="panebox SidebarPane" id="SidebarPane" runat="server"></div>
    </div>

    </div>
  
    #end
    #if($SidebarPosition == "fixleft" || $SidebarPosition == "fixright" )
    </div>
    #end

    </div>
    </div>
    #end


    </section>

    #parse( "component/template.footer.ascx" )

    #parse( "component/template.widget.ascx" )
  </div>
</div>
  #parse( "component/template.script.ascx" )
