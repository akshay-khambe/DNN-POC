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
#set($gooleFontLink = $xf.ViewGoogleFontLink()) 
#if($gooleFontLink != "https://fonts.googleapis.com/css?family=&display=swap&subset=" && $gooleFontLink != "")
<dnn:DnnCssInclude ID="ViewGoogleFontLink" runat="server" FilePath="${gooleFontLink}" Priority="9"  /> 
#end

<script>var userAgent = navigator.userAgent;if((userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1) || (userAgent.indexOf('Trident') > -1 && userAgent.indexOf("rv:11.0") > -1)){document.getElementsByTagName('html')[0].className += 'ie-browser'; };</script>



