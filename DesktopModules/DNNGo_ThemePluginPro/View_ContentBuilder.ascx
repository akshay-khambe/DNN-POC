<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View_ContentBuilder.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.View_ContentBuilder" %>
<!--<%=ContentBuilderClass %>-->
<div id="content-builder-<% =ModuleId %>" data-mid="<% =ModuleId %>"<% if (IsEnable) { %> data-analyzingurl="<%=ViewServiceAddModuleAnalyzingUrl()%>" data-mediaurl="<%=ViewSelectImageModal()%>" tabindex="<% =ModuleId %>" data-previewid="<%=PreviewId %>" data-isdemo="<%=IsDemo %>" data-original="<%=OriginalUrl %>" <% } %> class="content-builder d-wrapper <% if (!IsEnable) { %>is-wrapper<% } %>">
    <asp:Literal ID="liContentBuilder" runat="server"></asp:Literal>
 
</div>

<div class="modules-loader-wrapper is-hidden" id="modulesloaderwrapper<%=ModuleId%>" data-mid="<% =ModuleId %>">
    <asp:PlaceHolder ID="ModuleLoaderWrapper" runat="server"></asp:PlaceHolder>
</div>
<% if (IsEnable) { %>
<script>
    $("#content-builder-<% =ModuleId %>")[0]["Builder"] = <% =ContentJSON %>;
    $("#content-builder-<% =ModuleId %> .custom-module").each(function () {
        $(this).attr("data-html", encodeURIComponent(this.innerHTML));
    });
</script>
<% } %>

