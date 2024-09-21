<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.Reader_Watch, App_Web_reader_watch.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls" %>
<%@ Register TagPrefix="cross" Namespace="Cross.DNN.Common.WebControls" Assembly="Cross.Dnn.Modules.Framework" %>
<style type="text/css">
.CrossGrid th{
  text-align:center;
}
</style>

<script type="text/javascript">
    function checkAll() {
        if ($(":checkbox[id*='chkAll']").prop("checked") == true) {
            $(":checkbox[id*='chkItem']").prop("checked", true);
        }
        else {
            $(":checkbox[id*='chkItem']").prop("checked", false);
        }
    }
</script>

<table width="100%" class="dnnFormItem" align="center">
    <tr>
        <td align="center">
         <dnn:CommandButton ID="btnCancel" runat="server" ResourceKey="cmdCancel" ImageUrl="~/images/cancel.gif"
                OnCommand="btnCancel_Click" Visible="false" CausesValidation="false" />
            &nbsp;&nbsp;
            <dnn:CommandButton ID="btnDeleteSelected" runat="server" ResourceKey="btnDeleteSelected"
                CausesValidation="false" ImageUrl="~/images/delete.gif" OnCommand="btnDeleteSelected_Click"
                OnClick='<%# String.Format("return confirm(\"{0}\");", Localization.GetString("DeleteItems",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)) %>' />
            &nbsp;&nbsp;
            <asp:HyperLink runat="server" ID="hlAdminHome" ResourceKey="btnMyAccount" NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>" />
        </td>
    </tr>
</table>
<table  width="100%"  id="tbl_List" runat="server">
    <tr>
        <td>
            <asp:GridView ID="gvList" runat="server" AutoGenerateColumns="False" 
                Width="100%" CellPadding="1"  CellSpacing="1"  GridLines="Both" BackColor="Gray" ForeColor="#333333" DataKeyNames="Id" OnRowCommand="gvList_RowCommand">
                <EmptyDataTemplate>
                    <asp:Label ID="lblNoRecords" Text='<%# Localization.GetString("NoRecords",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared) %>'
                        runat="server"></asp:Label>
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField HeaderText="Id" SortExpression="Id" Visible="False" >
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" >
                        <HeaderTemplate>
                            <input type="checkbox" id="chkAll" runat="server" onclick="checkAll()"  />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkItem" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="left">
                        <HeaderTemplate>
                            <asp:Label ID="lblArticleTitle" runat="server" resourcekey="lblArticleTitle"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="hlArticleTitleData" runat="server" Text='<%# Eval("ArticleTitle") %>'
                                Target="_blank" NavigateUrl='<%#GetArticleUrl(Convert.ToString(Eval("ArticleId"))) %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="right">
                        <HeaderTemplate>
                            <asp:Label ID="lblCreatedDate" runat="server" resourcekey="lblCreatedDate"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblCreatedDateData" runat="server" Text='<%#Eval("CreatedDate")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField >
                        <HeaderTemplate>
                            <asp:Label ID="lblAction" runat="server" resourcekey="lblAction"/>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="imgAddTicket" runat="server" CausesValidation="False" CommandName="AddTicket"
                                CommandArgument='<%# Eval("Id")%>' ToolTip='<%#Localization.GetString("imgAddTicket",LocalResourceFile)%>'
                                ImageUrl="~/images/action_help.gif" AlternateText='<%#Localization.GetString("imgAddTicket",LocalResourceFile)%>' />
                            <asp:ImageButton ID="imgDel" runat="server" CausesValidation="False" CommandName="Del"
                                CommandArgument='<%# Eval("Id")%>' ImageUrl="~/images/delete.gif" AlternateText='<%#Localization.GetString("imgDel",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>'
                                ToolTip='<%#Localization.GetString("imgDel",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>'
                                OnClientClick='<%# String.Format("return confirm(\"{0}\");", Localization.GetString("DeleteItem",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)) %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" Wrap="true" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" CssClass="CrossGrid"
                    Wrap="true" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <RowStyle BackColor="#EFF3FB" ForeColor="#333333" HorizontalAlign="Center" Wrap="true" />
                <EditRowStyle BackColor="#999999" Wrap="true" />
            </asp:GridView>
        </td>
    </tr>
      <tr >
        <td>
            <div class="dnnTreeLegend" id="divLegend" runat="server">
                <h4>
                    <asp:Label ID="lblLegend" runat="server" resourcekey="lblLegend" /></h4>
                <div class="dtlItem">
                    <img alt="" id="Img1" runat="server" src="~/images/action_help.gif" />&nbsp;=&nbsp;
                    <asp:Literal ID="lblEdit" runat="server" Text='<%#Localization.GetString("imgAddTicket", LocalResourceFile)%>' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="" id="Img7" runat="server" src="~/images/delete.gif" />&nbsp;=&nbsp;
                    <asp:Literal ID="lblDelete" runat="server" Text='<%#Localization.GetString("imgDel", Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>' />&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
        </td>
    </tr>
</table>
<table id="tblTicket" cellspacing="0" cellpadding="2" border="0" align="left"
    width="100%" class="dnnFormItem" visible="false" runat="server">
    <tr>
        <td colspan="2">
            <asp:Label ID="lblTicket" runat="server" CssClass="SubHead" /><br />
            <br />
        </td>
    </tr>
    <tr>
        <td style="width:200px">
            <dnn:Label ID="plTicketTitle" runat="server"  ControlName="txtTitle" />
        </td>
        <td>
            <asp:TextBox ID="txtTitle" runat="server" width="600px" />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg" ToolTip="Reuired"
                AlternateText="Required" />
            <asp:RequiredFieldValidator ID="valNameRequired" runat="server" ControlToValidate="txtTitle"
                Display="Dynamic" resourcekey="Required" CssClass="NormalRed"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="middle">
            <dnn:Label ID="plTicketDescription" runat="server"  ControlName="txtDescription" />
        </td>
        <td>
            <asp:TextBox ID="txtDescription" runat="server" width="600px" TextMode="Multiline"
                Rows="15" />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg" ToolTip="Reuired"
                AlternateText="Required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescription"
                Display="Dynamic" resourcekey="Required" CssClass="NormalRed"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <dnn:CommandButton ID="btnCreateTicket" runat="server" ResourceKey="btnCreateTicket"
                ImageUrl="~/images/add.gif" OnCommand="btnCreateTicket_Click" />
        </td>
    </tr>
</table>
