<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.Settings_TagList, App_Web_settings_taglist.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="label" Src="~/controls/LabelControl.ascx" %>
<table cellspacing="0" cellpadding="2" width="100%" border="0" class="dnnFormItem">
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plType" runat="server" ControlName="ddlType"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlType" runat="server" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" resourcekey="Tip_Template" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTemplate" runat="server" ControlName="ddlTemplate"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTemplate" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" resourcekey="Tip_ArticleListPage" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plArticleListPage" runat="server" ControlName="ddlArticleListPage">
            </dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlArticleListPage" DataValueField="TabId" DataTextField="IndentedTabName"
                runat="server">
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
            <dnn:label ID="plSortFiled" ControlName="ddlSortFiled" runat="server"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlSortFiled" runat="server">
                <asp:ListItem Value="TagName" resourcekey="li_SortFiled_TagName">TagName</asp:ListItem>
                <asp:ListItem Value="ArticleCounts" resourcekey="li_SortFiled_ArticleCounts">ArticleCounts</asp:ListItem>
                <asp:ListItem Value="CreatedDate" resourcekey="li_SortFiled_CreatedDate">CreatedDate</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plSortMethod" ControlName="ddlSortMethod" runat="server"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlSortMethod" runat="server">
                <asp:ListItem Value="Asc" resourcekey="li_SortMethod_Asc"></asp:ListItem>
                <asp:ListItem Value="Desc" resourcekey="li_SortMethod_Desc"></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plRowCount" runat="server" ControlName="txtRowCount"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtRowCount" runat="server" width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtRowCount"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plColCount" runat="server" ControlName="txtColCount"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtColCount" runat="server" width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator2" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtColCount"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plDisplayArticleCounts" runat="server" ControlName="chkDisplayArticleCounts">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkDisplayArticleCounts" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plDisplayRss" runat="server" ControlName="chkDisplayRss"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkDisplayRss" runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label3" runat="server" resourcekey="Tip_UseCloudStyle" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUseCloudStyle" runat="server" ControlName="chkUseCloudStyle"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkUseCloudStyle" runat="server" />
        </td>
    </tr>
</table>
<p align="center">
    <asp:LinkButton CssClass="dnnPrimaryAction" ID="cmdUpdate" OnClick="cmdUpdate_Click"
        resourcekey="cmdUpdate" runat="server" BorderStyle="none" Text="Update" CausesValidation="True"></asp:LinkButton>&nbsp;&nbsp;
    <asp:HyperLink runat="server" ID="hlCancel" ResourceKey="cmdCancel" CssClass="dnnSecondaryAction"
        NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>" />
</p>
