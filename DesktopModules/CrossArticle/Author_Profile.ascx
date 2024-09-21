<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.Author_Profile, App_Web_author_profile.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>

<table cellpadding="2" cellspacing="2" class="dnnFormItem"  width="100%">
    <tr>
        <td style="width:200px">
            <dnn:Label ID="plProfileUrl" runat="server" ControlName="txtProfileUrl"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtProfileUrl"  runat="server" ></asp:TextBox>
        </td>
    </tr>
      <tr>
        <td colspan="2">
            <asp:Label ID="lblProtect" runat="server" resourcekey="Tip_ProtectPassword" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plProtectPassword" runat="server"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtProtectPassword" runat="server"></asp:TextBox>
        </td>
    </tr>

     <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" resourcekey="Tip_AvatarEmail" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plEmail" runat="server"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator3" resourcekey="Tip_InvalidEmail"
                runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Image ID="imgGravatarPreview" runat="server"></asp:Image>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label8" runat="server" resourcekey="Tip_Company" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plCompany" runat="server" ControlName="txtCompany"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtCompany" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plVendorCountry" runat="server" ControlName="ddlVendorCountry"></dnn:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlVendorCountry" runat="server" AutoPostBack="True" DataTextField="Name"
                DataValueField="Id" OnSelectedIndexChanged="ddlVendorCountry_SelectedIndexChanged" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plVendorState" runat="server" ControlName="ddlVendorState"></dnn:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlVendorState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVendorState_SelectedIndexChanged" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plVendorCity" runat="server" ControlName="ddlVendorCity"></dnn:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlVendorCity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVendorCity_SelectedIndexChanged" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plVendorTown" runat="server" ControlName="ddlVendorTown"></dnn:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlVendorTown" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plTel" runat="server" ControlName="txtTel"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTel"  runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plFax" runat="server" ControlName="txtFax"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtFax"  runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plZipcode" runat="server" ControlName="txtZipcode"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtZipcode"  runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plIM" runat="server" ControlName="txtIM"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtIM"  runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plLinkman" runat="server" ControlName="txtLinkman"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtLinkman"  runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plAddress" runat="server" ControlName="txtAddress"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtAddress"  runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plBusinessScope" runat="server" ControlName="txtBusinessScope"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtBusinessScope"  runat="server" Rows="4" TextMode="MultiLine" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plSiteUrl" runat="server" ControlName="txtSiteUrl"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtSiteUrl"  runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plLogoUrl" runat="server" ControlName="txtLogoUrl"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtLogoUrl"  runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plSlogan" runat="server" ControlName="txtSlogan"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtSlogan"  runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trField1">
        <td>
            <dnn:Label ID="plField1" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtField1"  runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trField2">
        <td>
            <dnn:Label ID="plField2" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtField2"  runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trField3">
        <td>
            <dnn:Label ID="plField3" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtField3"  runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trField4">
        <td>
            <dnn:Label ID="plField4" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtField4"  runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trField5">
        <td>
            <dnn:Label ID="plField5" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtField5"  runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trField6">
        <td>
            <dnn:Label ID="plField6" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtField6"  runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trField7">
        <td>
            <dnn:Label ID="plField7" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtField7"  runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trField8">
        <td>
            <dnn:Label ID="plField8" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtField8"  runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trField9">
        <td>
            <dnn:Label ID="plField9" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtField9"  runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trField10">
        <td>
            <dnn:Label ID="plField10" runat="server" />
        </td>
        <td>
            <asp:TextBox ID="txtField10"  runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblBiography" runat="server" ResourceKey="lblBiography" />
            <br />
        </td>
    </tr>
    <tr>
        <td width="100%" colspan="2">
            <hr style="border: 1px dotted #999999; size: 1" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <dnn:TextEditor ID="txtBiography" Width="100%" Height="300px" runat="server"/>
        </td>
    </tr>
</table>
<p align="center">
       <asp:LinkButton ID="lbtnUpdate" runat="server" resourcekey="cmdUpdate" CausesValidation="false"
        CssClass="dnnPrimaryAction" OnClick="lbtnUpdate_Click"></asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink runat="server" ID="hlAdminHome" ResourceKey="btnAdminHome" NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>"
        CssClass="dnnSecondaryAction" />
</p>
