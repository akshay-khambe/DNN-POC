<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.AdminArticle_Author, App_Web_adminarticle_author.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<style type="text/css">
.CrossGrid th{
  text-align:center;
}
</style>

<table width="100%" cellpadding="1" cellspacing="1" class="dnnFormItem" align="center"
    runat="server" id="tblAuthorList">
    <tr>
        <td>
            <asp:Label ID="lblType" runat="server" resourcekey="lblType" />
            <asp:DropDownList ID="ddlType"  runat="server" DataTextField="Name" Width="200px"
                DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink runat="server" ID="hlAdminHome" ResourceKey="btnAdminHome" NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="gvList" runat="server" AutoGenerateColumns="False" CellPadding="1"  CellSpacing="1"  GridLines="Both" BackColor="Gray"
                Width="100%" ForeColor="#333333"  OnRowCommand="gvList_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="UserId" SortExpression="UserId" ItemStyle-HorizontalAlign="Right">
                        <HeaderTemplate>
                            <asp:Label ID="lblUserId" runat="server" resourcekey="lblUserId"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblUserIdField" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Avatar" SortExpression="Avatar" ItemStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblAvatar" runat="server" resourcekey="lblAvatar"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Image ID="imgAvatar" runat="server" ImageUrl='<%#GetAuthorAvatar(Eval("UserId").ToString(),Eval("AvatarEmail").ToString()) %>' Width="48px">
                            </asp:Image>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DisplayName" SortExpression="DisplayName">
                        <HeaderTemplate>
                            <asp:Label ID="lblDisplayName" runat="server" resourcekey="lblDisplayName"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDisplayNameField" runat="server" Text='<%# Eval("DisplayName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="AvatarEmail" SortExpression="AvatarEmail">
                        <HeaderTemplate>
                            <asp:Label ID="lblAvatarEmail" runat="server" resourcekey="lblAvatarEmail"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblAvatarEmailField" runat="server" Text='<%# Eval("AvatarEmail") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ArticleCounts" SortExpression="ArticleCounts" ItemStyle-HorizontalAlign="Right">
                        <HeaderTemplate>
                            <asp:Label ID="lblArticleCounts" runat="server" resourcekey="lblArticleCounts"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblArticleCountsField" runat="server" Text='<%# Eval("ArticleCounts") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblAction" runat="server" resourcekey="lblAction" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="imgEdit" runat="server" CausesValidation="False" CommandName="Sel"
                                CommandArgument='<%# Eval("UserId")%>' ToolTip='<%#Localization.GetString("imgEdit", LocalResourceFile)%>'
                                ImageUrl="~/images/edit.gif" AlternateText='<%#Localization.GetString("imgEdit", LocalResourceFile)%>' />
                            <asp:ImageButton ID="imgDelete" runat="server" AlternateText='<%#Localization.GetString("imgDelete", LocalResourceFile)%>'
                                ToolTip='<%#Localization.GetString("imgDelete", LocalResourceFile)%>' CommandArgument='<%#Eval("UserId") %>'
                                CausesValidation="False" CommandName="Del" ImageUrl="~/images/delete.gif" OnClientClick="return confirm('Delete author will also delete his/her articles,Are you sure to delete this item?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" CssClass="CrossGrid"/>
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <RowStyle BackColor="#EFF3FB" ForeColor="#333333" />
                <EditRowStyle BackColor="#999999" />
            </asp:GridView>
        </td>
    </tr>
</table>
<table width="100%" cellpadding="1" cellspacing="1" class="dnnFormItem" align="center"
    runat="server" id="tblAuthorInfo">
    <tr>
        <td style="width: 200px">
            <dnn:Label ID="plProfileUrl" runat="server" ControlName="txtProfileUrl"></dnn:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtProfileUrl" TabIndex="1" runat="server" Width="800px"></asp:TextBox>
        </td>
    </tr>
      <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" resourcekey="Tip_AvatarEmail" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td >
            <dnn:Label ID="plEmail" runat="server"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" TabIndex="1" runat="server" Width="300px"></asp:TextBox>
           
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator3" resourcekey="Tip_InvalidEmail" ForeColor="Red"
                runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"/>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="imgGravatarPreview" runat="server"></asp:Image>
        </td>
        <td>
            <br />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
             <asp:label ID="lblBiography" runat="server" ResourceKey="lblBiography"/>
            <br />
        </td>
    </tr>
    <tr valign="top">
        <td style="width: 100%" colspan="2">
            <hr style="border: 1px dotted #999999; size: 1" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <dnn:TextEditor ID="txtBiography" Width="100%" Height="250px" runat="server" />
        </td>
    </tr>
</table>
<p align="center" id="pInfo" runat="server">
    <asp:LinkButton ID="lbtnUpdate" OnClick="lbtnUpdate_Click" resourcekey="cmdUpdate"  CssClass="dnnPrimaryAction"
        runat="server"  Text="Update" CausesValidation="False"></asp:LinkButton>&nbsp;&nbsp;
    <asp:LinkButton ID="lbtnCancel" OnClick="lbtnCancel_Click" resourcekey="cmdCancel" CssClass="dnnSecondaryAction"
        runat="server"  Text="Cancel" CausesValidation="False"></asp:LinkButton>&nbsp;
</p>
