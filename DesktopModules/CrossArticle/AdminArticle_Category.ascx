﻿<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.AdminArticle_Category, App_Web_adminarticle_category.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="url" Src="~/controls/URLControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="sectionhead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls" %>
<table cellspacing="1" cellpadding="1" width="100%" border="0" class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="lblType" runat="server" resourcekey="lblType" />
            <asp:DropDownList ID="ddlType" runat="server" DataTextField="Name" DataValueField="Id" Width="300px"
                AutoPostBack="True" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:HyperLink runat="server" ID="hlAdminHome" ResourceKey="btnAdminHome" NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>" />
            <br />
            <asp:Label ID="lblTip" runat="server" resourcekey="lblTip" CssClass="dnnFormMessage dnnFormInfo" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <hr style="border: 1px dotted #999999; size: 1" />
        </td>
    </tr>
    <tr align="left" valign="top">
        <td >
            <asp:TreeView ID="tvNavigate" runat="server" ImageSet="XPFileExplorer" NodeIndent="10"
                PathSeparator="/" ExpandDepth="2" OnSelectedNodeChanged="tvNavigate_SelectedNodeChanged">
                <ParentNodeStyle Font-Bold="False" />
                <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px"
                    VerticalPadding="0px" />
                <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="2px"
                    NodeSpacing="0px" VerticalPadding="2px" />
            </asp:TreeView>
        </td>
        <td >
            <table cellspacing="0" cellpadding="0" width="100%" border="0" runat="server" id="tblDetail">
                <tr>
                    <td style="width: 150px">
                        <dnn:Label ID="plName" runat="server" ControlName="txtName"></dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="350px"></asp:TextBox>
                        <asp:Image ID="Image1"
                            runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg" ToolTip="Reuired"
                            AlternateText="Required" />
                          <%if (SupportsContentLocalization)
                          {%>
                        <asp:HyperLink ID="hlContentLocalization" Target="_blank" runat="server">
                            <img alt="" id="Img12" runat="server" src="~/DesktopModules/CrossArticle/images/ml_content_16.gif" />
                            <asp:Literal ID="Literal8" runat="server" Text='<%#Localization.GetString("imgContentLocalization", Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>' />&nbsp;&nbsp;&nbsp;&nbsp;
                        </asp:HyperLink>
                        <% } %>
                        <asp:RequiredFieldValidator ID="valCategoryNameRequired" runat="server" ControlToValidate="txtName"
                            Display="Dynamic" resourcekey="Required" CssClass="NormalRed"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td valign="middle">
                        <dnn:Label ID="plDescription" runat="server" ControlName="txtDescription"></dnn:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server" Width="350px" Rows="5" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td >
                        <dnn:Label ID="plParent" runat="server" Text="Parent:" ControlName="ddlParent"></dnn:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlParent" runat="server"  DataTextField="Name"
                            DataValueField="Id">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td  valign="middle">
                        <dnn:Label ID="plImage" runat="server" ControlName="ctlURL"></dnn:Label>
                    </td>
                    <td>
                        <dnn:url ID="ctlImage" runat="server" FileFilter="jpg,jpeg,jpe,bmp,png" Required="False"
                            ShowLog="false" ShowNewWindow="false" ShowNone="false" ShowTabs="false" ShowTrack="false"
                            ShowUrls="false" ShowFiles="true" ShowUpLoad="true" Width="350px"></dnn:url>
                    </td>
                </tr>
                <tr id="trListPageTip" runat="server">
                    <td colspan="2" class="dnnFormMessage dnnFormInfo">
                        <%=LocalizeString("Tip_ListPage")%>
                    </td>
                </tr>
                <tr id="trListPage" runat="server">
                    <td>
                        <dnn:Label ID="plListPage" runat="server" ControlName="ddlListPage"></dnn:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlListPage" DataValueField="TabId" DataTextField="IndentedTabName"
                            Width="350px" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td >
                        <dnn:Label ID="plViewOrder" runat="server" Text="View Order:"></dnn:Label>
                    </td>
                    <td align="left">
                        <asp:ImageButton ID="ibtnUp" runat="server" AlternateText="Move category  order up "
                            resourcekey="ibtnUp.Help" CommandName="up" ImageUrl="~/images/up.gif" OnClick="ibtnUp_Click">
                        </asp:ImageButton>
                        <asp:ImageButton ID="ibtnDown" runat="server" AlternateText="Move category  order down"
                            resourcekey="ibtnDown.Help" CommandName="down" ImageUrl="~/images/dn.gif" OnClick="ibtnDown_Click">
                        </asp:ImageButton>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr style="border: 1px dotted #999999; size: 1" />
                    </td>
                </tr>
                <tr align="center">
                    <td align="center" colspan="2">
                        <asp:LinkButton ID="lbtnUpdate" runat="server" resourcekey="cmdUpdate" CssClass="dnnSecondaryAction"
                            OnClick="lbtnUpdate_Click"></asp:LinkButton>&nbsp;
                        <asp:LinkButton ID="lbtnDelete" runat="server" resourcekey="cmdDelete" CssClass="dnnSecondaryAction"
                            OnClick="lbtnDelete_Click" OnClientClick='<%# String.Format("return confirm(\"{0}\");", Localization.GetString("DeleteConfirm_Related",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)) %>' />
                        <asp:LinkButton ID="lbtnAddNew" runat="server" resourcekey="lbtnAddNew" CssClass="dnnPrimaryAction"
                            Visible="False" OnClick="lbtnAddNew_Click"></asp:LinkButton>&nbsp;
                        <asp:LinkButton ID="lbtnAddSibling" runat="server" resourcekey="lbtnAddSibling" CssClass="dnnSecondaryAction"
                            OnClick="lbtnAddSibling_Click"></asp:LinkButton>&nbsp;
                        <asp:LinkButton ID="lbtnAddChild" runat="server" Text="Add Child" resourcekey="lbtnAddChild"
                            CssClass="dnnSecondaryAction" OnClick="lbtnAddChild_Click"></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
