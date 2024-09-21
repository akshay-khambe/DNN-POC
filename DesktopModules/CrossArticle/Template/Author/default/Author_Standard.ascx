<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Author.ascx.cs" Inherits="Cross.Modules.Article.View.Author" %>
<asp:DataList ID="dlAuthor" runat="server"   RepeatColumns="<%#Settings_Author.General.ColCount %>" >
    <ItemTemplate>
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr align="left" valign="top">
                <td  style="white-space:nowrap">
                 <%if (Settings_Author.General.DisplayAvatar)
                      { %>
                    <asp:Image ID="imgAvatar" runat="server" ImageUrl='<%#GetAuthorAvatar(Eval("UserId").ToString(),Eval("AvatarEmail").ToString()) %>' Width="32px"
                         ImageAlign="AbsMiddle"></asp:Image>
                    <%}%>   
                        
                    <%if (Settings_Author.General.DisplayArticleCounts)
                      { %>
                    <asp:HyperLink  ID="lnkName" runat="server" Text='<%# Convert.ToString(Eval("DisplayName")) +"(" +Convert.ToString(Eval("ArticleCounts"))+")" %>'
                        Target="<%# Settings_Author.General.Target%>" NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("UserId"))) %>' />
                    <%}
                      else
                      { %>
                    <asp:HyperLink  ID="HyperLink1" runat="server" Text='<%# Convert.ToString(Eval("DisplayName")) %>'
                        Target="<%# Settings_Author.General.Target%>" NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("UserId"))) %>' />
                    <%} %>               
                    <asp:HyperLink  ID="lnkRss"  ImageUrl="~/desktopmodules/CrossArticle/Images/feed-icon-12x12.gif" runat="server" Visible="<%#Settings_Author.General.DisplayRss %>"
                        Target="_blank" NavigateUrl='<%#GetRssUrl(Convert.ToString(Eval("UserId"))) %>' />
                  
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>