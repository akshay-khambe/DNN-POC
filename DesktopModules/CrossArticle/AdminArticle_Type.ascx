﻿<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.AdminArticle_Type, App_Web_adminarticle_type.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls" %>
<%@ Register TagPrefix="dnn" TagName="Url" Src="~/controls/URLControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx" %>
<style type="text/css">
.CrossGrid th{
  text-align:center;
}
</style>
<script type="text/javascript">
    function checkAll_Type() {
        if ($(":checkbox[id*='chkAllType']").prop("checked") == true) {
            $(":checkbox[id*='chkItemType']").prop("checked", true);
        }
        else {
            $(":checkbox[id*='chkItemType']").prop("checked", false);
        }
    }

    $(function () {
        $("#tabs").tabs();

        $("#tabs").tabs(
         {
             activate: function (event, ui) {
                 //Get or set the active option, after initialization:
                 var currentActive = $("#tabs").tabs("option", "active");
                 //set it to a hidden field
                 $("#<%= hidLastTab.ClientID %>").attr("value", currentActive.toString());
             }
         });

        var currTab = $("#<%= hidLastTab.ClientID %>").val();
        if (!isNaN(parseInt(currTab)))//if current value is number, then parse it as integer
        {
            currTab = parseInt(currTab);
        }

        $("#tabs").tabs({ active: currTab });
    });
</script>
<asp:HiddenField runat="server" ID="hidLastTab" Value="0" />
<table width="98%" class="dnnFormItem" align="center" runat="server" id="tblButton">
    <tr valign="top">
        <td align="center">
            <dnn:CommandButton ID="btnAdd" runat="server" ImageUrl="~/images/add.gif" OnCommand="btnAdd_Click"
                CausesValidation="false" />
            &nbsp;&nbsp;
            <dnn:CommandButton ID="btnDeleteSelected" runat="server" ResourceKey="btnDeleteSelected"
                CausesValidation="false" ImageUrl="~/images/delete.gif" OnCommand="btnDeleteSelected_Click"
                OnClick='<%# String.Format("return confirm(\"{0}\");", Localization.GetString("DeleteItems",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)) %>' />
            &nbsp;&nbsp;
            <dnn:CommandButton ID="btnUpdate" runat="server" ResourceKey="cmdUpdate" ImageUrl="~/images/save.gif"
                OnCommand="btnUpdate_Click" Visible="false" />
            &nbsp;&nbsp;
            <dnn:CommandButton ID="btnDelete" runat="server" ResourceKey="cmdDelete" ImageUrl="~/images/delete.gif"
                OnCommand="btnDelete_Click" Visible="false" CausesValidation="false" OnClick='<%# String.Format("return confirm(\"{0}\");", Localization.GetString("DeleteConfirm_Related",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)) %>' />
            &nbsp;&nbsp;
            <dnn:CommandButton ID="btnCancel" runat="server" ResourceKey="cmdCancel" ImageUrl="~/images/cancel.gif"
                OnCommand="btnCancel_Click" Visible="false" CausesValidation="false" />
            &nbsp;&nbsp;
            <asp:HyperLink runat="server" ID="hlAdminHome" ResourceKey="btnAdminHome" NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>" />
        </td>
    </tr>
</table>
<table width="100%" class="dnnFormItem" align="center" runat="server" id="tblTypeList">
    <tr valign="top">
        <td align="left" valign="top">
            <asp:GridView ID="gvTypeList" runat="server" AutoGenerateColumns="False" 
                Width="100%" CellPadding="1"  CellSpacing="1"  GridLines="Both" BackColor="Gray" ForeColor="#333333" DataKeyNames="Id" OnRowCommand="gvTypeList_RowCommand">
                <EmptyDataTemplate>
                    <asp:Label ID="lblNoRecores" Text='<%# Localization.GetString("NoRecords",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared) %>'
                        runat="server"></asp:Label>
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <input type="checkbox" id="chkAllType" runat="server" onclick="checkAll_Type()" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkItemType" runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lblName" runat="server" resourcekey="lblName">Name</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblNameData" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lblAllowGoogleMap" runat="server" resourcekey="lblAllowGoogleMap">AllowGoogleMap</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="lblAllowGoogleMapData" runat="server" Checked='<%# Eval("AllowGoogleMap") %>'
                                Enabled="false" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                     <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lblAllowLocation" runat="server" resourcekey="lblAllowLocation">AllowLocation</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="lblAllowLocationData" runat="server" Checked='<%# Eval("AllowLocation") %>'
                                Enabled="false" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lblAllowVote" runat="server" resourcekey="lblAllowVote">AllowVote</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="lblAllowVoteData" runat="server" Checked='<%# Eval("AllowVote") %>'
                                Enabled="false" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lblOrder" runat="server" resourcekey="lblOrder">Order</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblOrderData" runat="server" Text='<%# Eval("DisplayOrder") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="right" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblAction" runat="server" resourcekey="lblAction" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="imgEdit" runat="server" CausesValidation="False" CommandName="Select"
                                CommandArgument='<%# Eval("Id")%>' ToolTip='<%#Localization.GetString("imgEdit",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>'
                                ImageUrl="~/images/edit.gif" AlternateText='<%#Localization.GetString("imgEdit",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>' />
                            <asp:ImageButton ID="imgDel" runat="server" CausesValidation="False" CommandName="Del"
                                CommandArgument='<%# Eval("Id")%>' ImageUrl="~/images/delete.gif" AlternateText='<%#Localization.GetString("imgDel",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>'
                                ToolTip='<%#Localization.GetString("imgDel",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>'
                                OnClientClick='<%# String.Format("return confirm(\"{0}\");", Localization.GetString("DeleteConfirm_Related",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)) %>' />
                        
                             <asp:HyperLink ID="hlContentLocalization" Target="_blank" ImageUrl="~/DesktopModules/CrossArticle/images/ml_content_16.gif"
                                Visible="<%#SupportsContentLocalization%>" runat="server" NavigateUrl='<%# EditUrl("ContentLocalize_Type") + "?TypeId=" + Eval("Id").ToString() %>' />
                        
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" Wrap="true" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"  CssClass="CrossGrid"/>
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" Wrap="true" />
                <RowStyle BackColor="#EFF3FB" ForeColor="#333333" Wrap="true" />
                <EditRowStyle BackColor="#999999" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <div class="dnnTreeLegend" id="divLegend" runat="server">
                <h4>
                    <asp:Label ID="lblLegend" runat="server" resourcekey="lblLegend" /></h4>
                <div class="dtlItem">
                    <img alt="" id="Img1" runat="server" src="~/images/edit.gif" />&nbsp;=&nbsp;
                    <asp:Literal ID="lblEdit" runat="server" Text='<%#Localization.GetString("imgEdit", Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>' />&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="" id="Img7" runat="server" src="~/images/delete.gif" />&nbsp;=&nbsp;
                    <asp:Literal ID="lblDelete" runat="server" Text='<%#Localization.GetString("imgDel", Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>' />
                        <%if (SupportsContentLocalization)
                      {%>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="" id="Img12" runat="server" src="~/DesktopModules/CrossArticle/images/ml_content_16.gif" />&nbsp;=&nbsp;
                    <asp:Literal ID="Literal8" runat="server" Text='<%#Localization.GetString("imgContentLocalization", Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>' />
                    <% } %>
                </div>
            </div>
        </td>
    </tr>
</table>
<div id="divTypeDetail" runat="server">
    <div class="dnnFormItem dnnFormHelp dnnClear">
        <p align="right">
            <span>
                <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg" />
                <%=LocalizeString("RequiredFields")%>
            </span>
        </p>
    </div>
    <div id="tabs" style="width: 100%; overflow:hidden">
        <ul>
            <li><a href="#divBasic"><span>
                <%#Localization.GetString("divBasic", LocalResourceFile)%></span></a> </li>

             <li><a href="#divGoogleMap"><span>
                <%#Localization.GetString("divGoogleMap", LocalResourceFile)%></span></a> </li>

            <li><a href="#divField1"><span>
                <%#Localization.GetString("divSpecification_1", LocalResourceFile)%></span></a>
            </li>
            <li><a href="#divField2"><span>
                <%#Localization.GetString("divSpecification_2", LocalResourceFile)%></span></a>
            </li>
            <li><a href="#divField3"><span>
                <%#Localization.GetString("divSpecification_3", LocalResourceFile)%></span></a>
            </li>
            <li><a href="#divField4"><span>
                <%#Localization.GetString("divSpecification_4", LocalResourceFile)%></span></a>
            </li>
            <li><a href="#divField5"><span>
                <%#Localization.GetString("divSpecification_5", LocalResourceFile)%></span></a>
            </li>
              <li><a href="#divFileUpload_Client"><span>
                <%#Localization.GetString("divFileUpload_Client", LocalResourceFile)%></span></a>
            </li>
             <li><a href="#divFileUpload_Author"><span>
                <%#Localization.GetString("divFileUpload_Author", LocalResourceFile)%></span></a>
            </li>
        </ul>
        <div id="divBasic" style="height: 100%">
            <table cellspacing="0" cellpadding="2" width="100%" border="0" align="left" class="dnnFormItem">
                <tr>
                    <td colspan="2">
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <dnn:Label ID="plName" runat="server" ControlName="txtName"></dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="NormalTextBox" Columns="40"></asp:TextBox>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="valNameRequired" runat="server" ControlToValidate="txtName"
                            Display="Dynamic" resourcekey="Required" CssClass="NormalRed"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td  valign="middle">
                        <dnn:Label ID="plImage" runat="server" ControlName="ctlURL"></dnn:Label>
                    </td>
                    <td>
                        <dnn:Url ID="ctlImage" runat="server" FileFilter="jpg,jpeg,jpe,png" Required="False"
                            ShowLog="false" ShowNewWindow="false" ShowNone="false" ShowTabs="false" ShowTrack="false"
                            ShowUrls="false" ShowFiles="true" ShowUpLoad="true" Width="450px"></dnn:Url>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" resourcekey="Tip_AllowVote" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plAllowVote" runat="server" ControlName="chkAllowVote"></dnn:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkAllowVote" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                      <asp:Label ID="Label2" runat="server" resourcekey="Tip_FieldEnable"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                   
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plFieldEnable_Quote" runat="server" ControlName="chkFieldEnable_Quote">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkFieldEnable_Quote" runat="server" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plFieldEnable_Author" runat="server" ControlName="chkFieldEnable_Author">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkFieldEnable_Author" runat="server" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plFieldEnable_Source" runat="server" ControlName="chkFieldEnable_Source">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkFieldEnable_Source" runat="server" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plFieldEnable_EventStart" runat="server" ControlName="chkFieldEnable_EventStart"></dnn:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkFieldEnable_EventStart" runat="server" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plFieldEnable_EventEnd" runat="server" ControlName="chkFieldEnable_EventEnd"></dnn:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkFieldEnable_EventEnd" runat="server" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plFieldEnable_Summary" runat="server" ControlName="chkFieldEnable_Summary">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkFieldEnable_Summary" runat="server" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plFieldEnable_LinkUrl" runat="server" ControlName="chkFieldEnable_LinkUrl">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkFieldEnable_LinkUrl" runat="server" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plFieldEnable_Article" runat="server" ControlName="chkFieldEnable_Article">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkFieldEnable_Article" runat="server" Checked="true" />
                    </td>
                </tr>
                <tr id="trListPageTip" runat="server">
                    <td colspan="2" >
                          <asp:Label ID="Label3" runat="server" resourcekey="Tip_ListPage"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                     
                    </td>
                </tr>
                <tr id="trListPage" runat="server">
                    <td>
                        <dnn:Label ID="plListPage" runat="server" ControlName="ddlListPage"></dnn:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlListPage" DataValueField="TabId" DataTextField="IndentedTabName"
                            runat="server" >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr id="trDetailPageTip" runat="server">
                    <td colspan="2" >
                      <asp:Label ID="Label4" runat="server" resourcekey="Tip_DetailPage"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                   
                    </td>
                </tr>
                <tr id="trDetailPage" runat="server">
                    <td>
                        <dnn:Label ID="plDetailPage" runat="server" ControlName="ddlDetailPage"></dnn:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlDetailPage" DataValueField="TabId" DataTextField="IndentedTabName"
                            runat="server">
                        </asp:DropDownList>
                        <dnn:CommandButton ID="btnDetailWizard" runat="server" ResourceKey="btnDetailWizard"
                            CausesValidation="false" ImageUrl="~/images/icon_wizard_16px.gif" OnCommand="btnDetailWizard_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plOrder" runat="server" ControlName="txtOrder"></dnn:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="txtOrder" runat="server" width="200px" Text="10"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator6" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtOrder"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
         <div id="divGoogleMap" class="dnnFormItem" style="height: 100%">
            <table cellspacing="0" cellpadding="6" width="100%" border="0" >
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label10" runat="server" resourcekey="Tip_AllowLocation" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <dnn:Label ID="plAllowLocation" runat="server" ControlName="chkAllowLocation">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkAllowLocation" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label11" runat="server" resourcekey="Tip_AllowGoogleMap" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plAllowGoogleMap" runat="server" ControlName="chkAllowGoogleMap">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkAllowGoogleMap" runat="server" />
                    </td>
                </tr>
            </table>
        </div>

        <div id="divField1" style="height: 100%">
            <table cellspacing="0" cellpadding="2" width="100%" border="0" class="dnnFormItem">
                <tr>
                    <td colspan="2" >
                       <asp:Label ID="Label5" runat="server" resourcekey="Tip_ExtendField"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <dnn:Label ID="plEnableField1" runat="server" ControlName="chkEnableField1" ResourceKey="plEnableField">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkEnableField1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plField1Title" runat="server" ControlName="txtField1Title" ResourceKey="plFieldTitle">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtField1Title" runat="server" CssClass="NormalTextBox" Columns="40"
                            Text="Specification_1"></asp:TextBox>
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="left">
                        <br />
                        <asp:Label ID="lblField1Default" runat="server"  ResourceKey="lblFieldDefault"/>
                      
                    </td>
                </tr>
                <tr valign="top">
                    <td colspan="2">
                        <hr style="border: 1px dotted #999999; size: 1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtField1Default" Width="100%" Height="400px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="divField2" style="height: 100%">
            <table cellspacing="0" cellpadding="2" width="100%" border="0" class="dnnFormItem">
                 <tr>
                    <td colspan="2" >
                       <asp:Label ID="Label6" runat="server" resourcekey="Tip_ExtendField"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <dnn:Label ID="plEnableField2" runat="server" ControlName="chkEnableField2" ResourceKey="plEnableField">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkEnableField2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plField2Title" runat="server" ControlName="txtField2Title" ResourceKey="plFieldTitle">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtField2Title" runat="server" CssClass="NormalTextBox" Columns="40"
                            Text="Specification_2"></asp:TextBox>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                          <asp:Label ID="lblField2Default" runat="server"  ResourceKey="lblFieldDefault"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr style="border: 1px dotted #999999; size: 1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtField2Default" Width="100%" Height="400px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="divField3" style="height: 100%">
            <table cellspacing="0" cellpadding="2" width="100%" border="0" class="dnnFormItem">
                  <tr>
                    <td colspan="2" >
                       <asp:Label ID="Label7" runat="server" resourcekey="Tip_ExtendField"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <dnn:Label ID="plEnableField3" runat="server" ControlName="chkEnableField3" ResourceKey="plEnableField">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkEnableField3" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plField3Title" runat="server" ControlName="txtField3Title" ResourceKey="plFieldTitle">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtField3Title" runat="server" CssClass="NormalTextBox" Columns="40"
                            Text="Specification_3"></asp:TextBox>
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                          <asp:Label ID="lblField3Default" runat="server"  ResourceKey="lblFieldDefault"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr style="border: 1px dotted #999999; size: 1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtField3Default" Width="100%" Height="400px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="divField4" style="height: 100%">
            <table cellspacing="0" cellpadding="2" width="100%" border="0" class="dnnFormItem">
                <tr>
                    <td colspan="2" >
                       <asp:Label ID="Label8" runat="server" resourcekey="Tip_ExtendField"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <dnn:Label ID="plEnableField4" runat="server" ControlName="chkEnableField4" ResourceKey="plEnableField">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkEnableField4" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plField4Title" runat="server" ControlName="txtField4Title" ResourceKey="plFieldTitle">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtField4Title" runat="server" CssClass="NormalTextBox" Columns="40"
                            Text="Specification_4"></asp:TextBox>
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <asp:Label ID="lblField4Default" runat="server"  ResourceKey="lblFieldDefault"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr style="border: 1px dotted #999999; size: 1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtField4Default" Width="100%" Height="400px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="divField5" style="height: 100%">
            <table cellspacing="0" cellpadding="2" width="100%" border="0" class="dnnFormItem">
                  <tr>
                    <td colspan="2" >
                       <asp:Label ID="Label9" runat="server" resourcekey="Tip_ExtendField"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <dnn:Label ID="plEnableField5" runat="server" ControlName="chkEnableField5" ResourceKey="plEnableField">
                        </dnn:Label>
                    </td>
                    <td >
                        <asp:CheckBox ID="chkEnableField5" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:Label ID="plField5Title" runat="server" ControlName="txtField5Title" ResourceKey="plFieldTitle">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtField5Title" runat="server" CssClass="NormalTextBox" Columns="40"
                            Text="Specification_5"></asp:TextBox>
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                         <asp:Label ID="lblField5Default" runat="server"  ResourceKey="lblFieldDefault"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr style="border: 1px dotted #999999; size: 1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtField5Default" Width="100%" Height="400px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
         <div id="divFileUpload_Client" class="dnnFormItem" style="height: 100%">
            <table cellspacing="0" cellpadding="2" width="100%" border="0">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label14" runat="server" resourcekey="Tip_FileUpload_Client" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    </td>
                </tr>
              
                <tr>
                    <td style="width: 200px">
                        <dnn:Label ID="plAllowUpload_Client" runat="server" ControlName="chkAllowUpload_Client">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkAllowUpload_Client" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <dnn:Label ID="plUploadFileCount_Client" runat="server" ControlName="ddlUploadFileCount_Client">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:dropdownlist ID="ddlUploadFileCount_Client" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlUploadFileCount_Client_SelectedIndexChanged">
                            <asp:ListItem  Value="-1"  resourcekey="li_UploadLimit_Unlimited"/>
                             <asp:ListItem  Value="1" />
                            <asp:ListItem  Value="2" />
                            <asp:ListItem  Value="3" />
                            <asp:ListItem  Value="4" />
                            <asp:ListItem  Value="5" />
                            <asp:ListItem  Value="6" />
                            <asp:ListItem  Value="7" />
                            <asp:ListItem  Value="8" />
                            <asp:ListItem  Value="9" />
                            <asp:ListItem  Value="10" />
                        </asp:dropdownlist>
                    </td>
                </tr>
                <tr runat="server" id="tr_UploadSize_Client">
                    <td>
                        <dnn:Label ID="plUploadSize_Client" runat="server" ControlName="txtUploadSize_Client">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUploadSize_Client" runat="server" Text="10"></asp:TextBox> MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator2" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize_Client"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr runat="server" id="tr_UploadExtension_Client">
                    <td>
                        <dnn:Label ID="plUploadExtension_Client" runat="server" ControlName="txtUploadExtension_Client">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUploadExtension_Client" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                         <asp:Image ID="Image9" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUploadExtension_Client"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <asp:Panel runat="server" ID="pnlUploadRule_1">
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadRuleTitle1" runat="server" ResourceKey="lblUploadRuleTitle1" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadRuleTitle1" runat="server" Text="File 1"></asp:TextBox>
                            <asp:Image ID="Image10" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUploadRuleTitle1"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadSize1" runat="server" ResourceKey="lblUploadSize" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadSize1" runat="server" Text="10"></asp:TextBox>
                            MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator3" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize1"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadExtension1" runat="server" ResourceKey="lblUploadExtension" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadExtension1" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                            <asp:Image ID="Image11" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUploadExtension1"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="lblUploadRequire1" runat="server" ResourceKey="lblUploadRequire" />
                        </td>
                        <td>
                            <asp:checkbox ID="chkUploadRequire1" runat="server"></asp:checkbox>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                        <br />  <br />
                        </td>
                    </tr>
                </asp:Panel>

                   <asp:Panel runat="server" ID="pnlUploadRule_2">
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadRuleTitle2" runat="server" ResourceKey="lblUploadRuleTitle2" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadRuleTitle2" runat="server" Text="File 2"></asp:TextBox>
                             <asp:Image ID="Image12" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUploadRuleTitle2"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadSize2" runat="server" ResourceKey="lblUploadSize" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadSize2" runat="server" Text="10"></asp:TextBox>
                            MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator4" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize2"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadExtension2" runat="server" ResourceKey="lblUploadExtension" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadExtension2" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                             <asp:Image ID="Image13" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUploadExtension2"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="lblUploadRequire2" runat="server" ResourceKey="lblUploadRequire" />
                        </td>
                        <td>
                            <asp:checkbox ID="chkUploadRequire2" runat="server"></asp:checkbox>
                        </td>
                    </tr>
                        <tr>
                        <td colspan="2">
                        <br />  <br />
                        </td>
                    </tr>
                </asp:Panel>
                   <asp:Panel runat="server" ID="pnlUploadRule_3">
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadRuleTitle3" runat="server" ResourceKey="lblUploadRuleTitle3" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadRuleTitle3" runat="server" Text="File 3"></asp:TextBox>
                             <asp:Image ID="Image14" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtUploadRuleTitle3"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadSize3" runat="server" ResourceKey="lblUploadSize" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadSize3" runat="server" Text="10"></asp:TextBox>
                            MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator5" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize3"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadExtension3" runat="server" ResourceKey="lblUploadExtension" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadExtension3" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                             <asp:Image ID="Image15" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtUploadExtension3"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="lblUploadRequire3" runat="server" ResourceKey="lblUploadRequire" />
                        </td>
                        <td>
                            <asp:checkbox ID="chkUploadRequire3" runat="server"></asp:checkbox>
                        </td>
                    </tr>
                          <tr>
                        <td colspan="2">
                        <br />  <br />
                        </td>
                    </tr>
                </asp:Panel>

                   <asp:Panel runat="server" ID="pnlUploadRule_4">
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadRuleTitle4" runat="server" ResourceKey="lblUploadRuleTitle4" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadRuleTitle4" runat="server" Text="File 4"></asp:TextBox>
                             <asp:Image ID="Image16" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtUploadRuleTitle4"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadSize4" runat="server" ResourceKey="lblUploadSize" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadSize4" runat="server" Text="10"></asp:TextBox>
                            MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator7" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize4"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadExtension4" runat="server" ResourceKey="lblUploadExtension" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadExtension4" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                             <asp:Image ID="Image17" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtUploadExtension4"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="lblUploadRequire4" runat="server" ResourceKey="lblUploadRequire" />
                        </td>
                        <td>
                            <asp:checkbox ID="chkUploadRequire4" runat="server"></asp:checkbox>
                        </td>
                    </tr>
                        <tr>
                        <td colspan="2">
                        <br />  <br />
                        </td>
                    </tr>
                </asp:Panel>

                   <asp:Panel runat="server" ID="pnlUploadRule_5">
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadRuleTitle5" runat="server" ResourceKey="lblUploadRuleTitle5" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadRuleTitle5" runat="server" Text="File 5"></asp:TextBox>
                             <asp:Image ID="Image18" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtUploadRuleTitle5"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadSize5" runat="server" ResourceKey="lblUploadSize" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadSize5" runat="server" Text="10"></asp:TextBox>
                            MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator8" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize5"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadExtension5" runat="server" ResourceKey="lblUploadExtension" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadExtension5" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                             <asp:Image ID="Image19" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtUploadExtension5"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="lblUploadRequire5" runat="server" ResourceKey="lblUploadRequire" />
                        </td>
                        <td>
                            <asp:checkbox ID="chkUploadRequire5" runat="server"></asp:checkbox>
                        </td>
                    </tr>
                        <tr>
                        <td colspan="2">
                        <br />  <br />
                        </td>
                    </tr>
                </asp:Panel>

                   <asp:Panel runat="server" ID="pnlUploadRule_6">
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadRuleTitle6" runat="server" ResourceKey="lblUploadRuleTitle6" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadRuleTitle6" runat="server" Text="File 6"></asp:TextBox>
                             <asp:Image ID="Image20" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtUploadRuleTitle6"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadSize6" runat="server" ResourceKey="lblUploadSize" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadSize6" runat="server" Text="10"></asp:TextBox>
                            MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator9" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize6"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadExtension6" runat="server" ResourceKey="lblUploadExtension" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadExtension6" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                             <asp:Image ID="Image21" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtUploadExtension6"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="lblUploadRequire6" runat="server" ResourceKey="lblUploadRequire" />
                        </td>
                        <td>
                            <asp:checkbox ID="chkUploadRequire6" runat="server"></asp:checkbox>
                        </td>
                    </tr>
                        <tr>
                        <td colspan="2">
                        <br />  <br />
                        </td>
                    </tr>
                </asp:Panel>

                   <asp:Panel runat="server" ID="pnlUploadRule_7">
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadRuleTitle7" runat="server" ResourceKey="lblUploadRuleTitle7" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadRuleTitle7" runat="server" Text="File 7"></asp:TextBox>
                             <asp:Image ID="Image22" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtUploadRuleTitle7"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadSize7" runat="server" ResourceKey="lblUploadSize" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadSize7" runat="server" Text="10"></asp:TextBox>
                            MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator10" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize7"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadExtension7" runat="server" ResourceKey="lblUploadExtension" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadExtension7" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                             <asp:Image ID="Image23" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtUploadExtension7"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="lblUploadRequire7" runat="server" ResourceKey="lblUploadRequire" />
                        </td>
                        <td>
                            <asp:checkbox ID="chkUploadRequire7" runat="server"></asp:checkbox>
                        </td>
                    </tr>
                        <tr>
                        <td colspan="2">
                        <br />  <br />
                        </td>
                    </tr>
                </asp:Panel>

                   <asp:Panel runat="server" ID="pnlUploadRule_8">
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadRuleTitle8" runat="server" ResourceKey="lblUploadRuleTitle8" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadRuleTitle8" runat="server" Text="File 8"></asp:TextBox>
                             <asp:Image ID="Image24" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtUploadRuleTitle8"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadSize8" runat="server" ResourceKey="lblUploadSize" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadSize8" runat="server" Text="10"></asp:TextBox>
                            MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator11" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize8"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadExtension8" runat="server" ResourceKey="lblUploadExtension" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadExtension8" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                             <asp:Image ID="Image25" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtUploadExtension8"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="lblUploadRequire8" runat="server" ResourceKey="lblUploadRequire" />
                        </td>
                        <td>
                            <asp:checkbox ID="chkUploadRequire8" runat="server"></asp:checkbox>
                        </td>
                    </tr>
                        <tr>
                        <td colspan="2">
                        <br />  <br />
                        </td>
                    </tr>
                </asp:Panel>

                   <asp:Panel runat="server" ID="pnlUploadRule_9">
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadRuleTitle9" runat="server" ResourceKey="lblUploadRuleTitle9" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadRuleTitle9" runat="server" Text="File 9"></asp:TextBox>
                             <asp:Image ID="Image26" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtUploadRuleTitle9"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadSize9" runat="server" ResourceKey="lblUploadSize" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadSize9" runat="server" Text="10"></asp:TextBox>
                            MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator12" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize9"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadExtension9" runat="server" ResourceKey="lblUploadExtension" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadExtension9" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                             <asp:Image ID="Image27" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtUploadExtension9"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="lblUploadRequire9" runat="server" ResourceKey="lblUploadRequire" />
                        </td>
                        <td>
                            <asp:checkbox ID="chkUploadRequire9" runat="server"></asp:checkbox>
                        </td>
                    </tr>
                        <tr>
                        <td colspan="2">
                        <br />  <br />
                        </td>
                    </tr>
                </asp:Panel>

                   <asp:Panel runat="server" ID="pnlUploadRule_10">
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadRuleTitle10" runat="server" ResourceKey="lblUploadRuleTitle10" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadRuleTitle10" runat="server" Text="File 10"></asp:TextBox>
                             <asp:Image ID="Image28" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtUploadRuleTitle10"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadSize10" runat="server" ResourceKey="lblUploadSize" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadSize10" runat="server" Text="10"></asp:TextBox>
                            MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator13" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize10"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUploadExtension10" runat="server" ResourceKey="lblUploadExtension" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtUploadExtension10" runat="server" Text="jpg,jpeg,jpe,gif,bmp,png"></asp:TextBox>
                             <asp:Image ID="Image29" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                            ToolTip="Reuired" AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtUploadExtension10"
                            ForeColor="Red" Display="Dynamic" resourcekey="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="lblUploadRequire10" runat="server" ResourceKey="lblUploadRequire" />
                        </td>
                        <td>
                            <asp:checkbox ID="chkUploadRequire10" runat="server"></asp:checkbox>
                        </td>
                    </tr>
                        <tr>
                        <td colspan="2">
                        <br />  <br />
                        </td>
                    </tr>
                </asp:Panel>
            </table>
        </div>

         <div id="divFileUpload_Author" class="dnnFormItem" style="height: 100%">
            <table cellspacing="0" cellpadding="2" width="100%" border="0">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label15" runat="server" resourcekey="Tip_FileUpload_Author" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <dnn:Label ID="plAllowUpload_Author" runat="server" ControlName="chkAllowUpload_Author">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkAllowUpload_Author" runat="server" />
                    </td>
                </tr>
             
               
                <tr>
                    <td>
                        <dnn:Label ID="plUploadSize_Author" runat="server" ControlName="txtUploadSize_Author">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUploadSize_Author" runat="server" Text="10"></asp:TextBox> MB
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator14" resourcekey="MustBeInteger"
                            runat="server" ValidationExpression="\d*" ControlToValidate="txtUploadSize_Author">
                       </asp:RegularExpressionValidator>
                    </td>
                </tr>
            
            </table>
        </div>
    </div>
</div>



