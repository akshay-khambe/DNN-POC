<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Resource_DropzoneUpload.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Resource_DropzoneUpload" %>
<script type="text/javascript" src="<%=ModulePath %>Resource/js/dropzone.js"></script>
<link rel="stylesheet" href="<%=ModulePath %>Resource/css/dropzone.css" />
<form action="<%=ModulePath %>Resource_jQueryFileUpload.ashx?<%=QueryString %>" method="post" id="filedropzone"  class="dropzone" enctype="multipart/form-data"></form>


<script type="text/javascript">

    $(document).ready(function () {
        Dropzone.options.filedropzone = {
            maxFilesize: <%=DotNetNuke.Common.Utilities.Config.GetMaxUploadSize() /1024 / 1024 %>,
            acceptedFiles:"<%=DotNetNuke.Entities.Host.Host.AllowedExtensionWhitelist.ToDisplayString().Replace("*.",".") %>"
        };
    });


</script>