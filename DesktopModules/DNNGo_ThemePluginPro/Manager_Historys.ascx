<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Historys.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_Historys" %>

<!-- start: MAIN CSS -->
<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap/css/bootstrap.min.css?cdv=<%=CrmVersion %>" media="screen" />
<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/font-awesome/css/font-awesome.min.css?cdv=<%=CrmVersion %>" />
<link rel="stylesheet" href="<%=ModulePath %>Resource/css/font-icon.css?cdv=<%=CrmVersion %>" />
<link rel="stylesheet" href="<%=ModulePath %>Resource/fonts/style.css?cdv=<%=CrmVersion %>" />
<link rel="stylesheet" href="<%=ModulePath %>Resource/css/main.css?cdv=<%=CrmVersion %>" />
<link rel="stylesheet" href="<%=ModulePath %>Resource/css/main-responsive.css?cdv=<%=CrmVersion %>" />

<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/iCheck/skins/all.css?cdv=<%=CrmVersion %>">

<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/perfect-scrollbar/src/perfect-scrollbar.css?cdv=<%=CrmVersion %>" />
<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css?cdv=<%=CrmVersion %>" />
<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-modal/css/bootstrap-modal.css?cdv=<%=CrmVersion %>" />

<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/select2/select2.min.css?cdv=<%=CrmVersion %>">
<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/datepicker/css/datepicker.css?cdv=<%=CrmVersion %>">
<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css?cdv=<%=CrmVersion %>">
<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-switch/static/stylesheets/bootstrap-switch.css?cdv=<%=CrmVersion %>">
<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css?cdv=<%=CrmVersion %>">
<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css?cdv=<%=CrmVersion %>">

<link rel="stylesheet" href="<%=ModulePath %>Resource/css/theme_light.css?cdv=<%=CrmVersion %>" type="text/css" id="skin_color" />

<link rel="stylesheet" href="<%=ModulePath %>Resource/css/layoutit.css?cdv=<%=CrmVersion %>" type="text/css" id="skin_color" />

<!--[if IE 7]>
	    <link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/font-awesome/css/font-awesome-ie7.min.css?cdv=<%=CrmVersion %>" />
	<![endif]-->
<!-- end: MAIN CSS -->
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="stylesheet" href="<%=ModulePath %>Resource/plugins/bootstrap-social-buttons/social-buttons-3.css?cdv=<%=CrmVersion %>" />
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->

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
<script src="<%=ModulePath %>Resource/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js?cdv=<%=CrmVersion %>"></script>
<link rel="stylesheet" href="<%=ModulePath %>Resource/css/dropzone.css?cdv=<%=CrmVersion %>" />
<script type="text/javascript" src="<%=ModulePath %>Resource/js/dropzone.js?cdv=<%=CrmVersion %>"></script>
<!-- end: MAIN JAVASCRIPTS -->
<script src="<%=ModulePath %>Resource/plugins/tinymce/tinymce.min.js?cdv=<%=CrmVersion %>"></script>
<script src="<%=ModulePath %>Resource/js/jquery.urls.js?cdv=<%=CrmVersion %>"></script>
<script src="<%=ModulePath %>Resource/js/form-elements.js?cdv=<%=CrmVersion %>"></script>
<script src="<%=ModulePath %>Resource/js/main.js?cdv=<%=CrmVersion %>"></script>

<script src="<%=ModulePath %>Resource/js/jquery.dragsort-0.5.2.min.js"></script>

<script src="<%=ModulePath %>Resource/js/shortcode.js?cdv=<%=CrmVersion %>"></script>
<script src="<%=ModulePath %>Resource/js/jstorage.min.js"></script>




<div id="PlaceHolder_container" class="container validationEngineContainer">
    <div class="main">
        <div class="form-group">
            <asp:GridView ID="dgHistorys" runat="server" OnRowDataBound="dgHistorys_RowDataBound"
                AutoGenerateColumns="false" Width="100%" CellPadding="0" CellSpacing="0" border="0" CssClass="table table-striped table-bordered table-hover" GridLines="none">
                <Columns>
                    <asp:BoundField DataField="Version" HeaderText="Version" />
                    <asp:BoundField DataField="CreateTime" HeaderText="CreateTime" />
                    <asp:BoundField DataField="CreateUser" HeaderText="CreateUser" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                    <asp:TemplateField HeaderText="Action" ItemStyle-CssClass="center" HeaderStyle-CssClass="center">
                        <ItemTemplate>
                            <asp:HyperLink ID="hlPreview" runat="server" CssClass="btn btn-xs btn-teal tooltips" data-original-title="Preview" data-placement="top" Text="<i class='fa fa-external-link'></i>"></asp:HyperLink>
                            <asp:LinkButton ID="btnRestore" runat="server" CssClass="btn btn-xs btn-purple tooltips" data-original-title="Restore" data-placement="top" Text="<i class='fa fa-refresh'></i>" OnClick="btnRestore_Click" ></asp:LinkButton>
                            <asp:LinkButton ID="btnRemove" runat="server" CssClass="btn btn-xs btn-bricky tooltips" data-original-title="Remove" data-placement="top" Text="<i class='fa fa-times'></i>" OnClick="btnRemove_Click" ></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </div>
</div>
<script type="text/javascript">
    jQuery(function (q) {
        FormElements.init();
        Main.init();
    });
</script>