<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<textarea rows="5" name="html_js_css" class="dnnOptions CKEditor">${html_js_css}</textarea>



<!--build HTML-->
<div class="buildHTML">
    {{html html_js_css}}
</div>
