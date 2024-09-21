﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ArticleListTab.ascx.cs" Inherits="Cross.Modules.Article.View.ArticleListTab" %>
<asp:Literal runat="server" ID="litTabCss"></asp:Literal>
<script type="text/javascript">
    $(function () {
        var tabsCounts = '<%=Tabs.Count%>';

        //only display jquery tabs when currently have more than 1 tabs to show
        if (parseInt(tabsCounts) > 0) {

            var divTabs = '#' + '<%=divTabs.ClientID%>';
            var heightStyle = '<%=Settings_ListTab.JqueryTab.HeightStyle%>';
            var activeMode = '<%=Settings_ListTab.JqueryTab.ActiveMode%>';
            var rotateInterval = '<%=Settings_ListTab.JqueryTab.RotateInterval%>';
            var startTab = '<%=Settings_ListTab.JqueryTab.StartTab%>';

            if (activeMode.toLowerCase() == "click") {
                $(divTabs).tabs({ event: 'click' });
                if (parseInt(startTab) < tabsCounts) {
                    $(divTabs).tabs("option", "active", startTab);
                }
            }

            if (activeMode.toLowerCase() == "hover") {
                $(divTabs).tabs({ event: 'mouseover' });
                if (parseInt(startTab) < tabsCounts) {
                    $(divTabs).tabs("option", "active", startTab);
                }
            }

            if (activeMode.toLowerCase() == "autorotate") {
                $(divTabs).tabs({ event: 'click' });

                if (parseInt(tabsCounts) > 1) {
                    i = 0; // current tab
                    //auto-rotate every n seconds
                    setInterval(function () {
                        i = (++i < parseInt(tabsCounts) ? i : 0);
                        $(divTabs).tabs("option", "active", i);
                    }, parseInt(rotateInterval) * 1000);
                }
            }
        }
    });
</script>
 <div id="divTabs" runat="server" style="width: 100%; overflow: hidden">
    <ul>
        <%if (Tabs.Count > 0)
          {%>
        <li><a href="<%# '#'+ divTab1.ClientID %>"><span>
            <%# Tabs.Count > 0?Tabs[0].Text:"Tab 1"%></span></a> </li>
        <%} %>
        <%if (Tabs.Count > 1)
          {%>
        <li><a href="<%# '#'+ divTab2.ClientID %>"><span>
            <%# Tabs.Count > 1?Tabs[1].Text:"Tab 2"%></span></a> </li>
        <%} %>
        <%if (Tabs.Count > 2)
          {%>
        <li><a href="<%# '#'+ divTab3.ClientID %>"><span>
            <%# Tabs.Count > 2?Tabs[2].Text:"Tab 3"%></span></a> </li>
        <%} %>
        <%if (Tabs.Count > 3)
          {%>
        <li><a href="<%# '#'+ divTab4.ClientID %>"><span>
            <%# Tabs.Count > 3?Tabs[3].Text:"Tab 4"%></span></a> </li>
        <%} %>
        <%if (Tabs.Count > 4)
          {%>
        <li><a href="<%# '#'+ divTab5.ClientID %>"><span>
            <%# Tabs.Count > 4?Tabs[4].Text:"Tab 5"%></span></a> </li>
        <%} %>
        <%if (Tabs.Count > 5)
          {%>
        <li><a href="<%# '#'+ divTab6.ClientID %>"><span>
            <%# Tabs.Count > 5?Tabs[5].Text:"Tab 6"%></span></a> </li>
        <%} %>
        <%if (Tabs.Count > 6)
          {%>
        <li><a href="<%# '#'+ divTab7.ClientID %>"><span>
            <%# Tabs.Count > 6?Tabs[6].Text:"Tab7"%></span></a> </li>
        <%} %>
        <%if (Tabs.Count > 7)
          {%>
        <li><a href="<%# '#'+ divTab8.ClientID %>"><span>
            <%# Tabs.Count > 7?Tabs[7].Text:"Tab 8"%></span></a> </li>
        <%} %>
    </ul>
     <%if (Tabs.Count > 0)
      {%>
    <div id="divTab1" runat="server" style="height: 100%">
         <asp:DataList ID="dlArticle1" runat="server" RepeatColumns="<%#Settings_ListTab.General.ColCount %>"
                RepeatDirection="Horizontal" RepeatLayout="table" Width="100%" 
                OnItemDataBound="dlArticle1_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false">
                    </asp:Label>
                    <table  border="0" cellpadding="0" cellspacing="1">
                        <tr align="left">
                            <%if (Settings_ListTab.Image.ShowImage)
                              { %>
                            <td>
                                <asp:HyperLink ID="hlImage" runat="server" NavigateUrl='<%# GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title")))%>'
                                    Target="<%#Settings_ListTab.General.LinkTarget%>" 
                                    Title='<%#Convert.ToString(Eval("Title")) %>'>
                                    <%if (Settings_ListTab.Image.ForceImageWidth && Settings_ListTab.Image.ForceImageHeight)
                                      { %>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>' BorderStyle="Solid"
                                        BorderWidth="1" BorderColor="DarkGray" ID='imgArticle' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageWidth)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image1' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageHeight)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image2' ImageAlign="Left" />
                                    <% }
                                      else
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                        BorderColor="DarkGray" ID='Image3' ImageAlign="Left" />
                                    <%} %>
                                </asp:HyperLink>
                            </td>
                            <%} %>
                            <td align="left" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgPrefix" runat="server" ImageUrl='<%#GetPrefixImage() %>' Visible="<%#Settings_ListTab.Image.ShowPrefixImage &&!Settings_ListTab.Image.ShowImage%>"
                                                ImageAlign="Middle" />
                                            <%if (Settings_ListTab.Content.ShowFeaturedField)
                                              { %>
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/hot.jpg"
                                                Visible='<%#Convert.ToBoolean(Eval("Featured")) %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowTitle)
                                              { %>
                                            <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                                 Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowPublishDate)
                                              { %>
                                            <asp:Label ID="Label3" runat="server" Text='<%# "("+Convert.ToDateTime( Eval("PublishDate")).ToShortDateString()+")"%>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRecommend)
                                              { %>
                                            <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/up.gif" />
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UpVotes") %>' />&nbsp;
                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/down.gif" />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DownVotes") %>' />&nbsp;
                                            <%} %>
                                        </td>
                                    </tr>
                                    <%if (Settings_ListTab.Content.ShowUserName)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblUserName" runat="server" resourcekey="lblUserName" />
                                            <asp:HyperLink ID="hlUserName" runat="server" Text='<%# Eval("UserName") %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <%} %>

                                      <%if (Settings_ListTab.Content.ShowAuthorCompany)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAuthorCompany" runat="server" resourcekey="lblAuthorCompany" />
                                            <asp:HyperLink ID="hlAuthorCompany" runat="server" Text='<%# GetAuthorCompany(Convert.ToString(Eval("UserId"))) %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                        </td>
                                    </tr>
                                    <%} %>

                                    <tr align="left">
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowAuthor && CurrentType.FieldEnable_Author)
                                              { %>
                                            <asp:Label ID="lblAuthor" runat="server" resourcekey="lblAuthor" />
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowSource && CurrentType.FieldEnable_Source)
                                              { %>
                                            <asp:Label ID="lblSource" runat="server" resourcekey="lblSource" />
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Source") %>' />
                                            <%} %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowViews)
                                              { %>
                                            <asp:Label ID="lblViews" runat="server" resourcekey="lblViews" />
                                            <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRating)
                                              { %>
                                            <asp:Image ID="imgRating" runat="server" ImageUrl='<%#GetRatingImage(Convert.ToString(Eval("Id"))) %>'>
                                            </asp:Image>
                                            <%} %>
                                        </td>
                                    </tr>

                                            <%if (Settings_ListTab.Content.ShowLocation_Country && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCountry" runat="server" resourcekey="lblCountry" />
                                            <asp:Label ID="lblCountryData" runat="server" Text='<%#Eval("Country") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                      <%if (Settings_ListTab.Content.ShowLocation_State && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblState" runat="server" resourcekey="lblState" />
                                            <asp:Label ID="lblStateData" runat="server" Text='<%#Eval("State") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                             <%if (Settings_ListTab.Content.ShowLocation_City && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCity" runat="server" resourcekey="lblCity" />
                                            <asp:Label ID="lblCityData" runat="server" Text='<%#Eval("City") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                           <%if (Settings_ListTab.Content.ShowLocation_Town && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTown" runat="server" resourcekey="lblTown" />
                                            <asp:Label ID="lblTownData" runat="server" Text='<%#Eval("Town") %>' />   
                                        </td>
                                    </tr>
                                       <%} %>

                                  
                                    <%if (Settings_ListTab.Content.ShowSummary && CurrentType.FieldEnable_Summary)
                                      { %>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;<asp:Label ID="SummaryLabel" runat="server" Text='<%# GetShortenSummary(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Summary"))) %>'>
                                            </asp:Label>
                                        </td>
                                    </tr>
                                    <%} %>
                                    <tr>
                                        <td>
                                            <table runat="server" id="tblUserDefinedField" width="100%" border="0" cellspacing="0"
                                                cellpadding="0" class="Normal" align="left">
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
    <%} %>

       <%if (Tabs.Count > 1)
      {%>
    <div id="divTab2" runat="server" style="height: 100%">
         <asp:DataList ID="dlArticle2" runat="server" RepeatColumns="<%#Settings_ListTab.General.ColCount %>"
                RepeatDirection="Horizontal" RepeatLayout="table" Width="100%" 
                OnItemDataBound="dlArticle2_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false">
                    </asp:Label>
                    <table  border="0" cellpadding="0" cellspacing="1">
                        <tr align="left">
                            <%if (Settings_ListTab.Image.ShowImage)
                              { %>
                            <td>
                                <asp:HyperLink ID="hlImage" runat="server" NavigateUrl='<%# GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title")))%>'
                                    Target="<%#Settings_ListTab.General.LinkTarget%>" 
                                    Title='<%#Convert.ToString(Eval("Title")) %>'>
                                    <%if (Settings_ListTab.Image.ForceImageWidth && Settings_ListTab.Image.ForceImageHeight)
                                      { %>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>' BorderStyle="Solid"
                                        BorderWidth="1" BorderColor="DarkGray" ID='imgArticle' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageWidth)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image1' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageHeight)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image2' ImageAlign="Left" />
                                    <% }
                                      else
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                        BorderColor="DarkGray" ID='Image3' ImageAlign="Left" />
                                    <%} %>
                                </asp:HyperLink>
                            </td>
                            <%} %>
                            <td align="left" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgPrefix" runat="server" ImageUrl='<%#GetPrefixImage() %>' Visible="<%#Settings_ListTab.Image.ShowPrefixImage &&!Settings_ListTab.Image.ShowImage%>"
                                                ImageAlign="Middle" />
                                            <%if (Settings_ListTab.Content.ShowFeaturedField)
                                              { %>
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/hot.jpg"
                                                Visible='<%#Convert.ToBoolean(Eval("Featured")) %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowTitle)
                                              { %>
                                            <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                                 Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowPublishDate)
                                              { %>
                                            <asp:Label ID="Label3" runat="server" Text='<%# "("+Convert.ToDateTime( Eval("PublishDate")).ToShortDateString()+")"%>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRecommend)
                                              { %>
                                            <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/up.gif" />
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UpVotes") %>' />&nbsp;
                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/down.gif" />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DownVotes") %>' />&nbsp;
                                            <%} %>
                                        </td>
                                    </tr>
                                    <%if (Settings_ListTab.Content.ShowUserName)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblUserName" runat="server" resourcekey="lblUserName" />
                                            <asp:HyperLink ID="hlUserName" runat="server" Text='<%# Eval("UserName") %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <%} %>

                                      <%if (Settings_ListTab.Content.ShowAuthorCompany)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAuthorCompany" runat="server" resourcekey="lblAuthorCompany" />
                                            <asp:HyperLink ID="hlAuthorCompany" runat="server" Text='<%# GetAuthorCompany(Convert.ToString(Eval("UserId"))) %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                        </td>
                                    </tr>
                                    <%} %>

                                    <tr align="left">
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowAuthor && CurrentType.FieldEnable_Author)
                                              { %>
                                            <asp:Label ID="lblAuthor" runat="server" resourcekey="lblAuthor" />
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowSource && CurrentType.FieldEnable_Source)
                                              { %>
                                            <asp:Label ID="lblSource" runat="server" resourcekey="lblSource" />
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Source") %>' />
                                            <%} %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowViews)
                                              { %>
                                            <asp:Label ID="lblViews" runat="server" resourcekey="lblViews" />
                                            <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRating)
                                              { %>
                                            <asp:Image ID="imgRating" runat="server" ImageUrl='<%#GetRatingImage(Convert.ToString(Eval("Id"))) %>'>
                                            </asp:Image>
                                            <%} %>
                                        </td>
                                    </tr>

                                            <%if (Settings_ListTab.Content.ShowLocation_Country && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCountry" runat="server" resourcekey="lblCountry" />
                                            <asp:Label ID="lblCountryData" runat="server" Text='<%#Eval("Country") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                      <%if (Settings_ListTab.Content.ShowLocation_State && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblState" runat="server" resourcekey="lblState" />
                                            <asp:Label ID="lblStateData" runat="server" Text='<%#Eval("State") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                             <%if (Settings_ListTab.Content.ShowLocation_City && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCity" runat="server" resourcekey="lblCity" />
                                            <asp:Label ID="lblCityData" runat="server" Text='<%#Eval("City") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                           <%if (Settings_ListTab.Content.ShowLocation_Town && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTown" runat="server" resourcekey="lblTown" />
                                            <asp:Label ID="lblTownData" runat="server" Text='<%#Eval("Town") %>' />   
                                        </td>
                                    </tr>
                                       <%} %>

                                  
                                    <%if (Settings_ListTab.Content.ShowSummary && CurrentType.FieldEnable_Summary)
                                      { %>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;<asp:Label ID="SummaryLabel" runat="server" Text='<%# GetShortenSummary(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Summary"))) %>'>
                                            </asp:Label>
                                        </td>
                                    </tr>
                                    <%} %>
                                    <tr>
                                        <td>
                                            <table runat="server" id="tblUserDefinedField" width="100%" border="0" cellspacing="0"
                                                cellpadding="0" class="Normal" align="left">
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
    <%} %>

       <%if (Tabs.Count > 2)
      {%>
    <div id="divTab3" runat="server" style="height: 100%">
         <asp:DataList ID="dlArticle3" runat="server" RepeatColumns="<%#Settings_ListTab.General.ColCount %>"
                RepeatDirection="Horizontal" RepeatLayout="table" Width="100%" 
                OnItemDataBound="dlArticle3_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false">
                    </asp:Label>
                    <table  border="0" cellpadding="0" cellspacing="1">
                        <tr align="left">
                            <%if (Settings_ListTab.Image.ShowImage)
                              { %>
                            <td>
                                <asp:HyperLink ID="hlImage" runat="server" NavigateUrl='<%# GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title")))%>'
                                    Target="<%#Settings_ListTab.General.LinkTarget%>" 
                                    Title='<%#Convert.ToString(Eval("Title")) %>'>
                                    <%if (Settings_ListTab.Image.ForceImageWidth && Settings_ListTab.Image.ForceImageHeight)
                                      { %>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>' BorderStyle="Solid"
                                        BorderWidth="1" BorderColor="DarkGray" ID='imgArticle' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageWidth)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image1' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageHeight)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image2' ImageAlign="Left" />
                                    <% }
                                      else
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                        BorderColor="DarkGray" ID='Image3' ImageAlign="Left" />
                                    <%} %>
                                </asp:HyperLink>
                            </td>
                            <%} %>
                            <td align="left" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgPrefix" runat="server" ImageUrl='<%#GetPrefixImage() %>' Visible="<%#Settings_ListTab.Image.ShowPrefixImage &&!Settings_ListTab.Image.ShowImage%>"
                                                ImageAlign="Middle" />
                                            <%if (Settings_ListTab.Content.ShowFeaturedField)
                                              { %>
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/hot.jpg"
                                                Visible='<%#Convert.ToBoolean(Eval("Featured")) %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowTitle)
                                              { %>
                                            <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                                 Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowPublishDate)
                                              { %>
                                            <asp:Label ID="Label3" runat="server" Text='<%# "("+Convert.ToDateTime( Eval("PublishDate")).ToShortDateString()+")"%>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRecommend)
                                              { %>
                                            <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/up.gif" />
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UpVotes") %>' />&nbsp;
                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/down.gif" />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DownVotes") %>' />&nbsp;
                                            <%} %>
                                        </td>
                                    </tr>
                                    <%if (Settings_ListTab.Content.ShowUserName)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblUserName" runat="server" resourcekey="lblUserName" />
                                            <asp:HyperLink ID="hlUserName" runat="server" Text='<%# Eval("UserName") %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <%} %>

                                      <%if (Settings_ListTab.Content.ShowAuthorCompany)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAuthorCompany" runat="server" resourcekey="lblAuthorCompany" />
                                            <asp:HyperLink ID="hlAuthorCompany" runat="server" Text='<%# GetAuthorCompany(Convert.ToString(Eval("UserId"))) %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                        </td>
                                    </tr>
                                    <%} %>

                                    <tr align="left">
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowAuthor && CurrentType.FieldEnable_Author)
                                              { %>
                                            <asp:Label ID="lblAuthor" runat="server" resourcekey="lblAuthor" />
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowSource && CurrentType.FieldEnable_Source)
                                              { %>
                                            <asp:Label ID="lblSource" runat="server" resourcekey="lblSource" />
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Source") %>' />
                                            <%} %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowViews)
                                              { %>
                                            <asp:Label ID="lblViews" runat="server" resourcekey="lblViews" />
                                            <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRating)
                                              { %>
                                            <asp:Image ID="imgRating" runat="server" ImageUrl='<%#GetRatingImage(Convert.ToString(Eval("Id"))) %>'>
                                            </asp:Image>
                                            <%} %>
                                        </td>
                                    </tr>

                                            <%if (Settings_ListTab.Content.ShowLocation_Country && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCountry" runat="server" resourcekey="lblCountry" />
                                            <asp:Label ID="lblCountryData" runat="server" Text='<%#Eval("Country") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                      <%if (Settings_ListTab.Content.ShowLocation_State && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblState" runat="server" resourcekey="lblState" />
                                            <asp:Label ID="lblStateData" runat="server" Text='<%#Eval("State") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                             <%if (Settings_ListTab.Content.ShowLocation_City && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCity" runat="server" resourcekey="lblCity" />
                                            <asp:Label ID="lblCityData" runat="server" Text='<%#Eval("City") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                           <%if (Settings_ListTab.Content.ShowLocation_Town && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTown" runat="server" resourcekey="lblTown" />
                                            <asp:Label ID="lblTownData" runat="server" Text='<%#Eval("Town") %>' />   
                                        </td>
                                    </tr>
                                       <%} %>

                                  
                                    <%if (Settings_ListTab.Content.ShowSummary && CurrentType.FieldEnable_Summary)
                                      { %>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;<asp:Label ID="SummaryLabel" runat="server" Text='<%# GetShortenSummary(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Summary"))) %>'>
                                            </asp:Label>
                                        </td>
                                    </tr>
                                    <%} %>
                                    <tr>
                                        <td>
                                            <table runat="server" id="tblUserDefinedField" width="100%" border="0" cellspacing="0"
                                                cellpadding="0" class="Normal" align="left">
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
    <%} %>

       <%if (Tabs.Count > 3)
      {%>
    <div id="divTab4" runat="server" style="height: 100%">
         <asp:DataList ID="dlArticle4" runat="server" RepeatColumns="<%#Settings_ListTab.General.ColCount %>"
                RepeatDirection="Horizontal" RepeatLayout="table" Width="100%" 
                OnItemDataBound="dlArticle4_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false">
                    </asp:Label>
                    <table  border="0" cellpadding="0" cellspacing="1">
                        <tr align="left">
                            <%if (Settings_ListTab.Image.ShowImage)
                              { %>
                            <td>
                                <asp:HyperLink ID="hlImage" runat="server" NavigateUrl='<%# GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title")))%>'
                                    Target="<%#Settings_ListTab.General.LinkTarget%>" 
                                    Title='<%#Convert.ToString(Eval("Title")) %>'>
                                    <%if (Settings_ListTab.Image.ForceImageWidth && Settings_ListTab.Image.ForceImageHeight)
                                      { %>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>' BorderStyle="Solid"
                                        BorderWidth="1" BorderColor="DarkGray" ID='imgArticle' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageWidth)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image1' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageHeight)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image2' ImageAlign="Left" />
                                    <% }
                                      else
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                        BorderColor="DarkGray" ID='Image3' ImageAlign="Left" />
                                    <%} %>
                                </asp:HyperLink>
                            </td>
                            <%} %>
                            <td align="left" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgPrefix" runat="server" ImageUrl='<%#GetPrefixImage() %>' Visible="<%#Settings_ListTab.Image.ShowPrefixImage &&!Settings_ListTab.Image.ShowImage%>"
                                                ImageAlign="Middle" />
                                            <%if (Settings_ListTab.Content.ShowFeaturedField)
                                              { %>
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/hot.jpg"
                                                Visible='<%#Convert.ToBoolean(Eval("Featured")) %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowTitle)
                                              { %>
                                            <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                                 Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowPublishDate)
                                              { %>
                                            <asp:Label ID="Label3" runat="server" Text='<%# "("+Convert.ToDateTime( Eval("PublishDate")).ToShortDateString()+")"%>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRecommend)
                                              { %>
                                            <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/up.gif" />
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UpVotes") %>' />&nbsp;
                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/down.gif" />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DownVotes") %>' />&nbsp;
                                            <%} %>
                                        </td>
                                    </tr>
                                    <%if (Settings_ListTab.Content.ShowUserName)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblUserName" runat="server" resourcekey="lblUserName" />
                                            <asp:HyperLink ID="hlUserName" runat="server" Text='<%# Eval("UserName") %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <%} %>

                                      <%if (Settings_ListTab.Content.ShowAuthorCompany)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAuthorCompany" runat="server" resourcekey="lblAuthorCompany" />
                                            <asp:HyperLink ID="hlAuthorCompany" runat="server" Text='<%# GetAuthorCompany(Convert.ToString(Eval("UserId"))) %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                        </td>
                                    </tr>
                                    <%} %>

                                    <tr align="left">
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowAuthor && CurrentType.FieldEnable_Author)
                                              { %>
                                            <asp:Label ID="lblAuthor" runat="server" resourcekey="lblAuthor" />
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowSource && CurrentType.FieldEnable_Source)
                                              { %>
                                            <asp:Label ID="lblSource" runat="server" resourcekey="lblSource" />
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Source") %>' />
                                            <%} %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowViews)
                                              { %>
                                            <asp:Label ID="lblViews" runat="server" resourcekey="lblViews" />
                                            <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRating)
                                              { %>
                                            <asp:Image ID="imgRating" runat="server" ImageUrl='<%#GetRatingImage(Convert.ToString(Eval("Id"))) %>'>
                                            </asp:Image>
                                            <%} %>
                                        </td>
                                    </tr>

                                            <%if (Settings_ListTab.Content.ShowLocation_Country && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCountry" runat="server" resourcekey="lblCountry" />
                                            <asp:Label ID="lblCountryData" runat="server" Text='<%#Eval("Country") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                      <%if (Settings_ListTab.Content.ShowLocation_State && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblState" runat="server" resourcekey="lblState" />
                                            <asp:Label ID="lblStateData" runat="server" Text='<%#Eval("State") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                             <%if (Settings_ListTab.Content.ShowLocation_City && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCity" runat="server" resourcekey="lblCity" />
                                            <asp:Label ID="lblCityData" runat="server" Text='<%#Eval("City") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                           <%if (Settings_ListTab.Content.ShowLocation_Town && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTown" runat="server" resourcekey="lblTown" />
                                            <asp:Label ID="lblTownData" runat="server" Text='<%#Eval("Town") %>' />   
                                        </td>
                                    </tr>
                                       <%} %>

                                  
                                    <%if (Settings_ListTab.Content.ShowSummary && CurrentType.FieldEnable_Summary)
                                      { %>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;<asp:Label ID="SummaryLabel" runat="server" Text='<%# GetShortenSummary(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Summary"))) %>'>
                                            </asp:Label>
                                        </td>
                                    </tr>
                                    <%} %>
                                    <tr>
                                        <td>
                                            <table runat="server" id="tblUserDefinedField" width="100%" border="0" cellspacing="0"
                                                cellpadding="0" class="Normal" align="left">
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
    <%} %>

       <%if (Tabs.Count > 4)
      {%>
    <div id="divTab5" runat="server" style="height: 100%">
         <asp:DataList ID="dlArticle5" runat="server" RepeatColumns="<%#Settings_ListTab.General.ColCount %>"
                RepeatDirection="Horizontal" RepeatLayout="table" Width="100%" 
                OnItemDataBound="dlArticle5_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false">
                    </asp:Label>
                    <table  border="0" cellpadding="0" cellspacing="1">
                        <tr align="left">
                            <%if (Settings_ListTab.Image.ShowImage)
                              { %>
                            <td>
                                <asp:HyperLink ID="hlImage" runat="server" NavigateUrl='<%# GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title")))%>'
                                    Target="<%#Settings_ListTab.General.LinkTarget%>" 
                                    Title='<%#Convert.ToString(Eval("Title")) %>'>
                                    <%if (Settings_ListTab.Image.ForceImageWidth && Settings_ListTab.Image.ForceImageHeight)
                                      { %>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>' BorderStyle="Solid"
                                        BorderWidth="1" BorderColor="DarkGray" ID='imgArticle' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageWidth)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image1' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageHeight)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image2' ImageAlign="Left" />
                                    <% }
                                      else
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                        BorderColor="DarkGray" ID='Image3' ImageAlign="Left" />
                                    <%} %>
                                </asp:HyperLink>
                            </td>
                            <%} %>
                            <td align="left" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgPrefix" runat="server" ImageUrl='<%#GetPrefixImage() %>' Visible="<%#Settings_ListTab.Image.ShowPrefixImage &&!Settings_ListTab.Image.ShowImage%>"
                                                ImageAlign="Middle" />
                                            <%if (Settings_ListTab.Content.ShowFeaturedField)
                                              { %>
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/hot.jpg"
                                                Visible='<%#Convert.ToBoolean(Eval("Featured")) %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowTitle)
                                              { %>
                                            <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                                 Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowPublishDate)
                                              { %>
                                            <asp:Label ID="Label3" runat="server" Text='<%# "("+Convert.ToDateTime( Eval("PublishDate")).ToShortDateString()+")"%>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRecommend)
                                              { %>
                                            <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/up.gif" />
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UpVotes") %>' />&nbsp;
                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/down.gif" />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DownVotes") %>' />&nbsp;
                                            <%} %>
                                        </td>
                                    </tr>
                                    <%if (Settings_ListTab.Content.ShowUserName)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblUserName" runat="server" resourcekey="lblUserName" />
                                            <asp:HyperLink ID="hlUserName" runat="server" Text='<%# Eval("UserName") %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <%} %>

                                      <%if (Settings_ListTab.Content.ShowAuthorCompany)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAuthorCompany" runat="server" resourcekey="lblAuthorCompany" />
                                            <asp:HyperLink ID="hlAuthorCompany" runat="server" Text='<%# GetAuthorCompany(Convert.ToString(Eval("UserId"))) %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                        </td>
                                    </tr>
                                    <%} %>

                                    <tr align="left">
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowAuthor && CurrentType.FieldEnable_Author)
                                              { %>
                                            <asp:Label ID="lblAuthor" runat="server" resourcekey="lblAuthor" />
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowSource && CurrentType.FieldEnable_Source)
                                              { %>
                                            <asp:Label ID="lblSource" runat="server" resourcekey="lblSource" />
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Source") %>' />
                                            <%} %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowViews)
                                              { %>
                                            <asp:Label ID="lblViews" runat="server" resourcekey="lblViews" />
                                            <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRating)
                                              { %>
                                            <asp:Image ID="imgRating" runat="server" ImageUrl='<%#GetRatingImage(Convert.ToString(Eval("Id"))) %>'>
                                            </asp:Image>
                                            <%} %>
                                        </td>
                                    </tr>

                                            <%if (Settings_ListTab.Content.ShowLocation_Country && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCountry" runat="server" resourcekey="lblCountry" />
                                            <asp:Label ID="lblCountryData" runat="server" Text='<%#Eval("Country") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                      <%if (Settings_ListTab.Content.ShowLocation_State && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblState" runat="server" resourcekey="lblState" />
                                            <asp:Label ID="lblStateData" runat="server" Text='<%#Eval("State") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                             <%if (Settings_ListTab.Content.ShowLocation_City && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCity" runat="server" resourcekey="lblCity" />
                                            <asp:Label ID="lblCityData" runat="server" Text='<%#Eval("City") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                           <%if (Settings_ListTab.Content.ShowLocation_Town && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTown" runat="server" resourcekey="lblTown" />
                                            <asp:Label ID="lblTownData" runat="server" Text='<%#Eval("Town") %>' />   
                                        </td>
                                    </tr>
                                       <%} %>

                                  
                                    <%if (Settings_ListTab.Content.ShowSummary && CurrentType.FieldEnable_Summary)
                                      { %>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;<asp:Label ID="SummaryLabel" runat="server" Text='<%# GetShortenSummary(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Summary"))) %>'>
                                            </asp:Label>
                                        </td>
                                    </tr>
                                    <%} %>
                                    <tr>
                                        <td>
                                            <table runat="server" id="tblUserDefinedField" width="100%" border="0" cellspacing="0"
                                                cellpadding="0" class="Normal" align="left">
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
    <%} %>

       <%if (Tabs.Count > 5)
      {%>
    <div id="divTab6" runat="server" style="height: 100%">
         <asp:DataList ID="dlArticle6" runat="server" RepeatColumns="<%#Settings_ListTab.General.ColCount %>"
                RepeatDirection="Horizontal" RepeatLayout="table" Width="100%" 
                OnItemDataBound="dlArticle6_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false">
                    </asp:Label>
                    <table  border="0" cellpadding="0" cellspacing="1">
                        <tr align="left">
                            <%if (Settings_ListTab.Image.ShowImage)
                              { %>
                            <td>
                                <asp:HyperLink ID="hlImage" runat="server" NavigateUrl='<%# GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title")))%>'
                                    Target="<%#Settings_ListTab.General.LinkTarget%>" 
                                    Title='<%#Convert.ToString(Eval("Title")) %>'>
                                    <%if (Settings_ListTab.Image.ForceImageWidth && Settings_ListTab.Image.ForceImageHeight)
                                      { %>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>' BorderStyle="Solid"
                                        BorderWidth="1" BorderColor="DarkGray" ID='imgArticle' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageWidth)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image1' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageHeight)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image2' ImageAlign="Left" />
                                    <% }
                                      else
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                        BorderColor="DarkGray" ID='Image3' ImageAlign="Left" />
                                    <%} %>
                                </asp:HyperLink>
                            </td>
                            <%} %>
                            <td align="left" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgPrefix" runat="server" ImageUrl='<%#GetPrefixImage() %>' Visible="<%#Settings_ListTab.Image.ShowPrefixImage &&!Settings_ListTab.Image.ShowImage%>"
                                                ImageAlign="Middle" />
                                            <%if (Settings_ListTab.Content.ShowFeaturedField)
                                              { %>
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/hot.jpg"
                                                Visible='<%#Convert.ToBoolean(Eval("Featured")) %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowTitle)
                                              { %>
                                            <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                                 Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowPublishDate)
                                              { %>
                                            <asp:Label ID="Label3" runat="server" Text='<%# "("+Convert.ToDateTime( Eval("PublishDate")).ToShortDateString()+")"%>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRecommend)
                                              { %>
                                            <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/up.gif" />
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UpVotes") %>' />&nbsp;
                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/down.gif" />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DownVotes") %>' />&nbsp;
                                            <%} %>
                                        </td>
                                    </tr>
                                    <%if (Settings_ListTab.Content.ShowUserName)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblUserName" runat="server" resourcekey="lblUserName" />
                                            <asp:HyperLink ID="hlUserName" runat="server" Text='<%# Eval("UserName") %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <%} %>

                                      <%if (Settings_ListTab.Content.ShowAuthorCompany)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAuthorCompany" runat="server" resourcekey="lblAuthorCompany" />
                                            <asp:HyperLink ID="hlAuthorCompany" runat="server" Text='<%# GetAuthorCompany(Convert.ToString(Eval("UserId"))) %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                        </td>
                                    </tr>
                                    <%} %>

                                    <tr align="left">
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowAuthor && CurrentType.FieldEnable_Author)
                                              { %>
                                            <asp:Label ID="lblAuthor" runat="server" resourcekey="lblAuthor" />
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowSource && CurrentType.FieldEnable_Source)
                                              { %>
                                            <asp:Label ID="lblSource" runat="server" resourcekey="lblSource" />
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Source") %>' />
                                            <%} %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowViews)
                                              { %>
                                            <asp:Label ID="lblViews" runat="server" resourcekey="lblViews" />
                                            <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRating)
                                              { %>
                                            <asp:Image ID="imgRating" runat="server" ImageUrl='<%#GetRatingImage(Convert.ToString(Eval("Id"))) %>'>
                                            </asp:Image>
                                            <%} %>
                                        </td>
                                    </tr>

                                            <%if (Settings_ListTab.Content.ShowLocation_Country && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCountry" runat="server" resourcekey="lblCountry" />
                                            <asp:Label ID="lblCountryData" runat="server" Text='<%#Eval("Country") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                      <%if (Settings_ListTab.Content.ShowLocation_State && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblState" runat="server" resourcekey="lblState" />
                                            <asp:Label ID="lblStateData" runat="server" Text='<%#Eval("State") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                             <%if (Settings_ListTab.Content.ShowLocation_City && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCity" runat="server" resourcekey="lblCity" />
                                            <asp:Label ID="lblCityData" runat="server" Text='<%#Eval("City") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                           <%if (Settings_ListTab.Content.ShowLocation_Town && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTown" runat="server" resourcekey="lblTown" />
                                            <asp:Label ID="lblTownData" runat="server" Text='<%#Eval("Town") %>' />   
                                        </td>
                                    </tr>
                                       <%} %>

                                  
                                    <%if (Settings_ListTab.Content.ShowSummary && CurrentType.FieldEnable_Summary)
                                      { %>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;<asp:Label ID="SummaryLabel" runat="server" Text='<%# GetShortenSummary(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Summary"))) %>'>
                                            </asp:Label>
                                        </td>
                                    </tr>
                                    <%} %>
                                    <tr>
                                        <td>
                                            <table runat="server" id="tblUserDefinedField" width="100%" border="0" cellspacing="0"
                                                cellpadding="0" class="Normal" align="left">
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
    <%} %>

       <%if (Tabs.Count > 6)
      {%>
    <div id="divTab7" runat="server" style="height: 100%">
         <asp:DataList ID="dlArticle7" runat="server" RepeatColumns="<%#Settings_ListTab.General.ColCount %>"
                RepeatDirection="Horizontal" RepeatLayout="table" Width="100%" 
                OnItemDataBound="dlArticle7_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false">
                    </asp:Label>
                    <table  border="0" cellpadding="0" cellspacing="1">
                        <tr align="left">
                            <%if (Settings_ListTab.Image.ShowImage)
                              { %>
                            <td>
                                <asp:HyperLink ID="hlImage" runat="server" NavigateUrl='<%# GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title")))%>'
                                    Target="<%#Settings_ListTab.General.LinkTarget%>" 
                                    Title='<%#Convert.ToString(Eval("Title")) %>'>
                                    <%if (Settings_ListTab.Image.ForceImageWidth && Settings_ListTab.Image.ForceImageHeight)
                                      { %>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>' BorderStyle="Solid"
                                        BorderWidth="1" BorderColor="DarkGray" ID='imgArticle' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageWidth)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image1' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageHeight)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image2' ImageAlign="Left" />
                                    <% }
                                      else
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                        BorderColor="DarkGray" ID='Image3' ImageAlign="Left" />
                                    <%} %>
                                </asp:HyperLink>
                            </td>
                            <%} %>
                            <td align="left" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgPrefix" runat="server" ImageUrl='<%#GetPrefixImage() %>' Visible="<%#Settings_ListTab.Image.ShowPrefixImage &&!Settings_ListTab.Image.ShowImage%>"
                                                ImageAlign="Middle" />
                                            <%if (Settings_ListTab.Content.ShowFeaturedField)
                                              { %>
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/hot.jpg"
                                                Visible='<%#Convert.ToBoolean(Eval("Featured")) %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowTitle)
                                              { %>
                                            <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                                 Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowPublishDate)
                                              { %>
                                            <asp:Label ID="Label3" runat="server" Text='<%# "("+Convert.ToDateTime( Eval("PublishDate")).ToShortDateString()+")"%>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRecommend)
                                              { %>
                                            <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/up.gif" />
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UpVotes") %>' />&nbsp;
                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/down.gif" />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DownVotes") %>' />&nbsp;
                                            <%} %>
                                        </td>
                                    </tr>
                                    <%if (Settings_ListTab.Content.ShowUserName)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblUserName" runat="server" resourcekey="lblUserName" />
                                            <asp:HyperLink ID="hlUserName" runat="server" Text='<%# Eval("UserName") %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <%} %>

                                      <%if (Settings_ListTab.Content.ShowAuthorCompany)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAuthorCompany" runat="server" resourcekey="lblAuthorCompany" />
                                            <asp:HyperLink ID="hlAuthorCompany" runat="server" Text='<%# GetAuthorCompany(Convert.ToString(Eval("UserId"))) %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                        </td>
                                    </tr>
                                    <%} %>

                                    <tr align="left">
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowAuthor && CurrentType.FieldEnable_Author)
                                              { %>
                                            <asp:Label ID="lblAuthor" runat="server" resourcekey="lblAuthor" />
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowSource && CurrentType.FieldEnable_Source)
                                              { %>
                                            <asp:Label ID="lblSource" runat="server" resourcekey="lblSource" />
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Source") %>' />
                                            <%} %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowViews)
                                              { %>
                                            <asp:Label ID="lblViews" runat="server" resourcekey="lblViews" />
                                            <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRating)
                                              { %>
                                            <asp:Image ID="imgRating" runat="server" ImageUrl='<%#GetRatingImage(Convert.ToString(Eval("Id"))) %>'>
                                            </asp:Image>
                                            <%} %>
                                        </td>
                                    </tr>

                                            <%if (Settings_ListTab.Content.ShowLocation_Country && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCountry" runat="server" resourcekey="lblCountry" />
                                            <asp:Label ID="lblCountryData" runat="server" Text='<%#Eval("Country") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                      <%if (Settings_ListTab.Content.ShowLocation_State && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblState" runat="server" resourcekey="lblState" />
                                            <asp:Label ID="lblStateData" runat="server" Text='<%#Eval("State") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                             <%if (Settings_ListTab.Content.ShowLocation_City && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCity" runat="server" resourcekey="lblCity" />
                                            <asp:Label ID="lblCityData" runat="server" Text='<%#Eval("City") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                           <%if (Settings_ListTab.Content.ShowLocation_Town && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTown" runat="server" resourcekey="lblTown" />
                                            <asp:Label ID="lblTownData" runat="server" Text='<%#Eval("Town") %>' />   
                                        </td>
                                    </tr>
                                       <%} %>

                                  
                                    <%if (Settings_ListTab.Content.ShowSummary && CurrentType.FieldEnable_Summary)
                                      { %>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;<asp:Label ID="SummaryLabel" runat="server" Text='<%# GetShortenSummary(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Summary"))) %>'>
                                            </asp:Label>
                                        </td>
                                    </tr>
                                    <%} %>
                                    <tr>
                                        <td>
                                            <table runat="server" id="tblUserDefinedField" width="100%" border="0" cellspacing="0"
                                                cellpadding="0" class="Normal" align="left">
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
    <%} %>

       <%if (Tabs.Count > 7)
      {%>
    <div id="divTab8" runat="server" style="height: 100%">
         <asp:DataList ID="dlArticle8" runat="server" RepeatColumns="<%#Settings_ListTab.General.ColCount %>"
                RepeatDirection="Horizontal" RepeatLayout="table" Width="100%" 
                OnItemDataBound="dlArticle8_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false">
                    </asp:Label>
                    <table  border="0" cellpadding="0" cellspacing="1">
                        <tr align="left">
                            <%if (Settings_ListTab.Image.ShowImage)
                              { %>
                            <td>
                                <asp:HyperLink ID="hlImage" runat="server" NavigateUrl='<%# GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title")))%>'
                                    Target="<%#Settings_ListTab.General.LinkTarget%>" 
                                    Title='<%#Convert.ToString(Eval("Title")) %>'>
                                    <%if (Settings_ListTab.Image.ForceImageWidth && Settings_ListTab.Image.ForceImageHeight)
                                      { %>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>' BorderStyle="Solid"
                                        BorderWidth="1" BorderColor="DarkGray" ID='imgArticle' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageWidth)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_ListTab.Image.ImageWidth)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image1' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_ListTab.Image.ForceImageHeight)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Height='<%#Convert.ToInt32(Settings_ListTab.Image.ImageHeight)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image2' ImageAlign="Left" />
                                    <% }
                                      else
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                        BorderColor="DarkGray" ID='Image3' ImageAlign="Left" />
                                    <%} %>
                                </asp:HyperLink>
                            </td>
                            <%} %>
                            <td align="left" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgPrefix" runat="server" ImageUrl='<%#GetPrefixImage() %>' Visible="<%#Settings_ListTab.Image.ShowPrefixImage &&!Settings_ListTab.Image.ShowImage%>"
                                                ImageAlign="Middle" />
                                            <%if (Settings_ListTab.Content.ShowFeaturedField)
                                              { %>
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/hot.jpg"
                                                Visible='<%#Convert.ToBoolean(Eval("Featured")) %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowTitle)
                                              { %>
                                            <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                                 Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowPublishDate)
                                              { %>
                                            <asp:Label ID="Label3" runat="server" Text='<%# "("+Convert.ToDateTime( Eval("PublishDate")).ToShortDateString()+")"%>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRecommend)
                                              { %>
                                            <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/up.gif" />
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UpVotes") %>' />&nbsp;
                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/down.gif" />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DownVotes") %>' />&nbsp;
                                            <%} %>
                                        </td>
                                    </tr>
                                    <%if (Settings_ListTab.Content.ShowUserName)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblUserName" runat="server" resourcekey="lblUserName" />
                                            <asp:HyperLink ID="hlUserName" runat="server" Text='<%# Eval("UserName") %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <%} %>

                                      <%if (Settings_ListTab.Content.ShowAuthorCompany)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAuthorCompany" runat="server" resourcekey="lblAuthorCompany" />
                                            <asp:HyperLink ID="hlAuthorCompany" runat="server" Text='<%# GetAuthorCompany(Convert.ToString(Eval("UserId"))) %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_ListTab.General.LinkTarget%>" />
                                        </td>
                                    </tr>
                                    <%} %>

                                    <tr align="left">
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowAuthor && CurrentType.FieldEnable_Author)
                                              { %>
                                            <asp:Label ID="lblAuthor" runat="server" resourcekey="lblAuthor" />
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowSource && CurrentType.FieldEnable_Source)
                                              { %>
                                            <asp:Label ID="lblSource" runat="server" resourcekey="lblSource" />
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Source") %>' />
                                            <%} %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <%if (Settings_ListTab.Content.ShowViews)
                                              { %>
                                            <asp:Label ID="lblViews" runat="server" resourcekey="lblViews" />
                                            <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                                            <%} %>
                                            <%if (Settings_ListTab.Content.ShowRating)
                                              { %>
                                            <asp:Image ID="imgRating" runat="server" ImageUrl='<%#GetRatingImage(Convert.ToString(Eval("Id"))) %>'>
                                            </asp:Image>
                                            <%} %>
                                        </td>
                                    </tr>

                                            <%if (Settings_ListTab.Content.ShowLocation_Country && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCountry" runat="server" resourcekey="lblCountry" />
                                            <asp:Label ID="lblCountryData" runat="server" Text='<%#Eval("Country") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                      <%if (Settings_ListTab.Content.ShowLocation_State && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblState" runat="server" resourcekey="lblState" />
                                            <asp:Label ID="lblStateData" runat="server" Text='<%#Eval("State") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                             <%if (Settings_ListTab.Content.ShowLocation_City && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCity" runat="server" resourcekey="lblCity" />
                                            <asp:Label ID="lblCityData" runat="server" Text='<%#Eval("City") %>' />
                                        </td>
                                    </tr>
                                       <%} %>

                                           <%if (Settings_ListTab.Content.ShowLocation_Town && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTown" runat="server" resourcekey="lblTown" />
                                            <asp:Label ID="lblTownData" runat="server" Text='<%#Eval("Town") %>' />   
                                        </td>
                                    </tr>
                                       <%} %>

                                  
                                    <%if (Settings_ListTab.Content.ShowSummary && CurrentType.FieldEnable_Summary)
                                      { %>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;<asp:Label ID="SummaryLabel" runat="server" Text='<%# GetShortenSummary(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Summary"))) %>'>
                                            </asp:Label>
                                        </td>
                                    </tr>
                                    <%} %>
                                    <tr>
                                        <td>
                                            <table runat="server" id="tblUserDefinedField" width="100%" border="0" cellspacing="0"
                                                cellpadding="0" class="Normal" align="left">
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>
    <%} %>
    </div>         