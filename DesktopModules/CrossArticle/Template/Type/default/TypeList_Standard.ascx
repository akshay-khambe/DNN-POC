<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TypeList.ascx.cs" Inherits="Cross.Modules.Article.View.TypeList" %>
<asp:DataList ID="dlType" runat="server" RepeatColumns="<%#Settings_Type.General.ColCount %>"
    RepeatDirection="Horizontal" RepeatLayout="table">
    <ItemTemplate>
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr align="left">
                <td>
                    <asp:HyperLink ID="hlImage" runat="server" Visible='<%# Settings_Type.General.ShowImage %>'
                        NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id"))) %>' Target="<%# Settings_Type.General.Target%>">
                        <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_Type.General.ImageWidth)%>'
                            Visible='<%#Settings_Type.General.ShowImage%>' BorderStyle="Solid" BorderWidth="1"
                            BorderColor="DarkGray" ID='imgType' ImageAlign="Left" /></asp:HyperLink>
                </td>
            </tr>
            <tr align="left">
                <td>
                    <%if (Settings_Type.General.ShowArticleCounts)
                      { %>
                    <asp:HyperLink ID="lnkName" runat="server" Text='<%# Convert.ToString(Eval("Name")) +"(" +Convert.ToString(Eval("ArticleCounts"))+")" %>'
                        Target="<%# Settings_Type.General.Target%>" NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id"))) %>' />
                    <%}
                      else
                      { %>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Convert.ToString(Eval("Name")) %>'
                        Target="<%# Settings_Type.General.Target%>" NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id"))) %>' />
                    <%} %>
                    <asp:HyperLink ID="lnkRss" ImageUrl="~/desktopmodules/CrossArticle/Images/feed-icon-12x12.gif"
                        runat="server" Visible="<%#Settings_Type.General.DisplayRss %>" Target="_blank"
                        NavigateUrl='<%#GetRssUrl(Convert.ToString(Eval("Id"))) %>' />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
