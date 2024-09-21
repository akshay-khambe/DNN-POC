<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.AdminArticle_Import, App_Web_adminarticle_import.ascx.6c70b780" %>
<table cellspacing="1" cellpadding="1" border="0" class="dnnFormItem" runat="server" id="tblImport" width="100%">
    <tr>
        <td colspan="2">
            <asp:Label ID="lblImportTips" runat="server" resourcekey="lblImportTips" CssClass="dnnFormMessage dnnFormInfo" />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <asp:Label ID="lblArticleType" runat="server" resourcekey="lblArticleType" />
        </td>
        <td>
            <asp:DropDownList ID="ddlArticleType"  runat="server" DataTextField="Name" Width="200px"
                DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="ddlArticleType_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td valign="middle">
            <asp:Label ID="lblCategory" runat="server" resourcekey="lblCategory" />
        </td>
        <td>
            <asp:TreeView ID="tvCategory" runat="server" ImageSet="XPFileExplorer" NodeIndent="10"
                PathSeparator="/" ShowCheckBoxes="All" ExpandDepth="-1">
                <ParentNodeStyle Font-Bold="False" />
                <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px"
                    VerticalPadding="0px" />
                <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px"
                    NodeSpacing="0px" VerticalPadding="2px" />
            </asp:TreeView>
            <br />
            <asp:Label ID="lblInvalidCategory" runat="server" Visible="false" CssClass="NormalRed" />
        </td>
    </tr>
    <tr align="center">
        <td colspan="2">
            <asp:LinkButton ID="lbtnImport" runat="server" resourcekey="lbtnImport" CausesValidation="false"
                CssClass="dnnPrimaryAction" OnClick="lbtnImport_Click"></asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink runat="server" ID="hlAdminHome" ResourceKey="btnAdminHome" NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>"
                CssClass="dnnSecondaryAction" />
        </td>
    </tr>
    <tr align="left">
        <td colspan="2">
            <asp:Label ID="lblImportResult" runat="server" Visible="false" CssClass="NormalBold" />
        </td>
    </tr>
</table>
