<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Skin_Plugin.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Skin_Plugin" %><asp:Panel ID="ThemePluginPro_Panel" runat="server" CssClass="SkinPluginPro_icon"><asp:HyperLink runat="server" ID="hlThemeOption" CssClass="btn-plugin btn-plugin-theme" Text="<span>Theme Options</span><i class='fa fa-cogs'></i>" Target="_blank"></asp:HyperLink>
<asp:HyperLink runat="server" ID="hlPageOption" CssClass="btn-plugin btn-plugin-page" Text="<span>Page Options</span><i class='fa fa-cog'></i>" Target="_blank"></asp:HyperLink>
<asp:HyperLink runat="server" ID="hlLayout" CssClass="btn-plugin btn-plugin-headerlayout" Title="Edit Header" Text="<i class='clip-puzzle-4'></i>" Target="_blank"></asp:HyperLink>
<asp:HyperLink runat="server" ID="hlPageImport" CssClass="btn-plugin btn-plugin-import" Text="<span>Import Page Template</span><i class='fa fa-cloud-download'></i>"  NavigateUrl="#PageTemplate_Modal"></asp:HyperLink></asp:Panel>
<asp:Panel ID="ThemePluginPro_Panel_PageTemplate" runat="server">
    <div id="PageTemplate_Modal" class="modal" role="dialog" aria-labelledby="PageTemplate_Title" tabindex="-1" data-width="98%" data-height="800px" style="display: none;">
 
   
        <div class="modal-header">
           <span class="modal-dialog" style="pointer-events:initial;position: absolute;right: 21px; margin:0; top:21px;transform: none;"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></span>
            <h4 class="modal-title" id="PageTemplate_Title">Import Page Template</h4>
        </div>
        <div class="modal-body">
            <iframe id="PageTemplate_Iframe" width="100%" height="100%" style="border-width: 0px;"></iframe>
        </div>
 

    </div>
    <!-- Loading-->
    <div id="setting-message-info-full">
        <div class="waitaminute-message">
            <div class="cog">
                <i class="fa icon1 fa-cog"></i>
                <i class="fa icon2 fa-cog"></i>
                <i class="fa icon3 fa-cog"></i>
            </div>
            <br>
            Please Wait a Moment
        </div>
    </div>
    <script type="text/javascript">

        jQuery(document).ready(function ($) {
            $(".SkinPluginPro_icon a.btn-plugin-import").off().on("click",function (event) {
                event.preventDefault();
                if(!$("#PageTemplate_Iframe").attr("src")){
                    $("#PageTemplate_Iframe").attr("src", $(this).attr("data-href"));
                }
                $("#PageTemplate_Modal").fadeIn();
            })
            $("#PageTemplate_Modal .close").off().on("click",function(){
                $("#PageTemplate_Modal").fadeOut();
            })
        })
    </script>
    <style>
#PageTemplate_Modal{
	background-color: #FFF;
	z-index: 10000000;
	position: fixed;
	top: 35px;
	right: 45px;
	bottom: 35px;
	left: 45px;
	width: auto;
	height: auto;
	box-shadow: 0 0 10px rgba(0,0,0,.1);
}
#PageTemplate_Modal::after{
	content: "";
	position: fixed;
	left: 0;
	bottom: 0;
	right: 0;
	top: 0;
	background-color: rgba(0,0,0,0.8);
	z-index: -1;
}
#PageTemplate_Modal .modal-body{
	background-color: #FFF;

}
#PageTemplate_Modal .modal-header {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-align: start;
	align-items: flex-start;
	-ms-flex-pack: justify;
	justify-content: space-between;
	padding: 1rem 1rem;
	border-bottom: 1px solid #dee2e6;
	border-top-left-radius: .3rem;
	border-top-right-radius: .3rem;
	background-color: #FFF;
}
    #PageTemplate_Modal .modal-header .close {
        background:none;
        border:none;
        line-height: 1;
        opacity: 1;
        position: static;
    }

    </style>

</asp:Panel>




