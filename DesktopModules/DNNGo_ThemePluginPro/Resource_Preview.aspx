<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resource_Preview.aspx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Resource_Preview" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Common.Controls" Assembly="DotNetNuke" %>
<!DOCTYPE HTML>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<title>Theme Preview</title>
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <!-- start: MAIN CSS -->
    <script type="text/javascript">var Module = {ModulePath:"<%=ModulePath %>",ModuleId: <%=ModuleId %>, TabId: <%=TabId %>, PortalId: <%=PortalId %>};</script>
</head>
<body>



<dnn:Form id="Form" runat="server" ENCTYPE="multipart/form-data">    
    <div id="PlaceHolder_container" class="container validationEngineContainer">
          <div class="main">
               <asp:PlaceHolder ID="phPlaceHolder" runat="server"></asp:PlaceHolder>
          </div>
    </div>
    <!-- Loading--> 
</dnn:Form>



</body> 
</html>