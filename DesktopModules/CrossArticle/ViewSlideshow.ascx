<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.ViewSlideshow, App_Web_viewslideshow.ascx.6c70b780" %>
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
<asp:PlaceHolder ID="plhTemplate" runat="server"></asp:PlaceHolder>
