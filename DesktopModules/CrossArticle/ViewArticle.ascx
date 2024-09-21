<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.ViewArticle, App_Web_viewarticle.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>

<asp:LinkButton CssClass="dnnPrimaryAction" ID="lbtnSetupWizard" OnClick="lbtnSetupWizard_Click"
        resourcekey="lbtnSetupWizard" runat="server" BorderStyle="none" CausesValidation="False"  Visible="false">
  </asp:LinkButton>

<table id="tblLink" cellspacing="0" cellpadding="0" visible="false" width="100%"
    runat="server">
    <tr>
        <td>
            <asp:Image ImageUrl="~/images/edit.gif" runat="server" ID="imgEdit" Visible="false" />
            <asp:HyperLink runat="server" ID="hlEdit" Visible="false" />
     &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ImageUrl="~/images/action_help.gif" runat="server" ID="imgAdminControlPanel"
                Visible="false" />
            <asp:HyperLink runat="server" ID="hlAdminControlPanel" Visible="false" Target="_blank" />
        </td>
    </tr>
</table>

<asp:PlaceHolder ID="plhView" runat="server"></asp:PlaceHolder>
<asp:Label ID="lblArticleNotExist" runat="server" resourcekey="lblArticleNotExist" CssClass="NormalRed"
    Visible="false"></asp:Label>
<asp:Label ID="lblNoPermission" runat="server" resourcekey="lblNoPermission" CssClass="NormalRed"
    Visible="false"></asp:Label>
<asp:Label ID="lblPrivate" runat="server" resourcekey="lblPrivate" CssClass="NormalRed"
    Visible="false"></asp:Label>
<asp:Label ID="lblSocial" runat="server" CssClass="NormalRed"
    Visible="false"></asp:Label>