<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ArticleDetail.ascx.cs"
    Inherits="Cross.Modules.Article.View.ArticleDetail" %>
<%@ Register TagPrefix="Cross" Namespace="Cross.DNN.Common.WebControls" Assembly="Cross.Dnn.Modules.Framework" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls" %>
<style type="text/css">
    /*  css class for vote percentage*/
    .outbar
    {
        border: 1px solid #dedede;
        background: #fff;
        height: 13px;
        width: 250px;
        float: left;
    }
    .inbar
    {
        height: 13px;
        display: block;
        background: #39c;
    }
</style>
<script type="text/javascript">
  
    function initializeMap() {
        var showGoogleMap = '<%=ShowGoogleMap%>';
        if (showGoogleMap.toLowerCase() != "true") {
            return;
        }
        // initlize google map options
        var latlng = new google.maps.LatLng(parseFloat('<%=objArticle.Latitude%>'), parseFloat('<%=objArticle.Longitude%>'));

        var myOptions = {
            zoom: parseInt('<%=Settings_Detail.GoogleMap.GoogleMapZoom%>'),
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map($('#divGoogleMap')[0], myOptions);

        var marker = new google.maps.Marker({
            position: latlng,
            map: map,
            title: "<%=FormatTitle(objArticle.Title)%>"
        });
        return map;
    }

  
    $(function () {
        initializeMap();
        var tabsCounts = '<%=TabCounts%>';
        //Switch google map display
        var map = null;
        var showGoogleMap = '<%=ShowGoogleMap%>';

        //only display jquery tabs when currently have more than 1 tabs to show
        if (parseInt(tabsCounts) > 1) {
            $("#tabs").tabs();
            $("#tabs").tabs({
                activate: function (event, ui) {
                    //Get or set the active option, after initialization:
                    var currentActive = $("#tabs").tabs("option", "active");
                    //set it to a hidden field
                    $("#<%= hidLastTab.ClientID %>").attr("value", currentActive.toString());

                    if (ui.newPanel.attr('id') == 'divGoogleMap' && !map && showGoogleMap.toLowerCase() == "true") {
                        map = initializeMap();
                        google.maps.event.trigger(map, 'resize');
                    }
                }
            });

            var currTab = $("#<%= hidLastTab.ClientID %>").val();
            if (!isNaN(parseInt(currTab)))//if current value is number, then parse it as integer
            {
                currTab = parseInt(currTab);
            }

            // $("#tabs").tabs({ selected: currTab });
            $("#tabs").tabs({ active: currTab });
        }

        var showRelatedImages = '<%=ShowRelatedImage%>';

        //using fancy box plug-in to display related images as gallery when ShowRelatedImage==true
        if (showRelatedImages.toLowerCase() == "true") {

            $('.fancybox-buttons').fancybox({
                openEffect: 'none',
                closeEffect: 'none',

                prevEffect: 'none',
                nextEffect: 'none',

                closeBtn: false,

                helpers: {
                    title: {
                        type: 'inside'
                    },
                    buttons: {}
                },

                afterLoad: function () {
                    this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
                }
            });

        }

    });
</script>
<asp:HiddenField runat="server" ID="hidLastTab" Value="0" />

<table id="tblPassword" cellspacing="2" cellpadding="2" visible="false" width="100%" align="center" class="dnnFormItem"
    runat="server">
    <tr>
        <td>
            <asp:Label ID="lblPassword" runat="server" resourcekey="lblPassword"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" Width="200px"></asp:TextBox>
             <asp:Button ID="btnConfirmPassword" runat="server" resourcekey="btnConfirmPassword" CssClass="dnnPrimaryAction"
                CausesValidation="False" OnClick="btnConfirmPassword_Click"></asp:Button>&nbsp; &nbsp;
            <asp:Label ID="lblInvalidPassword" runat="server" resourcekey="lblInvalidPassword" Visible="false" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
<div runat="server" id="divContent" style="width: 100%; overflow:hidden">
<%--     Article information  table --%>
<table cellspacing="2" cellpadding="2" width="100%">
    <!--  Title -->
    <tr valign="top" align="center">
        <td colspan="2">
            <h4>
                <asp:Label ID="lblTitle" runat="server" Text="<%#objArticle.Title%>" Visible='<%#Settings_Detail.General.ShowTitle%>' /></h4>
            <%if (Settings_Detail.General.ShowSubTitle && !string.IsNullOrEmpty(objArticle.SubTitle))
              {%>
            <h6>
                <asp:Label ID="lblSubTitle" runat="server" CssClass="SubHead" Text='<%#"    - " + objArticle.SubTitle%>' />
            </h6>
            <%} %>
        </td>
    </tr>
    <!--  action button -->
    <tr align="right">
        <td colspan="2">
            <%if (Settings_Detail.General.ShowPrint)
              { %>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#" onclick="javascript:window.print();return false;" style="cursor: hand">
                <asp:Image ID="imgPrint" runat="server" ImageUrl="~/images/print.gif" />
                <asp:Label ID="lblPrint" runat="server" resourcekey="lblPrint" />
            </a>
            <%} %>
           
            <%if (Settings_Detail.General.ShowReturn)
              { %>
            <script type="text/javascript">
                if (document.referrer) {
                    var localeReturn = '<%=DotNetNuke.UI.Utilities.ClientAPI.GetSafeJSString(Localization.GetString("Return", LocalResourceFile))%>';
                    var str = document.referrer;
                    str = '&nbsp;&nbsp;&nbsp;&nbsp;<a href="' + str + '">' + localeReturn + '</a>';
                    document.write(str);
                }
            </script>
            <%} %>
            <%if (Settings_Detail.General.ShowAddWatch)
              { %>
            &nbsp;&nbsp;
            <dnn:CommandButton ID="btnAddWatch" runat="server" ResourceKey="btnAddWatch" ImageUrl="~/desktopmodules/CrossArticle/images/watch.png"
                OnCommand="btnAddWatch_Click" CausesValidation="false" />
            <asp:Label ID="lblAddSuccess" runat="server" resourcekey="lblAddSuccess" CssClass="SunHead"
                Visible="false"></asp:Label>
            <%} %>
            <%if (Settings_Detail.General.ShowAddTicket)
              { %>
            &nbsp;&nbsp;
            <dnn:CommandButton ID="btnAddTicket" runat="server" ResourceKey="btnAddTicket" ImageUrl="~/images/action_help.gif"
                OnCommand="btnAddTicket_Click" CausesValidation="false" />
            <%} %>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <hr style="border: 1px dotted #999999; size: 1" />
        </td>
    </tr>
    <!--  Creator/date/author /source/views/recommend -->
    <tr valign="top" align="left">
        <td colspan="2">
            <%if (Settings_Detail.General.ShowUserName)
              {%>
            <!-- Creator -->
            <asp:Label ID="lblCreator" ResourceKey="lblCreator" runat="server">Created By</asp:Label>
            <!-- user avatar-->
            <asp:Image ID="imgAuthorAvatar" runat="server"  Width="48px" 
                ImageUrl='<%#GetAuthorAvatar(objAuthor.UserId.ToString(),objAuthor.AvatarEmail) %>'
                Visible="<%#Settings_Detail.General.ShowAuthorAvatar %>" ImageAlign="AbsMiddle">
            </asp:Image>
            <!-- user name-->
            <asp:HyperLink ID="hlUserName" runat="server" Text="<%#objArticle.UserName%>" NavigateUrl='<%#GetUserNavigate(objArticle.UserId.ToString()) %>'
                Target="_blank" />
            <!--profile url-->
            <%if (Settings_Detail.General.ShowAuthorProfileLink && !string.IsNullOrEmpty(objAuthor.ProfileUrl))
              {%>
            &nbsp;&nbsp;<asp:HyperLink ID="hlProfileUrl" runat="server" resourcekey="hlProfileUrl"
                NavigateUrl='<%#objAuthor.ProfileUrl %>' Target="_blank" />
            <%} %>
            <%} %>
            <!-- date -->
            &nbsp;&nbsp;<asp:Label ID="lblCreateDate" runat="server" Text="<%#objArticle.CreatedDate.ToString()%>"
                Visible="<%#Settings_Detail.General.ShowCreatedDate %>" />
            <!-- author -->
            <%if (Settings_Detail.General.ShowAuthor && objArticle.Author.Trim() != "" && objType.FieldEnable_Author)
              {%>
            &nbsp;&nbsp;
            <asp:Label ID="lblAuthor" ResourceKey="lblAuthor" runat="server" />
            <asp:Label ID="lblAuthorField" runat="server" Text="<%#objArticle.Author%>" />
            <%} %>
            <!-- source -->
            <%if (Settings_Detail.General.ShowSource && objArticle.Source.Trim() != "" && objType.FieldEnable_Source)
              {%>
            &nbsp;&nbsp;<asp:Label ID="lblSource" runat="server" ResourceKey="lblSource" />
            <asp:Label ID="lblSourceField" runat="server" Text="<%#objArticle.Source%>" />
            <%} %>
            <!-- views -->
            <%if (Settings_Detail.General.ShowViews)
              {%>
            &nbsp;&nbsp;<asp:Label ID="lblViews" runat="server" resourcekey="lblViews" />
            <asp:Label ID="lblViewsField" runat="server" Text="<%#objArticle.Views %>" />
            <%} %>
            <!-- recommend -->
            <%if (Settings_Portal.Recommend.AllowRecommend && objArticle.AllowRecommend)
              {%>
            &nbsp;&nbsp;
            <asp:ImageButton ID="ibtnUp" runat="server" resourcekey="ibtnUp" CssClass="CommandButton"
                CausesValidation="false" AlternateText="Rate it up" ToolTip="Rete it up" ImageUrl="~/DesktopModules/CrossArticle/images/Up.gif"
                OnClick="ibtnUp_Click" />
            <asp:Label ID="lblUpVotes" runat="server" />
            &nbsp;&nbsp;
            <asp:ImageButton ID="ibtngDown" runat="server" resourcekey="ibtnDown" CssClass="CommandButton"
                CausesValidation="false" ImageUrl="~/DesktopModules/CrossArticle/images/Down.gif"
                OnClick="ibtnDown_Click" />
            <asp:Label ID="lblDownVotes" runat="server" />&nbsp;&nbsp;
            <asp:Label ID="lblRecommendNeedLoggedIn" resourcekey="lblRecommendNeedLoggedIn" ForeColor="red"
                runat="server" Visible="False"></asp:Label>
            <%} %>
        </td>
    </tr>
    <tr valign="top" align="left">
        <td colspan="2">
            <%if (Settings_Detail.General.ShowEventStart && objType.FieldEnable_EventStart)
                { %>

            <asp:Label ID="lblEventStart" runat="server" resourcekey="lblEventStart" />
            <asp:Label ID="lblEventStartData" runat="server" Text='<%#objArticle.EventStart.ToString() %>' />

            <%} %>

            <%if (Settings_Detail.General.ShowEventEnd && objType.FieldEnable_EventEnd)
                { %>
              &nbsp;&nbsp;  &nbsp;&nbsp;
            <asp:Label ID="lblEventEnd" runat="server" resourcekey="lblEventEnd" />
            <asp:Label ID="lblEventEndData" runat="server" Text='<%#objArticle.EventEnd.ToString() %>' />

            <%} %>
        </td>
    </tr>
     <tr valign="top" align="left">
        <td colspan="2">
         <!--    country-->
            <%if (Settings_Detail.General.ShowLocation_Country
                 && objType.AllowLocation && !string.IsNullOrEmpty(objArticle.Country))
              {%>
            <asp:Label ID="lblLocationCountry" runat="server" ResourceKey="lblLocationCountry" />
            <asp:Label ID="lblLocationCountryData" runat="server" Text="<%#objArticle.Country%>" />
            <%} %>
            <!--    State-->
            <%if (Settings_Detail.General.ShowLocation_State
                 && objType.AllowLocation && !string.IsNullOrEmpty(objArticle.State))
              {%>
            &nbsp;&nbsp;<asp:Label ID="lblLocationState" runat="server" ResourceKey="lblLocationState" />
            <asp:Label ID="lblLocationStateData" runat="server" Text="<%#objArticle.State%>" />
            <%} %>

            <!--    City-->
            <%if (Settings_Detail.General.ShowLocation_City
                 && objType.AllowLocation && !string.IsNullOrEmpty(objArticle.City))
              {%>
            &nbsp;&nbsp;<asp:Label ID="lblLocationCity" runat="server" ResourceKey="lblLocationCity" />
            <asp:Label ID="lblLocationCityData" runat="server" Text="<%#objArticle.City%>" />
            <%} %>

            <!--    Town-->
            <%if (Settings_Detail.General.ShowLocation_Town
                 && objType.AllowLocation && !string.IsNullOrEmpty(objArticle.Town))
              {%>
            &nbsp;&nbsp;<asp:Label ID="lblLocationTown" runat="server" ResourceKey="lblLocationTown" />
            <asp:Label ID="lblLocationTownData" runat="server" Text="<%#objArticle.Town%>" />
            <%} %>
     </td>
    </tr>
    <!--  custom attributes  -->
    <tr>
        <td colspan="2" align="left">
            <table runat="server" id="tblUserDefinedField" border="0" cellspacing="0" cellpadding="0">
            </table>
        </td>
    </tr>
    <!--  tags  -->
    <tr id="trTags" runat="server" visible="<%#Settings_Detail.General.ShowTags %>" align="left">
        <td style="width: 10%">
            <asp:Label ID="lblTags" runat="server" resourcekey="lblTags"></asp:Label>
        </td>
        <td style="width: 90%">
            <asp:DataList ID="dlTags" runat="server" RepeatColumns="<%#Settings_Detail.General.TagsPerRow%>"
                Width="100%">
                <ItemTemplate>
                    <asp:HyperLink ID="hlTag" runat="server" NavigateUrl='<%#GetTagNavigate(Convert.ToString(Eval("TagId")))%>'
                        Target="_blank" Text='<%#Convert.ToString(Eval("Tag")) %>'>
                    </asp:HyperLink>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    <!--  summary  -->
    <tr id="trSummary" valign="top" runat="server" visible='<%#objType.FieldEnable_Summary&&Settings_Detail.General.ShowSummary&&objArticle.Summary.Trim()!=""%>'>
        <td colspan="2">
            <asp:Label ID="lblSummary" runat="server" resourcekey="lblSummary"></asp:Label>
            <br />
            &nbsp;&nbsp;<%#Server.HtmlDecode(objArticle.Summary) %>
        </td>
    </tr>
    <!--   social bookmarks -->
    <tr>
        <td colspan="2">
            <table cellspacing="2" cellpadding="2" width="100%">
                <tr>
                    <td id="ShareBadgePRO_Toolbar">
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<div id="tabs" style="width: 100%; overflow:hidden">
    <ul>
        <li runat="server" 
        visible='<%# (   (Settings_Detail.General.ShowArticle &&!string.IsNullOrEmpty(objArticle.Article)) 
                       || (Settings_Detail.General.ShowImage && !string.IsNullOrEmpty(objArticle.Image))   ) 
                        && TabCounts>1 %>'>
            <a href="#divDescription"><span>
                <%#Localization.GetString("tabDescription",LocalResourceFile)%></span></a>
        </li>
        <li runat="server" visible='<%#Settings_Detail.General.ShowField1&&objType.EnableField1&&!string.IsNullOrEmpty(objArticle.Field1.Trim()) %>'>
            <a href="#divField1"><span>
                <%#objType.Field1Title%></span></a> </li>
        <li runat="server" visible='<%#Settings_Detail.General.ShowField2&&objType.EnableField2&&!string.IsNullOrEmpty(objArticle.Field2.Trim()) %>'>
            <a href="#divField2"><span>
                <%#objType.Field2Title%></span></a> </li>
        <li runat="server" visible='<%#Settings_Detail.General.ShowField3&&objType.EnableField3&&!string.IsNullOrEmpty(objArticle.Field3.Trim()) %>'>
            <a href="#divField3"><span>
                <%#objType.Field3Title%></span></a> </li>
        <li runat="server" visible='<%#Settings_Detail.General.ShowField4&&objType.EnableField4&&!string.IsNullOrEmpty(objArticle.Field4.Trim()) %>'>
            <a href="#divField4"><span>
                <%#objType.Field4Title%></span></a> </li>
        <li runat="server" visible='<%#Settings_Detail.General.ShowField5&&objType.EnableField5&&!string.IsNullOrEmpty(objArticle.Field5.Trim()) %>'>
            <a href="#divField5"><span>
                <%#objType.Field5Title%></span></a> 
         </li>

         <li  runat="server" visible='<%#ShowVote %>'><a href="#divVote"><span>
            <%#Localization.GetString("tabVote",LocalResourceFile)%></span></a> 
         </li>

        <li runat="server" visible='<%#ShowGoogleMap %>'><a href="#divGoogleMap"><span>
            <%#Localization.GetString("tabGoogleMap",LocalResourceFile)%></span></a> </li>
        <li runat="server" visible='<%#ShowAttachment %>'><a href="#divAttachment"><span>
            <%#Localization.GetString("tabAttachment",LocalResourceFile)%></span></a> </li>
        <li runat="server" visible='<%#ShowRelatedVideo %>'><a href="#divRelatedVideo"><span>
            <%#Localization.GetString("tabRelatedVideo",LocalResourceFile)%></span></a>
        </li>
        <li runat="server" visible='<%#ShowRelatedAudio %>'><a href="#divRelatedAudio"><span>
            <%#Localization.GetString("tabRelatedAudio",LocalResourceFile)%></span></a>
        </li>
        <li runat="server" visible='<%#ShowRelatedImage %>'><a href="#divRelatedImage"><span>
            <%#Localization.GetString("tabRelatedImage",LocalResourceFile)%></span></a>
        </li>
        <li runat="server" visible='<%#Settings_Portal.Rating.AllowRating && Settings_Detail.General.ShowRating &&   objArticle.AllowRating %>'>
            <a href="#divRating"><span>
                <%#Localization.GetString("tabRating",LocalResourceFile)%></span></a> </li>
        <li runat="server" visible='<%#Settings_Portal.Comment.AllowComment && objArticle.AllowComment&&Settings_Detail.General.ShowComment %>'>
            <a href="#divComment"><span>
                <%#Localization.GetString("tabComment",LocalResourceFile)%></span></a> </li>

        <li runat="server" visible='<%#Settings_Detail.AuthorProfile.ShowAuthorProfile%>'>
            <a href="#divAboutAuthor"><span>
                <%#Localization.GetString("tabAboutAuthor",LocalResourceFile)%></span></a>
        </li>

        <li runat="server" visible='<%#ShowRelatedArticle %>'><a href='#divRelatedArticle'><span>
            <%#Localization.GetString("tabRelatedArticle", LocalResourceFile)%></span></a>
        </li>
    </ul>
    <!--  Description  -->
    <%if ( (Settings_Detail.General.ShowArticle && objType.FieldEnable_Article && !string.IsNullOrEmpty(objArticle.Article.Trim()))
          || (Settings_Detail.General.ShowImage && !string.IsNullOrEmpty(objArticle.Image)))
      {%>
    <div id="divDescription" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" >
            <!--  image  -->
            <tr id="trImage" valign="top" runat="server" visible="<%#Settings_Detail.General.ShowImage && !string.IsNullOrEmpty(objArticle.Image)%>">
                <td align="center"  valign="top" colspan="2">
                    <br />
                    <a href="<%=GetRelativeUrlByFileId(objArticle.Image) %>" target="_blank">
                        <asp:Image BorderWidth="0" ID="imgArticleImage" runat="server"  AlternateText="<%#objArticle.Title%>"  ToolTip="<%#objArticle.Title%>"
                        ImageUrl='<%#GetRelativeUrlByFileId(objArticle.Image) %>'>
                        </asp:Image><br />
                    </a>
                    <%#Server.HtmlDecode(objArticle.ImageDescription) %>
                </td>
            </tr>
            <!--  article  -->
            <tr id="trArticle" valign="top" runat="server" visible="<%#Settings_Detail.General.ShowArticle&&objType.FieldEnable_Article&& !string.IsNullOrEmpty(objArticle.Article.Trim())%>">
                <td colspan="2">
                    <br />
                    <%#Server.HtmlDecode(objArticle.Article)%>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--  Field1  -->
    <%if (Settings_Detail.General.ShowField1 && objType.EnableField1 && !string.IsNullOrEmpty(objArticle.Field1.Trim()))
      {%>
    <div id="divField1" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" >
            <tr align="left">
                <td>
                    <%#Server.HtmlDecode(objArticle.Field1)%>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--  Field2  -->
    <%if (Settings_Detail.General.ShowField2 && objType.EnableField2 && !string.IsNullOrEmpty(objArticle.Field2.Trim()))
      {%>
    <div id="divField2" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" >
            <tr align="left">
                <td>
                    <%#Server.HtmlDecode(objArticle.Field2)%>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--  Field3  -->
    <%if (Settings_Detail.General.ShowField3 && objType.EnableField3 && !string.IsNullOrEmpty(objArticle.Field3.Trim()))
      {%>
    <div id="divField3" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" >
            <tr align="left">
                <td>
                    <%#Server.HtmlDecode(objArticle.Field3)%>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--  Field4  -->
    <%if (Settings_Detail.General.ShowField4 && objType.EnableField4 && !string.IsNullOrEmpty(objArticle.Field4.Trim()))
      {%>
    <div id="divField4" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" >
            <tr align="left">
                <td>
                    <%#Server.HtmlDecode(objArticle.Field4)%>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--  Field5  -->
    <%if (Settings_Detail.General.ShowField5 && objType.EnableField5 && !string.IsNullOrEmpty(objArticle.Field5.Trim()))
      {%>
    <div id="divField5" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" >
            <tr align="left">
                <td>
                    <%#Server.HtmlDecode(objArticle.Field5)%>
                </td>
            </tr>
        </table>
    </div>
    <%} %>

        <!--  Vote  -->
    <%if (ShowVote)
      {%>
    <div id="divVote" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" class="dnnFormItem">
            <tr>
                <td>
                    <asp:Label ID="lblVoteTitle" runat="server" CssClass="SubHead" Text="<%#objArticle.VoteTitle%>"></asp:Label><br /><br />
                    <asp:RadioButtonList runat="server" ID="rblVoteOption" BorderWidth="1" BorderColor="CadetBlue" CellPadding="5" CellSpacing="5"
                        Width="100%" />
                    <asp:CheckBoxList runat="server" ID="cblVoteOption" BorderWidth="1" BorderColor="CadetBlue" CellPadding="5" CellSpacing="5"
                        Width="100%" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblVoteSummary" runat="server"></asp:Label>&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:LinkButton ID="btnVote" OnClick="btnVote_Click" CssClass="dnnPrimaryAction" CausesValidation="false"
                        resourcekey="btnVote" runat="server" BorderStyle="none"></asp:LinkButton>&nbsp;
                    <asp:Label ID="lblVoteSuccess" runat="server" ForeColor="Green" Visible="false"  resourcekey="lblVoteSuccess"/>
                    <asp:Label ID="lblVoteFailure" runat="server" ForeColor="Red" Visible="false" resourcekey="lblVoteFailure"/>
                </td>
            </tr>
        </table>
    </div>
    <%} %>

    <!--  Google map  -->
    <%if (ShowGoogleMap)
      {%>
    <div id="divGoogleMap" style="<%#Settings_Detail.GoogleMap.GoogleMapStyle%>">
    </div>
    <%} %>
    <!--  attachment  -->
    <%if (ShowAttachment)
      {%>
    <div id="divAttachment" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" >
            <tr align="left">
                <td>
                    <asp:Label ID="lblAttacmentNeedLoggedIn" resourcekey="lblAttacmentNeedLoggedIn" ForeColor="red"
                        runat="server"></asp:Label>
                    <asp:DataList ID="dlAttachment" runat="server" Width="100%" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:HyperLink ID="hlAttachment" runat="server" NavigateUrl='<%#Convert.ToString(Eval("FilePath"))%>'
                                Target="_blank" Text='<%#!string.IsNullOrEmpty(Convert.ToString(Eval("Title")))?Convert.ToString(Eval("Title")):Convert.ToString(Eval("FilePath")).LastIndexOf("/")>0?Convert.ToString(Eval("FilePath")).Substring(Convert.ToString(Eval("FilePath")).LastIndexOf("/")+1):Convert.ToString(Eval("FilePath")) %>'>
                            </asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--  related video  -->
    <%if (ShowRelatedVideo)
      {%>
    <div id="divRelatedVideo" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" >
            <tr align="left">
                <td>
                    <asp:DataList ID="dlRelatedVideo" runat="server" Width="100%" ItemStyle-HorizontalAlign="Left"
                        RepeatColumns='<%#Settings_Detail.RelatedVideo.RelatedVideoPerRow%>' OnItemDataBound="dlRelatedVideo_ItemDataBound">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td valign="top" align="left">
                                        <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false" />
                                        <asp:HyperLink ID="hlImage" runat="server" Title='<%#Convert.ToString(Eval("Title")) %>'>
                                            <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                                Width='<%#Settings_Detail.RelatedVideo.VideoImageWidth%>' BorderColor="DarkGray"
                                                ID='Image3' ImageAlign="Left" />
                                        </asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="center">
                                        <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Convert.ToString(Eval("Title")) %>'
                                            Title='<%# Convert.ToString(Eval("Title")) %>' /><br />
                                        <asp:Label ID="lblDuration" runat="server" Text='<%#Eval("Duration")%>' />
                                        <asp:Label ID="lblEmbedCode" runat="server" Style="display: none" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--  related Audio  -->
    <%if (ShowRelatedAudio)
      {%>
    <div id="divRelatedAudio" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" >
            <tr align="left">
                <td>
                    <asp:DataList ID="dlRelatedAudio" runat="server" Width="100%" ItemStyle-HorizontalAlign="Left"
                        RepeatColumns='<%#Settings_Detail.RelatedAudio.RelatedAudioPerRow%>'>
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td valign="top" align="left">
                                        <asp:HyperLink ID="hlAudio" runat="server" NavigateUrl='<%#Eval("AudioPath")%>' Text='<%#Convert.ToString(Eval("Title")) %>'
                                            rel="vidbox">
                                        </asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--  related Image  -->
    <%if (ShowRelatedImage)
      {%>
    <div id="divRelatedImage" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%"  visible='false'>
            <tr align="left">
                <td>
                    <asp:DataList ID="dlRelatedImage" runat="server" Width="100%" ItemStyle-HorizontalAlign="Left"
                        RepeatColumns='<%#Settings_Detail.RelatedImage.RelatedImagePerRow%>'>
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td valign="top" align="left">
                                        <asp:HyperLink ID="hlImage" runat="server" NavigateUrl='<%#Eval("ImagePath")%>' Target="_blank"
                                            CssClass="fancybox-buttons" data-fancybox-group="button" Title='<%#Convert.ToString(Eval("Title")) %>'>
                                            <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                                Width='<%#Settings_Detail.RelatedImage.RelatedImageWidth%>' BorderColor="DarkGray"
                                                ID='Image3' ImageAlign="Left" />
                                        </asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="center">
                                        <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Convert.ToString(Eval("Title")) %>'
                                            Target="_blank" NavigateUrl='<%#Eval("ImagePath")%>' />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--   rating information  table -->
    <%if (Settings_Portal.Rating.AllowRating && Settings_Detail.General.ShowRating && objArticle.AllowRating)
      {%>
    <div id="divRating" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" class="dnnFormItem">
            <tr>
                <td colspan="2">
                    <hr style="border: 1px dotted #999999; size: 1" />
                </td>
            </tr>
            <tr align="left">
                <td colspan="2">
                    <asp:Label ID="lblRatingVotes" resourcekey="lblRatingVotes" runat="server"></asp:Label>
                    <asp:Label ID="lblVotes" runat="server"></asp:Label>&nbsp;&nbsp;
                    <asp:Label ID="lblAverage" resourcekey="lblAverage" runat="server"></asp:Label>&nbsp;&nbsp;
                    <asp:Image ID="imgAverage" runat="server"></asp:Image>&nbsp;&nbsp;
                    <asp:Label ID="lblRatingNeedLoggedIn" resourcekey="lblRatingNeedLoggedIn" Text="You have no rights to rating:"
                        ForeColor="red" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr align="left">
                <td>
                    <asp:RadioButtonList ID="rblRating" RepeatDirection="Horizontal" runat="server" >
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                        <asp:ListItem Value="10">10</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td width="50%">
                    <asp:Button ID="btnPost" runat="server" Text="Rating" resourcekey="bthPost" OnClick="btnPost_Click"
                        CssClass="CommandButton" CausesValidation="false"></asp:Button>
                </td>
            </tr>
        </table>
    </div>
    <% } %>
    <%--    rating information  end --%>
    <%--    comment information table  --%>
    <%if (Settings_Portal.Comment.AllowComment && objArticle.AllowComment && Settings_Detail.General.ShowComment)
      {%>
    <div id="divComment" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%">
            <tr>
                <td>
                    <asp:Label ID="lblCommentHead" resourcekey="lblCommentHead" runat="server" CssClass="SubHead" />
                </td>
            </tr>
            <tr>
                <td>
                    <hr style="border: 1px dotted #999999; size: 1" />
                </td>
            </tr>
            <tr align="left">
                <td>
                    <asp:DataList ID="dlComments" runat="Server" Width="100%"  BackColor="White"
                        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <ItemTemplate>
                            <blockquote>
                                <%if (Settings_Detail.General.ShowCommentAvatar)
                                  {%>
                                <asp:Image runat="server" Width="48px" ID="imgUserGravatar" 
                                    ImageUrl='<%#GetAuthorAvatar(Eval("UserId").ToString(),Eval("Mail").ToString()) %>'
                                    
                                    ImageAlign="AbsMiddle"></asp:Image>
                                <%} %>
                                <%# Eval("Comment").ToString().Replace(Microsoft.VisualBasic.Constants.vbCrLf, "<br/>")%>
                            </blockquote>
                            <%# "By  " + Convert.ToString(DataBinder.Eval(Container.DataItem,"CreatedUser")) %>
                            <%# "    on  "+Convert.ToDateTime(DataBinder.Eval(Container.DataItem,"CreatedDate")).ToShortDateString()  %>
                        </ItemTemplate>
                        <AlternatingItemStyle BackColor="#F7F7F7" />
                        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td>
                    <hr style="border: 1px dotted #999999; size: 1" />
                </td>
            </tr>
            <tr>
                <td>
                    <Cross:PagingControl ID="ctlPagingControl" runat="server" OnPageChanged="ctlPagingControl_PageChanged"
                        Mode="PostBack"></Cross:PagingControl>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCommentNeedLoggedIn" Text="You must be logged in to submit a comment."
                         resourcekey="lblCommentNeedLoggedIn" Visible="false" runat="server"
                        ForeColor="red" />
                    <asp:Label ID="lblCommentNeedAuth" Text="Your comment must be authorized before display."
                        resourcekey="lblCommentNeedAuth" Visible="false" runat="server" ForeColor="red" />
                    <br />
                    <hr style="border: 1px dotted #999999; size: 1" />
                </td>
            </tr>
            <tr id="trComment" runat="server">
                <td>
                    <table cellspacing="2" cellpadding="2" width="100%" class="dnnFormItem">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblEnter" runat="server" resourcekey="lblEnter" Text="Leave a Comment"
                                    CssClass="SubHead"></asp:Label><br />
                                <hr style="border: 1px dotted #999999; size: 1" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width:150px">
                                <asp:Label ID="lblName" runat="server" resourcekey="lblName"></asp:Label>
                              
                            </td>
                            <td>
                                  <asp:TextBox ID="txtName" runat="server" ></asp:TextBox><asp:Image ID="Image1"
                                    runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg" ToolTip="Reuired"
                                    AlternateText="Required" />
                                <asp:RequiredFieldValidator ID="varName" runat="server" CssClass="NormalRed" ErrorMessage="You Must Enter a name"
                                    resourcekey="Name.ErrorMessage" Display="Dynamic" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <asp:Label ID="lblEmail" runat="server" resourcekey="lblEmail"></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblUrl" runat="server" resourcekey="lblUrl"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUrl" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <dnn:CaptchaControl ID="ctlCaptcha" TabIndex="6" runat="server" 
                                    Visible='<%#Settings_Detail.General.ShowCaptchaInComment%>' CaptchaLength="4"
                                    ErrorStyle-CssClass="NormalRed" CaptchaWidth="130" CaptchaHeight="40"></dnn:CaptchaControl>
                            </td>
                        </tr>
                        <tr>
                            <td  colspan="2">
                                <asp:Label ID="lblComment" runat="server" resourcekey="lblComment" Text="Comment:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox
                                    ID="chkPrivate" runat="server" Text="Private" resourcekey="chkPrivate"></asp:CheckBox>&nbsp;&nbsp;&nbsp;
                                &nbsp;
                                <asp:Button ID="btnAddComment" runat="server" resourcekey="btnAddComment" Text="Submit Comment"
                                    OnClick="btnAddComment_Click" CssClass="CommandButton"></asp:Button>
                            </td>
                        </tr>
                        <tr>
                            <td  colspan="2">
                                <asp:TextBox ID="txtComment" runat="server"  TextMode="Multiline" Rows="7"  Columns="100"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="varComment" runat="server" CssClass="NormalRed" ErrorMessage="You Must Enter comment info"
                                    resourcekey="Comment.ErrorMessage" Display="Dynamic" ControlToValidate="txtComment">* Required</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <hr style="border: 1px dotted #999999; size: 1" />
                </td>
            </tr>
        </table>
    </div>
    <% } %>
    <%--    comment information end  --%>

    <!--   about author -->
    <%if (Settings_Detail.AuthorProfile.ShowAuthorProfile)
  {%>
    <div id="divAboutAuthor" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%" class="Normal">
            <!--    Company -->
            <tr id="Tr1" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowCompany && !string.IsNullOrEmpty(objAuthor.Company)%>">
                <td style="width:150px">
                    <asp:Label ID="Label5" runat="server" resourcekey="lblCompany"></asp:Label>
                </td>
                <td>
                    <%#objAuthor.Company%>
                </td>
            </tr>
              <!--    country-->
                 <tr id="Tr2"   runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowCountry && !string.IsNullOrEmpty(objAuthor.Country)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label1" runat="server" resourcekey="lblLocationCountry"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.Country%>
                    </td>
                </tr>
                  <!--    State-->
                 <tr id="Tr3"   runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowState && !string.IsNullOrEmpty(objAuthor.State)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label2" runat="server" resourcekey="lblLocationState"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.State%>
                    </td>
                </tr>
                  <!--    City-->
                 <tr id="Tr4"   runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowCity && !string.IsNullOrEmpty(objAuthor.City)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label6" runat="server" resourcekey="lblLocationCity"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.City%>
                    </td>
                </tr>
                
               <!--    Town-->
                 <tr id="Tr5" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowTown && !string.IsNullOrEmpty(objAuthor.Town)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label3" runat="server" resourcekey="lblLocationTown"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.Town%>
                    </td>
                </tr>

                  <!--    Tel-->
                 <tr id="Tr6"  runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowTel && !string.IsNullOrEmpty(objAuthor.Tel)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label4" runat="server" resourcekey="lblTel"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.Tel%>
                    </td>
                </tr>

                  <!--    Fax-->
                 <tr id="Tr7"  runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowFax && !string.IsNullOrEmpty(objAuthor.Fax)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label7" runat="server" resourcekey="lblFax"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.Fax%>
                    </td>
                </tr>
                
           <!--    Zipcode-->
                 <tr id="Tr8"   runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowZipcode && !string.IsNullOrEmpty(objAuthor.Zipcode)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label8" runat="server" resourcekey="lblZipcode"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.Zipcode%>
                    </td>
                </tr>
                 <!--    IM-->
                 <tr id="Tr9"  runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowIM && !string.IsNullOrEmpty(objAuthor.IM)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label9" runat="server" resourcekey="lblIM"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.IM%>
                    </td>
                </tr>
                <!--    Linkman-->
                 <tr id="Tr10" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowLinkman && !string.IsNullOrEmpty(objAuthor.Linkman)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label10" runat="server" resourcekey="lblLinkman"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.Linkman%>
                    </td>
                </tr>
                <!--    Address-->
                 <tr id="Tr11"  runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowAddress && !string.IsNullOrEmpty(objAuthor.Address)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label11" runat="server" resourcekey="lblAddress"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.Address%>
                    </td>
                </tr>
                 <!--    BusinessScope-->
                 <tr id="Tr12" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowBusinessScope && !string.IsNullOrEmpty(objAuthor.BusinessScope)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label12" runat="server" resourcekey="lblBusinessScope"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.BusinessScope%>
                    </td>
                </tr>
                 <!--    SiteUrl-->
            <tr id="Tr13" runat="server" visible='<%#Settings_Detail.AuthorProfile.ShowSiteUrl 
            && !string.IsNullOrEmpty(objAuthor.SiteUrl) && objAuthor.SiteUrl.StartsWith("http")%>'>
                <td style="width:150px">
                    <asp:Label ID="Label13" runat="server" resourcekey="lblSiteUrl"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="hlAuthorSiteUrl" runat="server" Text="<%#objAuthor.SiteUrl%>"
                        NavigateUrl='<%#objAuthor.SiteUrl %>' Target="_blank" />
                </td>
            </tr>
                <!--    LogoUrl-->
                 <tr id="Tr14"  runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowLogoUrl && !string.IsNullOrEmpty(objAuthor.LogoUrl)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label14" runat="server" resourcekey="lblLogoUrl"></asp:Label>
                    </td>
                    <td>
                      <asp:Image ID="Image4" runat="server" ImageUrl='<%#objAuthor.LogoUrl%>'
                    Height='40px' BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray"  />
                   
                    </td>
                </tr>
                  <!--    Slogan-->
                 <tr id="Tr15" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowSlogan && !string.IsNullOrEmpty(objAuthor.Slogan)%>">
                    <td style="width:150px">
                        <asp:Label ID="Label15" runat="server" resourcekey="lblSlogan"></asp:Label>
                    </td>
                    <td>
                        <%#objAuthor.Slogan%>
                    </td>
                </tr>
                  <!--    extra vendor profile field1-->
                 <tr id="Tr16"  runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowField1 
                 && !string.IsNullOrEmpty(objAuthor.Field1) && Settings_Portal.AuthorProfile.Field1Enable%>">
                    <td style="width:150px">
                        <%#Settings_Portal.AuthorProfile.Field1Title%>
                    </td>
                    <td>
                        <%#objAuthor.Field1%>
                    </td>
                </tr>
                 <!--    extra vendor profile Field2-->
                 <tr id="Tr17"  runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowField2 
                 && !string.IsNullOrEmpty(objAuthor.Field2) && Settings_Portal.AuthorProfile.Field2Enable%>">
                    <td style="width:150px">
                       <%#Settings_Portal.AuthorProfile.Field2Title%>
                    </td>
                    <td>
                        <%#objAuthor.Field2%>
                    </td>
                </tr>
                  <!--    extra vendor profile Field3-->
                 <tr id="Tr18" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowField3 
                 && !string.IsNullOrEmpty(objAuthor.Field3) && Settings_Portal.AuthorProfile.Field3Enable%>">
                    <td style="width:150px">
                        <%#Settings_Portal.AuthorProfile.Field3Title%>
                    </td>
                    <td>
                        <%#objAuthor.Field3%>
                    </td>
                </tr>
                  <!--    extra vendor profile Field4-->
                 <tr id="Tr19"  runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowField4 
                 && !string.IsNullOrEmpty(objAuthor.Field4) && Settings_Portal.AuthorProfile.Field4Enable%>">
                    <td style="width:150px">
                        <%#Settings_Portal.AuthorProfile.Field4Title%>
                    </td>
                    <td>
                        <%#objAuthor.Field4%>
                    </td>
                </tr>
                  <!--    extra vendor profile Field5-->
                 <tr id="Tr20" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowField5 
                 && !string.IsNullOrEmpty(objAuthor.Field5) && Settings_Portal.AuthorProfile.Field5Enable%>">
                    <td style="width:150px">
                        <%#Settings_Portal.AuthorProfile.Field5Title%>
                    </td>
                    <td>
                        <%#objAuthor.Field5%>
                    </td>
                </tr>
                 <!--    extra vendor profile Field6-->
                 <tr id="Tr21" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowField6 
                 && !string.IsNullOrEmpty(objAuthor.Field6) && Settings_Portal.AuthorProfile.Field6Enable%>">
                    <td style="width:150px">
                        <%#Settings_Portal.AuthorProfile.Field6Title%>
                    </td>
                    <td>
                        <%#objAuthor.Field6%>
                    </td>
                </tr>
                 <!--    extra vendor profile Field7-->
                 <tr id="Tr22" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowField7 
                 && !string.IsNullOrEmpty(objAuthor.Field7) && Settings_Portal.AuthorProfile.Field7Enable%>">
                    <td style="width:150px">
                       <%#Settings_Portal.AuthorProfile.Field7Title%>
                    </td>
                    <td>
                        <%#objAuthor.Field7%>
                    </td>
                </tr>
                  <!--    extra vendor profile Field8-->
                 <tr id="Tr23"  runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowField8 
                 && !string.IsNullOrEmpty(objAuthor.Field8) && Settings_Portal.AuthorProfile.Field8Enable%>">
                    <td style="width:150px">
                       <%#Settings_Portal.AuthorProfile.Field8Title%>
                    </td>
                    <td>
                        <%#objAuthor.Field8%>
                    </td>
                </tr>
                 <!--    extra vendor profile Field9-->
                 <tr id="Tr24" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowField9 
                 && !string.IsNullOrEmpty(objAuthor.Field9) && Settings_Portal.AuthorProfile.Field9Enable%>">
                   <td style="width:150px">
                        <%#Settings_Portal.AuthorProfile.Field9Title%>
                    </td>
                    <td>
                        <%#objAuthor.Field9%>
                    </td>
                </tr>
                 <!--    extra vendor profile Field10-->
                 <tr id="Tr25" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowField10 
                 && !string.IsNullOrEmpty(objAuthor.Field10) && Settings_Portal.AuthorProfile.Field10Enable%>">
                   <td style="width:150px">
                        <%#Settings_Portal.AuthorProfile.Field10Title%>
                    </td>
                    <td>
                        <%#objAuthor.Field10%>
                    </td>
                </tr>
               <tr id="Tr26" runat="server" visible="<%#Settings_Detail.AuthorProfile.ShowBiography  && !string.IsNullOrEmpty(objAuthor.Biography)%>">
                <td colspan="2">
                   <br />
                    <%#Server.HtmlDecode(objAuthor.Biography)%>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--    about author  end -->

    <%--     related articles table --%>
    <%if (ShowRelatedArticle)
      { %>
    <div id="divRelatedArticle" style="height: 100%">
        <table cellspacing="2" cellpadding="2" width="100%">
            <tr>
                <td>
                    <asp:DataList ID="dlRelatedArticles" runat="server" Visible="true" CellPadding="4"
                        CellSpacing="4" Width="100%">
                        <ItemTemplate>
                            <asp:HyperLink ID="hlTitle" runat="server" Text='<%# Convert.ToString(Eval("Title")) +"("+ Convert.ToDateTime( Eval("CreatedDate")).ToShortDateString() +")"%>'
                                NavigateUrl='<%#GetArticleNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>' />
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
    <%} %>
    <!--    related Article end-->
</div>
</div>