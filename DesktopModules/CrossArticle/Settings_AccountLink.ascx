<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.Settings_AccountLink, App_Web_settings_accountlink.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="label" Src="~/controls/LabelControl.ascx" %>
<table cellspacing="0" cellpadding="2" width="90%" border="0" align="center" class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" resourcekey="Tip_Template" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plTemplate" runat="server" ControlName="ddlTemplate"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTemplate" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plLinkTarget" ControlName="ddlLinkTarget" runat="server"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlLinkTarget" runat="server">
                <asp:ListItem Value="_self" resourcekey="li_LinkTarget_Self">_Self</asp:ListItem>
                <asp:ListItem Value="_blank" resourcekey="li_LinkTarget_Blank">_Blank</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowArticle" runat="server" ControlName="chkShowArticle"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowArticle" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowAccount" runat="server" ControlName="chkShowAccount"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAccount" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowHelp" runat="server" ControlName="chkShowHelp"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowHelp" runat="server" />
        </td>
    </tr>
</table>
<p align="center">
    <asp:LinkButton CssClass="dnnPrimaryAction" ID="cmdUpdate" OnClick="cmdUpdate_Click"
        resourcekey="cmdUpdate" runat="server" BorderStyle="none" Text="Update" CausesValidation="True"></asp:LinkButton>&nbsp;&nbsp;
    <asp:HyperLink runat="server" ID="hlAdminHome" ResourceKey="cmdCancel" CssClass="dnnSecondaryAction"
        NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>" />
</p>
