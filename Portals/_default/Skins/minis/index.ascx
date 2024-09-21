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
<dnn:DNNGO_CONTENTBUILDER runat="server" id="DNNGO_CONTENTBUILDER1" />

<dnn:SKINPLUGIN runat="server" id="SKINPLUGIN1" />
<dnn:Meta runat="server" Name="viewport" Content="width=device-width,height=device-height, minimum-scale=1.0, maximum-scale=1.0" />
<dnn:Meta runat="server" http-equiv="X-UA-Compatible" content="IE=edge" />
<dnn:Meta runat="server" name="format-detection" content="telephone=no" />
<dnn:DnnCssInclude ID="ViewGoogleFontLink" runat="server" FilePath="https://fonts.googleapis.com/css?family=Nunito:300,regular,600,700,800&display=swap&subset=" Priority="9" />
<script>
  var userAgent = navigator.userAgent;
  if ((userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1) || (userAgent.indexOf('Trident') > -1 && userAgent.indexOf("rv:11.0") > -1)) {
    document.getElementsByTagName('html')[0].className += 'ie-browser';
  };
</script>



<!--bootstrap-->
<dnn:DnnCssInclude ID="bootstrap_lite" runat="server" FilePath="resource/vendor/bootstrap/bootstrap.lite.css" PathNameAlias="SkinPath" Priority="9" />

<!--Theme-->
<dnn:DnnCssInclude ID="jquery_mmenu" runat="server" FilePath="resource/css/jquery.mmenu.css" PathNameAlias="SkinPath" Priority="9" />
<dnn:DnnCssInclude ID="header" runat="server" FilePath="resource/css/header.css" PathNameAlias="SkinPath" Priority="9" />
<dnn:DnnCssInclude ID="theme" runat="server" FilePath="resource/css/theme.css" PathNameAlias="SkinPath" Priority="9" />




<div class="dng-main mm-page mm-slideout Wide" id="mm-content-box">
  <div id="dng-wrapper">


    <div class="page-title-bg ">

      <div class="header-replace ">
        <header class="header_bg header-wrap header-default floating-nav floating-nav-sticky">
          <div id="megamenuWidthBox" class="container"></div>
          <div class="header-center-bg  header-bg-box" data-height="70" id="headerrow-349356">
            <div class="container">
              <div class="header-center header-container-box">
                <div class="header-area area-left header-vertical  header-vertical" style="width:155px" id="column-645135">
                  <div class="header-content-wrap">
                    <div class="logo" id="logo575027"> <dnn:LOGO runat="server" id="dnnLOGO575027" cssClass="header-logo" BorderWidth="0" /></div>
                  </div>
                </div>
                <div class="header-area area-center header-vertical text-right header-vertical text-right" id="column-930454">
                  <div class="header-content-wrap">
                    <div class="nav-bar">
                      <div id="dng-megamenu673076" data-split="false" class="dng-megamenu hoverstyle_1 flyout-shadow mega-shadow">
                        <dnn:MEGAMENU runat="server" id="MEGAMENU673076" Effect="Hslide" ViewLevel="0" ShowUI="Extension" WidthBoxClassName="#megamenuWidthBox" />
                      </div>
                    </div>
                    <dnn:DnnCssInclude runat="server" FilePath="resource/header/megamenu/megamenu.css" PathNameAlias="SkinPath" Priority="9" />
                    <dnn:DnnJsInclude runat="server" FilePath="resource/header/megamenu/megamenu.js" PathNameAlias="SkinPath" Priority="9" />
                  </div>
                </div>
                <div class="header-area area-right header-horizontal  header-horizontal" style="width:70px" id="column-722316">
                  <div class="header-content-wrap">
                    <div class="header-line"></div>
                    <div class="search-popup-box" id="search-popup-box799064" placeholder="Enter any key words to search">
                      <div class="icon hover-accent"><span class="magnifier"><i></i></span></div>
                      <div class="popup-reveal color-dark "></div>
                      <div class="popup-content color-dark bg-accent">
                        <div class="popup-close hover-accent"><span class="icon-cross"></span></div>
                        <div class="popup-center">
                          <dnn:SEARCH runat="server" id="dnnSEARCH799064" CssClass="search" ShowSite="False" ShowWeb="False" submit=" " />
                        </div>
                      </div>
                    </div>
                    <dnn:DnnCssInclude runat="server" FilePath="resource/header/search-popup/search-popup.css" PathNameAlias="SkinPath" Priority="9" HtmlAttributesAsString="media:'none',title:'all',onload:'this.media=this.title" />
                    <dnn:DnnJsInclude runat="server" FilePath="resource/header/search-popup/search-popup.js" PathNameAlias="SkinPath" Priority="9" HtmlAttributesAsString="async:'async'" />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </header>
      </div>
      <div class="mobile-header-replace">
        <header class="mobile-header floating-nav">
          <div class="header-mobile-bg mobile-header-shadow" id="mobileheader-639685">
            <div class="header-mobile">
              <div class="header-area area-left header-horizontal text-left header-horizontal text-left" id="column-615625">
                <div class="header-content-wrap">
                  <div class="search-popup-box" id="search-popup-box406782" placeholder="Enter any key words to search">
                    <div class="icon hover-accent"><span class="magnifier"><i></i></span></div>
                    <div class="popup-reveal color-dark "></div>
                    <div class="popup-content color-dark bg-accent">
                      <div class="popup-close hover-accent"><span class="icon-cross"></span></div>
                      <div class="popup-center">
                        <dnn:SEARCH runat="server" id="dnnSEARCH406782" CssClass="search" ShowSite="False" ShowWeb="False" submit=" " />
                      </div>
                    </div>
                  </div>
                  <dnn:DnnCssInclude runat="server" FilePath="resource/header/search-popup/search-popup.css" PathNameAlias="SkinPath" Priority="9" HtmlAttributesAsString="media:'none',title:'all',onload:'this.media=this.title" />
                  <dnn:DnnJsInclude runat="server" FilePath="resource/header/search-popup/search-popup.js" PathNameAlias="SkinPath" Priority="9" HtmlAttributesAsString="async:'async'" />
                </div>
              </div>
              <div class="header-area area-center header-horizontal  header-horizontal" id="column-946586">
                <div class="header-content-wrap">
                  <div class="logo" id="logo161097">
                    <dnn:LOGO runat="server" id="dnnLOGO161097" cssClass="header-logo" BorderWidth="0" />
                    <dnn:LOGO runat="server" id="floatingLOGO161097" cssClass="floating-header-logo" BorderWidth="0" />
                  </div>
                </div>
              </div>
              <div class="header-area area-right header-horizontal text-right header-horizontal text-right" id="column-62191">
                <div class="header-content-wrap">
                  <div class="mobile-menu-icon"><span class="dg-menu-anime"><i></i></span></div>
                  <div class="mobilemenu-main" id="mobilemenu11098" data-title="Menu"><span class="mobileclose"></span>
                    <div class="m-menu">
                      <dnn:LEFTGOMENU runat="server" id="MOBILEMENU11098" Effect="HTML" />
                    </div>
                  </div>
                  <dnn:DnnCssInclude runat="server" FilePath="resource/header/mobilemenu/mobilemenu.css" PathNameAlias="SkinPath" Priority="17" HtmlAttributesAsString="media:'none',title:'all',onload:'this.media=this.title" />
                  <dnn:DnnJsInclude runat="server" FilePath="resource/header/mobilemenu/mobilemenu.js" PathNameAlias="SkinPath" Priority="17" HtmlAttributesAsString="async:'async'" />
                </div>
              </div>
            </div>
          </div>
        </header>
      </div>



      <dnn:DnnCssInclude ID="Page_title_css" runat="server" FilePath="resource/css/pagetitle.css" PathNameAlias="SkinPath" Priority="10" />
      <div id="page-title" class="page-title light large" data-height="380">

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

    <dnn:DnnCssInclude ID="breadcrumbs" runat="server" FilePath="resource/css/breadcrumbs.css" PathNameAlias="SkinPath" Priority="10" />
    <div class="page-breadcrumbs outset text-left">
      <div class="container Boxed">
        <div class="center">
          <div class="center-v">
            <div class="breadcrumbs breadcrumbs_sytle1">
              <div class="breadcrumbs-box">

                <a href="<%=DotNetNuke.Common.Globals.AddHTTP(PortalSettings.PortalAlias.HTTPAlias)%>"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="1em" height="1em">
                    <path d="M280.37 148.26L96 300.11V464a16 16 0 0 0 16 16l112.06-.29a16 16 0 0 0 15.92-16V368a16 16 0 0 1 16-16h64a16 16 0 0 1 16 16v95.64a16 16 0 0 0 16 16.05L464 480a16 16 0 0 0 16-16V300L295.67 148.26a12.19 12.19 0 0 0-15.3 0zM571.6 251.47L488 182.56V44.05a12 12 0 0 0-12-12h-56a12 12 0 0 0-12 12v72.61L318.47 43a48 48 0 0 0-61 0L4.34 251.47a12 12 0 0 0-1.6 16.9l25.5 31A12 12 0 0 0 45.15 301l235.22-193.74a12.19 12.19 0 0 1 15.3 0L530.9 301a12 12 0 0 0 16.9-1.6l25.5-31a12 12 0 0 0-1.7-16.93z" fill="currentColor" /></svg> Home</a><span class="separator">/</span>
                <dnn:BREADCRUMB runat="server" id="dnnBREADCRUMB2" Separator="<span class='separator'>/</span>" CssClass="pagetitle" RootLevel="0" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="BannerPane" id="BannerPane" runat="server"></div>

    <section id="dnn_content">




      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="ContentPane" id="ContentPane" runat="server"></div>
          </div>
        </div>
      </div>

      <div class="container-fluid col-no-padding " id="row-565405">
        <div class="column-gap-0 dng-row row">
          <div class="dng-column col-sm-12">
            <div class="dng-column-inner " id="column-841208">
              <div class="panebox FullScreenPaneA" id="FullScreenPaneA" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" dng-row row" id="row-575102">
          <div class="dng-column col-sm-12">
            <div class="dng-column-inner " id="column-435708">
              <div class="panebox TopPane" id="TopPane" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid col-no-padding " id="row-840687">
        <div class="column-gap-0 dng-row row">
          <div class="dng-column col-sm-12">
            <div class="dng-column-inner " id="column-453728">
              <div class="panebox FullScreenPaneB" id="FullScreenPaneB" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" column-gap-0 dng-row row" id="row-206513">
          <div class="dng-column col-sm-3">
            <div class="dng-column-inner " id="column-164542">
              <div class="panebox RowOneGrid3Pane" id="RowOneGrid3Pane" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-9">
            <div class="dng-column-inner " id="column-765070">
              <div class="panebox RowOneGrid9Pane" id="RowOneGrid9Pane" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" dng-row row" id="row-88702">
          <div class="dng-column col-sm-4">
            <div class="dng-column-inner " id="column-273234">
              <div class="panebox RowTwoGrid4Pane" id="RowTwoGrid4Pane" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-8">
            <div class="dng-column-inner " id="column-455624">
              <div class="panebox RowTwoGrid8Pane" id="RowTwoGrid8Pane" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" dng-row row" id="row-976772">
          <div class="dng-column col-sm-5">
            <div class="dng-column-inner " id="column-460442">
              <div class="panebox RowThreeGrid5Pane" id="RowThreeGrid5Pane" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-7">
            <div class="dng-column-inner " id="column-414300">
              <div class="panebox RowThreeGrid7Pane" id="RowThreeGrid7Pane" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" dng-row row" id="row-643946">
          <div class="dng-column col-sm-6">
            <div class="dng-column-inner " id="column-853587">
              <div class="panebox RowFourGrid6Pane1" id="RowFourGrid6Pane1" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-6">
            <div class="dng-column-inner " id="column-243874">
              <div class="panebox RowFourGrid6Pane2" id="RowFourGrid6Pane2" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" dng-row row" id="row-872946">
          <div class="dng-column col-sm-7">
            <div class="dng-column-inner " id="column-872333">
              <div class="panebox RowFiveGrid7Pane" id="RowFiveGrid7Pane" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-5">
            <div class="dng-column-inner " id="column-302750">
              <div class="panebox RowFiveGrid5Pane" id="RowFiveGrid5Pane" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" dng-row row" id="row-337184">
          <div class="dng-column col-sm-8">
            <div class="dng-column-inner " id="column-719951">
              <div class="panebox RowSixGrid8Pane" id="RowSixGrid8Pane" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-4">
            <div class="dng-column-inner " id="column-466361">
              <div class="panebox RowSixGrid4Pane" id="RowSixGrid4Pane" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" dng-row row" id="row-661178">
          <div class="dng-column col-sm-9">
            <div class="dng-column-inner " id="column-624120">
              <div class="panebox RowSevenGrid9Pane" id="RowSevenGrid9Pane" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-3">
            <div class="dng-column-inner " id="column-299886">
              <div class="panebox RowSevenGrid3Pane" id="RowSevenGrid3Pane" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid col-no-padding " id="row-385132">
        <div class="column-gap-0 dng-row row">
          <div class="dng-column col-sm-12">
            <div class="dng-column-inner " id="column-93754">
              <div class="panebox FullScreenPaneC" id="FullScreenPaneC" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid col-no-padding " id="row-329842">
        <div class="column-gap-0 dng-row row">
          <div class="dng-column col-sm-12">
            <div class="dng-column-inner " id="column-246938">
              <div class="panebox ContentBuilderPane" id="ContentBuilderPane" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" dng-row row" id="row-758069">
          <div class="dng-column col-sm-4">
            <div class="dng-column-inner " id="column-527965">
              <div class="panebox RowEightGrid4Pane1" id="RowEightGrid4Pane1" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-4">
            <div class="dng-column-inner " id="column-567114">
              <div class="panebox RowEightGrid4Pane2" id="RowEightGrid4Pane2" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-4">
            <div class="dng-column-inner " id="column-400681">
              <div class="panebox RowEightGrid4Pane3" id="RowEightGrid4Pane3" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" dng-row row" id="row-229067">
          <div class="dng-column col-sm-3">
            <div class="dng-column-inner " id="column-255279">
              <div class="panebox RowNineGrid3Pane1" id="RowNineGrid3Pane1" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-6">
            <div class="dng-column-inner " id="column-547221">
              <div class="panebox RowNineGrid6Pane" id="RowNineGrid6Pane" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-3">
            <div class="dng-column-inner " id="column-137013">
              <div class="panebox RowNineGrid3Pane2" id="RowNineGrid3Pane2" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class=" dng-row row" id="row-592061">
          <div class="dng-column col-sm-3">
            <div class="dng-column-inner " id="column-169976">
              <div class="panebox RownTenGrid3Pane1" id="RownTenGrid3Pane1" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-3">
            <div class="dng-column-inner " id="column-779307">
              <div class="panebox RownTenGrid3Pane2" id="RownTenGrid3Pane2" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-3">
            <div class="dng-column-inner " id="column-956696">
              <div class="panebox RownTenGrid3Pane3" id="RownTenGrid3Pane3" runat="server"></div>
            </div>
          </div>
          <div class="dng-column col-sm-3">
            <div class="dng-column-inner " id="column-648739">
              <div class="panebox RownTenGrid3Pane4" id="RownTenGrid3Pane4" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid col-no-padding " id="row-491035">
        <div class="column-gap-0 dng-row row">
          <div class="dng-column col-sm-12">
            <div class="dng-column-inner " id="column-479173">
              <div class="panebox FullScreenPaneD" id="FullScreenPaneD" runat="server"></div>
            </div>
          </div>
        </div>
      </div>


    </section>

    <footer class="footer">
      <div class="container-fluid row-no-spacing " id="row-514475">
        <div class="container">
          <div class="column-gap-0 dng-row row">
            <div class="dng-column col-sm-3">
              <div class="dng-column-inner " id="column-102978">
                <div class="panebox FooterPaneA mt-50 mb-50" id="FooterPaneA" runat="server"></div>
              </div>
            </div>
            <div class="dng-column col-sm-3">
              <div class="dng-column-inner " id="column-933543">
                <div class="panebox FooterPaneB mt-50 mb-50" id="FooterPaneB" runat="server"></div>
              </div>
            </div>
            <div class="dng-column col-sm-3">
              <div class="dng-column-inner " id="column-39798">
                <div class="panebox FooterPaneC mt-50 mb-50" id="FooterPaneC" runat="server"></div>
              </div>
            </div>
            <div class="dng-column col-sm-3">
              <div class="dng-column-inner " id="column-456323">
                <div class="panebox FooterPaneD mt-50 mb-50" id="FooterPaneD" runat="server"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid row-no-spacing " id="row-781151">
        <div class="container">
          <div class="column-gap-0 dng-row row">
            <div class="dng-column col-sm-8">
              <div class="dng-column-inner " id="column-64895">
                <div class="footer-info-box" id="footerinfo628747">
                  <dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT628747" CssClass="footer" /><span class="sep">|</span>
                  <dnn:PRIVACY runat="server" id="dnnPRIVACY628747" CssClass="terms" text="" /><span class="sep">|</span>
                  <dnn:TERMS runat="server" id="dnnTERMS628747" CssClass="terms" text="" />
                </div>
              </div>
            </div>
            <div class="dng-column col-sm-4">
              <div class="dng-column-inner text-right" id="column-703667">
                <div class="panebox FooterPaneE" id="FooterPaneE" runat="server"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>


    <dnn:DnnCssInclude ID="backtop" runat="server" FilePath="resource/css/backtop.css" PathNameAlias="SkinPath" Priority="9" />

  </div>
</div>
<div data-path="<%=SkinPath %>" id="SkinPath"></div>
<script type="text/javascript" src="<%= SkinPath %>resource/js/global.js"></script>
