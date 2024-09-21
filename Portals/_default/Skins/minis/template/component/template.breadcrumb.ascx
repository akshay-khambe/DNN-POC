    #if((${xf.ViewPageSetting("pageBreadcrumbs","inherit")}=="inherit" && ${xf.ViewGlobalSetting("Breadcrumbsenabled","true")}=="true") || ${xf.ViewPageSetting("pageBreadcrumbs","inherit")} =="on" )
     ${xf.ViewIncludeCSS("resource/css/breadcrumbs.css",10)}
    <div class="page-breadcrumbs ${xf.ViewGlobalSetting("breLocation","outset")} text-${xf.ViewGlobalSetting("breTextAlign","left")}">
        <div class="container ${xf.ViewGlobalSetting("breLayout","Boxed")}">
            <div class="center">
                <div class="center-v">
                  <div class="breadcrumbs breadcrumbs_sytle${xf.ViewGlobalSetting("breSytle","1")}">
                    <div class="breadcrumbs-box">
                    
                    <a href="<%=DotNetNuke.Common.Globals.AddHTTP(PortalSettings.PortalAlias.HTTPAlias)%>" ><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="1em" height="1em"><path d="M280.37 148.26L96 300.11V464a16 16 0 0 0 16 16l112.06-.29a16 16 0 0 0 15.92-16V368a16 16 0 0 1 16-16h64a16 16 0 0 1 16 16v95.64a16 16 0 0 0 16 16.05L464 480a16 16 0 0 0 16-16V300L295.67 148.26a12.19 12.19 0 0 0-15.3 0zM571.6 251.47L488 182.56V44.05a12 12 0 0 0-12-12h-56a12 12 0 0 0-12 12v72.61L318.47 43a48 48 0 0 0-61 0L4.34 251.47a12 12 0 0 0-1.6 16.9l25.5 31A12 12 0 0 0 45.15 301l235.22-193.74a12.19 12.19 0 0 1 15.3 0L530.9 301a12 12 0 0 0 16.9-1.6l25.5-31a12 12 0 0 0-1.7-16.93z" fill="currentColor"/></svg> ${xf.ViewGlobalSetting("Customhometext","Home")}</a> <span class="separator">/</span> <dnn:BREADCRUMB runat="server" id="dnnBREADCRUMB2" Separator=" <span class='separator'>/</span> " CssClass="pagetitle" RootLevel="0" />
                    </div>
                  </div>
                </div>
            </div>
        </div>
    </div>
    #end