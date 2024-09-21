<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Skin_ContentBuilder.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Skin_ContentBuilder" %>
 <script type="text/javascript">
var GetWebpConvertServiceUrl = '<%=GetWebpConvertServiceUrl %>';
</script>
<% if (IsEdit && !IsPreview) { %>
 <link href="<%=SkinPath %>Resource/vendor/content-builder/box/edit.css?cdv=<%=CrmVersion %>" type="text/css" rel="stylesheet"/>
<script type="text/javascript">
var image_path ='/Portals/_default/ContentBuilder/';
var ModulePath = '<%=ModulePath %>';
var SkinPath = '<%=SkinPath %>';
var ActiveTabId = '<%=PortalSettings.ActiveTab.TabID %>';
var SaveImageServiceUrl ='<%=SaveImageServiceUrl %>';
var SaveImageServiceUrlByLarger ='<%=SaveImageServiceUrlByLarger %>';
var SaveImageServiceUrlBySlider ='<%=SaveImageServiceUrlBySlider %>';
var SaveContentServiceUrl = '<%=SaveContentServiceUrl %>';
var SaveSectionServiceUrl = '<%=SaveSectionServiceUrl %>';
var DeleteSectionServiceUrl = '<%=DeleteSectionServiceUrl %>';
var GetSectionListServiceUrl = '<%=GetSectionListServiceUrl %>';
var GetSectionDetailServiceUrl ='<%=GetSectionDetailServiceUrl %>';
var SectionExportServiceUrl = '<%=SectionExportServiceUrl %>';
var SectionImportServiceUrl = '<%=SectionImportServiceUrl %>';
var GetTabListServiceUrl = '<%=GetTabListServiceUrl %>';
var GetTabModulesServiceUrl = '<%=GetTabModulesServiceUrl %>';
var GetFormBuildersServiceUrl = '<%=GetFormBuildersServiceUrl %>';
var GetTabsServiceUrl = '<%=GetTabsServiceUrl %>';
var GetModulesServiceUrl = '<%=GetModulesServiceUrl %>';
var GetPixabayProxyServiceUrl = '<%=GetPixabayProxyServiceUrl %>';
var GetPixabaySaveServiceUrl = '<%=GetPixabaySaveServiceUrl %>';
var CatImageServiceUrl = '<%=CatImageServiceUrl %>';
var PreviewServiceUrl = '<%=PreviewServiceUrl %>';
var VerifyJS = new Array("<%=ModulePath %>Resource/js/jquery.validationEngine-en.js", "<%=ViewValidationEngineLanguage() %>");
var EnableHBControls = '<%=EnableHBControls %>';
var GetPortalDesktopModules = '<%=GetPortalDesktopModules%>';
var GetCropImageModalUrl = '<%=GetCropImageModalUrl%>';
var ServiceSaveThemeSettingsUrl = '<%=ServiceSaveThemeSettingsUrl%>';

var DNNapplyTypography ={
	classname:'',
	sectioncss:'',
	css:''	
}
</script>
<script src="<%=SkinPath %>Resource/vendor/content-builder/contentbuilder/contentbuilder.min.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>
<script src="<%=SkinPath %>Resource/vendor/content-builder/contentbuilder/saveimages.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>

<script src="<%=SkinPath %>Resource/vendor/content-builder/contentbox/contentbox.min.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>
<script src="<%=SkinPath %>Resource/vendor/content-builder/assets/minimalist-blocks/content.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>
<script src="<%=SkinPath %>Resource/vendor/content-builder/template/csstemplate.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>
<script src="<%=SkinPath %>Resource/vendor/content-builder/template/snippet.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>
<script src="<%=ModulePath %>Resource/js/html2canvas.min.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>


<div class="ContentBuilderControl">
<button type="button" id="ContentBuilderSaveHTML" class="hide" disabled></button>
</div>
<script src="<%=SkinPath %>Resource/vendor/content-builder/script.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>
<script src="<%=SkinPath %>Resource/vendor/content-builder/moduleEditModeJs.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>
<script src="<%=SkinPath %>Resource/vendor/content-builder/assets/modules/js/jquery.tmpl.min.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>
<script src="<%=SkinPath %>Resource/vendor/content-builder/assets/scripts/format/jquery.format.js?cdv=<%=CrmVersion %>" type="text/javascript"></script>

<div id="DnnMediaBox" class="ContentBuilder-Select-Image">
<div class="media-header">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	<h4 class="modal-title">
	<i class="fa fa-folder-open"></i> Add Media</h4>
</div>
<div class="media-body">
	<iframe id="ifrDnnMediaBox" style="width:100%;height:100%;box-sizing:border-box;border:none;position: absolute;	top: 0;	left: 0;"></iframe>
</div>
  <div class="media-footer">
	<button type="button"  class="btn btn-default" id="MediaClose">Close</button>
	<button type="button" class="btn btn-primary btn-insert" id="MediaAddImages">Set Image	</button>
</div>

</div>



<input id="modulesImageVal" type="text" style="display:none" >
<input id="currImageUrl" type="text" style="display:none" >
<input id="modulesIcon" type="text" style="display:none" >

<% } %>
<% if (IsEnable) { %>

<% } %>


