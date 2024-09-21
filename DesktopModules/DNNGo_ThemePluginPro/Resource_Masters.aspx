<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resource_Masters.aspx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Resource_Masters" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Common.Controls" Assembly="DotNetNuke" %>
<!DOCTYPE HTML>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<title>Resource Event Masters</title>
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <!-- start: MAIN CSS -->
    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap/css/bootstrap.min.css?cdv=<%=CrmVersion %>"  media="screen" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/font-awesome/css/font-awesome.min.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/css/font-icon.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/fonts/style.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/css/main.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/css/main-responsive.css?cdv=<%=CrmVersion %>" />
 
 	<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/iCheck/skins/all.css?cdv=<%=CrmVersion %>" />

    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/perfect-scrollbar/src/perfect-scrollbar.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-modal/css/bootstrap-modal.css?cdv=<%=CrmVersion %>" />

    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/select2/select2.min.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/datepicker/css/datepicker.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-switch/static/stylesheets/bootstrap-switch.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css?cdv=<%=CrmVersion %>" />
    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/colorbox/example2/colorbox.css">
    
 

    <link rel="stylesheet" href="<%=ModulePath %>Resource/css/dropzone.css?cdv=<%=CrmVersion %>" />

    <link rel="stylesheet" href="<%=ModulePath %>Resource/css/theme_light.css?cdv=<%=CrmVersion %>" type="text/css" id="skin_color" />
    <!--[if IE 7]>
	    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/font-awesome/css/font-awesome-ie7.min.css?cdv=<%=CrmVersion %>" />
	<![endif]-->
    <!-- end: MAIN CSS -->
    <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-social-buttons/social-buttons-3.css?cdv=<%=CrmVersion %>" />

       <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
    <script src="<%=ModulePath %>Resource/js/jquery.min.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/js/jquery-migrate.min.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/js/jquery-ui.min.js?cdv=<%=CrmVersion %>"></script>

  <script src="<%=ModulePath %>Resource/js/jquery.tmpl.min.js?cdv=<%=CrmVersion %>"></script>

    
    <!-- start: MAIN JAVASCRIPTS -->
    <!--[if lt IE 9]>
		    <script src="<%=ModulePath %>Resource/plugins/respond.min.js?cdv=<%=CrmVersion %>"></script>
		    <script src="<%=ModulePath %>Resource/plugins/excanvas.min.js?cdv=<%=CrmVersion %>"></script>
    <![endif]-->

    <script src="<%=ModulePath %>Resource/plugins/bootstrap/js/bootstrap.min.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/blockUI/jquery.blockUI.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/iCheck/jquery.icheck.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/perfect-scrollbar/src/jquery.mousewheel.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/perfect-scrollbar/src/perfect-scrollbar.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/less/less-1.5.0.min.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/js/jquery.cookie.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/bootstrap-modal/js/bootstrap-modal.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/bootstrap-modal/js/bootstrap-modalmanager.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/ladda-bootstrap/dist/spin.min.js?cdv=<%=CrmVersion %>"></script>
	<script src="<%=ModulePath %>Resource/plugins/ladda-bootstrap/dist/ladda.min.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/bootstrap-paginator/src/bootstrap-paginator.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/select2/select2.full.min.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/bootstrap-switch/static/js/bootstrap-switch.min.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/plugins/colorbox/jquery.colorbox-min.js?cdv=<%=CrmVersion %>"></script>
 


 
    <script src="<%=ModulePath %>Resource/js/dropzone.js?cdv=<%=CrmVersion %>"></script>

    <script src="<%=ViewValidationEngineLanguage() %>"></script>
    <script src="<%=ModulePath %>Resource/js/jquery.validationEngine.js?cdv=<%=CrmVersion %>"></script>
    

    <!-- end: MAIN JAVASCRIPTS -->
    <script src="<%=ModulePath %>Resource/js/jquery.urls.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/js/form-elements.js?cdv=<%=CrmVersion %>"></script>
    <script src="<%=ModulePath %>Resource/js/main.js?cdv=<%=CrmVersion %>"></script>
      <script src="<%=ModulePath %>Resource/plugins/ckeditor/ckeditor.js?cdv=<%=CrmVersion %>"></script>

 
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


<script type="text/javascript">
    jQuery(function (q) {
        FormElements.init();
        Main.init();



        $("#PlaceHolder_container").validationEngine({
            promptPosition: "topRight"
        });

        $("#PlaceHolder_container input[lang='Submit']").click(function () {
            if (!$('#PlaceHolder_container').validationEngine('validate')) {
                return false;
            } else {
                $(window.parent.document).find("#setting-message-info-full").fadeIn();
            }
        });


    });

    function CancelValidation() {
        $('#Form').validationEngine('detach');
    }
</script>
</body> 
</html>