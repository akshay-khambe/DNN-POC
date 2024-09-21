<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="GOMENU" Src="~/DesktopModules/DNNGo_ThemePluginPro/Skin_MultiMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MOBILEMENU" Src="~/DesktopModules/DNNGo_ThemePluginPro/Skin_Menus.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MEGAMENU" Src="~/DesktopModules/DNNGo_ThemePluginPro/Skin_Megamenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTGOMENU" Src="~/DesktopModules/DNNGo_ThemePluginPro/Skin_Html.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BACKGROUND" Src="~/DesktopModules/DNNGo_ThemePluginPro/Skin_Background.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMBBG" Src="~/DesktopModules/DNNGo_ThemePluginPro/Skin_Background.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USERANDLOGIN" Src="~/Admin/Skins/UserAndLogin.ascx" %>
<%@ Register TagPrefix="dnn" TagName="login" Src="~/Admin/Skins/login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %> 
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Meta" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SKINPLUGIN" Src="~/DesktopModules/DNNGo_ThemePluginPro/Skin_Plugin.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="DNNGO_CONTENTBUILDER" Src="~/DesktopModules/DNNGo_ThemePluginPro/Skin_ContentBuilder.ascx" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" Src="~/Admin/Skins/jQuery.ascx" %>
<dnn:jQuery runat="server" />

<dnn:DNNGO_CONTENTBUILDER runat="server" id="DNNGO_CONTENTBUILDER1" />

<dnn:SKINPLUGIN runat="server" id="SKINPLUGIN1" />
<dnn:Meta runat="server" Name="viewport" Content="width=device-width,height=device-height, minimum-scale=1.0" />
<dnn:Meta runat="server" http-equiv="X-UA-Compatible" content="IE=edge" />
<dnn:Meta runat="server" name="format-detection" content="telephone=no" />

<script>var userAgent = navigator.userAgent;if((userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1) || (userAgent.indexOf('Trident') > -1 && userAgent.indexOf("rv:11.0") > -1)){document.getElementsByTagName('html')[0].className += 'ie-browser'; };</script>




<!--Layout-->
<dnn:DnnCssInclude ID="layoutdb_header_home01" runat="server" FilePath="Layouts/0/LayoutDB.Header.home01.css" PathNameAlias="SkinPath" Priority="10"  />

<dnn:DnnCssInclude ID="layoutdb_content_default" runat="server" FilePath="Layouts/0/LayoutDB.Content.default.css" PathNameAlias="SkinPath" Priority="10"  />


<!--bootstrap-->
<dnn:DnnCssInclude ID="bootstrap_lite" runat="server" FilePath="resource/vendor/bootstrap/bootstrap.lite.css" PathNameAlias="SkinPath" Priority="9"  />
<!--aos-->

<!--Theme-->
<dnn:DnnCssInclude ID="jquery_mmenu" runat="server" FilePath="resource/css/jquery.mmenu.css" PathNameAlias="SkinPath" Priority="9"  />

 
<dnn:DnnCssInclude ID="header" runat="server" FilePath="resource/css/header.css" PathNameAlias="SkinPath" Priority="9"  /> 

 
<dnn:DnnCssInclude ID="theme" runat="server" FilePath="resource/css/theme.css" PathNameAlias="SkinPath" Priority="9"  />
<dnn:DnnCssInclude ID="global_0" runat="server" FilePath="global-0.css" PathNameAlias="SkinPath" Priority="18"  />

     <dnn:DnnCssInclude ID="pageloaders" runat="server" FilePath="resource/css/loaders.css" PathNameAlias="SkinPath" Priority="10"  />
    <div class="page-loaders" style="background-color:#1abc9c;color:#ffffff;">
        <div id="loading-center">
            <div id="loading-center-absolute">
                <div class="object" id="object_one"></div>
                <div class="object" id="object_two"></div>
                <div class="object" id="object_three"></div>

            </div>
        </div>

    </div>
    








<div class="dng-main mm-page mm-slideout Wide"  id="mm-content-box">
  <div id="dng-wrapper"> 


     

   
   
                <div class="page-title-bg ">
          
          	 <!--#include file="Layouts/0/LayoutDB.Header.home01.ascx"-->
          
    
      
            
            



        <dnn:DnnCssInclude ID="Page_title_css" runat="server" FilePath="resource/css/pagetitle.css" PathNameAlias="SkinPath" Priority="10"  />
    <div id="page-title" class="page-title light large"   data-height="380"   >
   
      <div class="container page-title-container  page-title-column-center ">

      <div class="center"> 


                      
        <div class="center-v scrolling-text">

                   <div class="title-area">
                        <h1 class="main-title">
              <%= IIf(String.IsNullOrEmpty( PortalSettings.ActiveTab.Title), PortalSettings.ActiveTab.TabName, PortalSettings.ActiveTab.Title)%>
            </h1>
                       <div class="PageTitlePane width-md-40" id="PageTitlePane" runat="server"></div>
          </div> 
         

        </div>



      </div>
        
              
      </div>
    </div> 
    </div> 
    <div class="PageTitleFullPane" id="PageTitleFullPane" runat="server"></div>
        


    <div class="BannerPane" id="BannerPane" runat="server"></div>
 
    <section id="dnn_content">   

 
    

 
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="ContentPane" id="ContentPane" runat="server"></div>
          </div>
        </div>
      </div>

        <!--#include file="Layouts/0/LayoutDB.Content.default.ascx"--> 
    
    

    </section>

        
    
          <dnn:DnnCssInclude ID="backtop" runat="server" FilePath="resource/css/backtop.css" PathNameAlias="SkinPath" Priority="9"  />
      <ul class="fixed-widget-list">
                                                                                        <li class="facebook"><a rel="noopener" href="#" target="_blank"><span>Facebook</span></a></li>
                        <li class="WhatsApp"><a rel="noopener" href="#" target="_blank"><span>WhatsApp</span></a></li>
        
        
                <li class="phone"><a href="tel:(+86)1234567809"><span>(+86)1234567809</span></a></li>
                        <li class="envelope"><a href="mailto:creative@gmail.com"><span>creative@gmail.com</span></a></li>
                       <li class="share"><span>Contact info</span></a></li>
                     <li id="back-to-top" class="backtop"><span>Back to top</span></a></li>
             </ul>
    
  </div>
</div>
    <div data-path="/Portals/_default/skins/minis/" data-mapapi="" id="SkinPath"></div>
<script type="text/javascript" src="/Portals/_default/skins/minis/global-0.js?cdv=04.02.01.00.68"></script> 
