<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AccountLink.ascx.cs" Inherits="Cross.Modules.Article.View.AccountLink" %>

<%if (Settings_AccountLink.General.ShowArticle&&InEditRoles_CurrentUser_Article)
  { %>
<asp:HyperLink ID="hlArticle" runat="server" >
 <asp:Image ID="imgArticle" runat="server" ImageUrl="~/desktopmodules/CrossArticle/Images/article_edit_link.png"
       />
    <asp:Label ID="lblArticle" runat="server"   resourcekey="lblArticle"/>
</asp:HyperLink>
&nbsp;|&nbsp;
<%}%>


<%if (Settings_AccountLink.General.ShowAccount)
  { %>
<asp:HyperLink ID="hlAccount" runat="server">
    <asp:Image ID="imgAccount" runat="server" ImageUrl="~/desktopmodules/CrossArticle/Images/home.gif"
       />
    <asp:Label ID="lblAccount" runat="server"  resourcekey="lblAccount"/>
</asp:HyperLink>
&nbsp;|&nbsp;
<%}%>

<%if (Settings_AccountLink.General.ShowHelp && (Settings_Portal.Help.ArticleHelpTab != -1))
  { %>
<asp:HyperLink ID="hlHelp" runat="server" Target="<%# Settings_AccountLink.General.Target%>">
    <asp:Image ID="imgHelp" runat="server" ImageUrl="~/Images/action_help.gif"  />
    <asp:Label ID="lblHelp" runat="server"  resourcekey="lblHelp"/>
</asp:HyperLink>
<%}%>
