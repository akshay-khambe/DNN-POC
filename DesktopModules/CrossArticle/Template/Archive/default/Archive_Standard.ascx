<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Archive.ascx.cs" Inherits="Cross.Modules.Article.View.Archive" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lblArchive" runat="server" CssClass="SubHead" ResourceKey="lblArchive">Archive</asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Calendar ID="calMonth" runat="server" DayHeaderStyle-CssClass="Article_Archive_DayHeader"
                DayStyle-CssClass="Article_Archive_Day" NextPrevStyle-CssClass="Article_Archive_NextPrev"
                OtherMonthDayStyle-CssClass="Article_Archive_OtherMonth" SelectedDayStyle-CssClass="Article_Archive_SelectedDay"
                SelectorStyle-CssClass="Article_Archive_Selector" TitleStyle-CssClass="Article_Archive_Title"
                TodayDayStyle-CssClass="Article_Archive_TodayDay" WeekendDayStyle-CssClass="Article_Archive_WeekendDay"
                OnSelectionChanged="calMonth_SelectionChanged" OnVisibleMonthChanged="calMonth_VisibleMonthChanged">
                <TodayDayStyle CssClass="Article_Archive_TodayDay"></TodayDayStyle>
                <SelectorStyle CssClass="Article_Archive_Selector"></SelectorStyle>
                <DayStyle CssClass="Article_Archive_Day"></DayStyle>
                <NextPrevStyle CssClass="Article_Archive_NextPrev"></NextPrevStyle>
                <DayHeaderStyle CssClass="Article_Archive_DayHeader"></DayHeaderStyle>
                <SelectedDayStyle CssClass="Article_Archive_SelectedDay"></SelectedDayStyle>
                <TitleStyle CssClass="Article_Archive_Title"></TitleStyle>
                <WeekendDayStyle CssClass="Article_Archive_WeekendDay"></WeekendDayStyle>
                <OtherMonthDayStyle CssClass="Article_Archive_OtherMonth"></OtherMonthDayStyle>
            </asp:Calendar>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblMonthly" runat="server" CssClass="SubHead" ResourceKey="lblMonthly">Monthly</asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="dlArchiveMonths" runat="server" Width="100%" CssClass="CommandButton"
                CellPadding="0" CellSpacing="0" BorderWidth="0" OnItemDataBound="dlArchiveMonths_ItemDataBound">
                <ItemTemplate>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0" align="left">
                        <tr>
                            <td align="left">
                                <asp:HyperLink runat="server" ID="lnkMonthYear" CssClass="CommandButton"></asp:HyperLink>
                            </td>
                            <td align="right">
                                <asp:HyperLink ImageUrl="~/desktopmodules/CrossArticle/Images/feed-icon-12x12.gif"
                                    CssClass="CommandButton" runat="server" ID="lnkArticleRSS" Visible="False" Target="_blank"></asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
