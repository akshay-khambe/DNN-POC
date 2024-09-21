<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.Settings_Detail, App_Web_settings_detail.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="sectionhead" Src="~/controls/SectionHeadControl.ascx" %>
<dnn:sectionhead ID="secGeneral" runat="server" Section="tblGeneral" ResourceKey="secGeneral"
    IncludeRule="True" IsExpanded="True" CssClass="SubHead"></dnn:sectionhead>
<table cellspacing="0" cellpadding="2" width="100%" border="0" runat="server" id="tblGeneral"
    class="dnnFormItem">
    <tr>
        <td style="width: 250px">
            <dnn:label ID="plType" runat="server" ControlName="ddlType"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlType" runat="server" DataTextField="Name" DataValueField="Id"
                AutoPostBack="True" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" resourcekey="Tip_Template" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTemplate" runat="server" ControlName="ddlTemplate"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTemplate" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" resourcekey="Tip_TabStyle" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabStyle" runat="server" ControlName="ddlTabStyle"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTabStyle" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plCheckXhtmlDocType" runat="server" ControlName="chkCheckXhtmlDocType">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkCheckXhtmlDocType" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr runat="server" visible="false">
        <td>
            <dnn:label ID="plPublishDateType" runat="server" ControlName="ddlPublishDateType" />
        </td>
        <td>
            <asp:DropDownList ID="ddlPublishDateType" runat="server">
                <asp:ListItem Value="0" resourcekey="li_PublishDateType_Past" />
                <asp:ListItem Value="1" resourcekey="li_PublishDateType_Future" />
                <asp:ListItem Value="-1" resourcekey="li_PublishDateType_All" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowTitle" runat="server" ControlName="chkShowTitle"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowTitle" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowSubTitle" runat="server" ControlName="chkShowSubTitle"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowSubTitle" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr >
        <td>
            <dnn:label ID="plShowImage" runat="server" ControlName="chkShowImage"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowImage" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plImageWidth" runat="server" ControlName="txtImageWidth"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtImageWidth" runat="server" width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtImageWidth"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowUserName" runat="server" ControlName="chkShowUserName"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowUserName" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowCreatedDate" runat="server" ControlName="chkShowCreatedDate">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowCreatedDate" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr runat="server" visible="<%#CurrentType.FieldEnable_Author %>">
        <td>
            <dnn:label ID="plShowAuthor" runat="server" ControlName="chkShowAuthor"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthor" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowAuthorAvatar" runat="server" ControlName="chkShowAuthorAvatar">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorAvatar" runat="server"></asp:CheckBox>
        </td>
    </tr>
   
    <tr>
        <td>
            <dnn:label ID="plShowAuthorProfileLink" runat="server" ControlName="chkShowAuthorProfileLink" />
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorProfileLink" runat="server" />
        </td>
    </tr>
    <tr runat="server" visible="<%#CurrentType.FieldEnable_Source %>">
        <td>
            <dnn:label ID="plShowSource" runat="server" ControlName="chkShowSource"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowSource" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowTags" runat="server" ControlName="chkShowTags"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowTags" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTagsPerRow" runat="server" ControlName="txtTagsPerRow"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtTagsPerRow" runat="server" width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator3" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtTagsPerRow"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr runat="server" visible="<%#CurrentType.FieldEnable_Summary %>">
        <td>
            <dnn:label ID="plShowSummary" runat="server" ControlName="chkShowSummary"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowSummary" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowArticle" runat="server" ControlName="chkShowArticle"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowArticle" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr runat="server" visible="<%#CurrentType.EnableField1 %>">
        <td>
            <dnn:label ID="plShowField1" runat="server" ControlName="chkShowField1" />
        </td>
        <td>
            <asp:CheckBox ID="chkShowField1" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr runat="server" visible="<%#CurrentType.EnableField2 %>">
        <td>
            <dnn:label ID="plShowField2" runat="server" ControlName="chkShowField2" />
        </td>
        <td>
            <asp:CheckBox ID="chkShowField2" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr runat="server" visible="<%#CurrentType.EnableField3 %>">
        <td>
            <dnn:label ID="plShowField3" runat="server" ControlName="chkShowField3" />
        </td>
        <td>
            <asp:CheckBox ID="chkShowField3" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr runat="server" visible="<%#CurrentType.EnableField4 %>">
        <td>
            <dnn:label ID="plShowField4" runat="server" ControlName="chkShowField4" />
        </td>
        <td>
            <asp:CheckBox ID="chkShowField4" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr runat="server" visible="<%#CurrentType.EnableField5 %>">
        <td>
            <dnn:label ID="plShowField5" runat="server" ControlName="chkShowField5" />
        </td>
        <td>
            <asp:CheckBox ID="chkShowField5" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowViews" runat="server" ControlName="chkShowViews"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowViews" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowEventStart" runat="server" ControlName="chkShowEventStart"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowEventStart" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowEventEnd" runat="server" ControlName="chkShowEventEnd"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowEventEnd" runat="server"></asp:CheckBox>
        </td>
    </tr>

    <tr>
        <td>
            <dnn:label ID="plShowAttachment" runat="server" ControlName="chkShowAttachment">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAttachment" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowRating" runat="server" ControlName="chkShowRating"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowRating" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plRatingImage" runat="server" ControlName="ddlRatingImage"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlRatingImage" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowComment" runat="server" ControlName="chkShowComment"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowComment" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowCaptchaInComment" runat="server" ControlName="chkShowCaptchaInComment">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowCaptchaInComment" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowCommentAvatar" runat="server" ControlName="chkShowCommentAvatar">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowCommentAvatar" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plCommentRowCount" runat="server" ControlName="txtCommentRowCount">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtCommentRowCount" runat="server" width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator4" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtCommentRowCount"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowReturn" runat="server" ControlName="chkShowReturn"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowReturn" runat="server"></asp:CheckBox>
        </td>
    </tr>
   
    <tr>
        <td>
            <dnn:label ID="plShowAddWatch" runat="server" ControlName="chkShowAddWatch"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAddWatch" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowAddTicket" runat="server" ControlName="chkShowAddTicket"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAddTicket" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowPrint" runat="server" ControlName="chkShowPrint"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowPrint" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowSocialBookmarks" runat="server" ControlName="chkShowSocialBookmarks">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowSocialBookmarks" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label3" runat="server" resourcekey="Tip_ShowLatestArticleAsDefault"
                CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowLatestArticleAsDefault" runat="server" ControlName="chkShowLatestArticleAsDefault">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLatestArticleAsDefault" runat="server"></asp:CheckBox>
        </td>
    </tr>
      <tr>
        <td colspan="2">
            <br />
        </td>
    </tr>

       <tr id="Tr1" runat="server" visible="<%# CurrentType.AllowLocation %>">
        <td>
            <dnn:label ID="plShowLocation_Country" runat="server" ControlName="chkShowLocation_Country"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLocation_Country" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr id="Tr2" runat="server" visible="<%# CurrentType.AllowLocation %>">
        <td>
            <dnn:label ID="plShowLocation_State" runat="server" ControlName="chkShowLocation_State"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLocation_State" runat="server"></asp:CheckBox>
        </td>
    </tr>
      <tr id="Tr3" runat="server" visible="<%# CurrentType.AllowLocation %>">
        <td>
            <dnn:label ID="plShowLocation_City" runat="server" ControlName="chkShowLocation_City"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLocation_City" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr id="Tr4" runat="server" visible="<%# CurrentType.AllowLocation %>">
        <td>
            <dnn:label ID="plShowLocation_Town" runat="server" ControlName="chkShowLocation_Town"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLocation_Town" runat="server"></asp:CheckBox>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secAuthorProfile" runat="server" Section="tblAuthorProfile" ResourceKey="secAuthorProfile"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblAuthorProfile" cellspacing="0" cellpadding="2" border="0" runat="server" class="dnnFormItem" width="100%">
 
     <tr>
        <td colspan="2">
            <asp:Label ID="Label14" runat="server" resourcekey="Tip_AuthorProfile" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plShowAuthorProfile" runat="server" ControlName="chkShowAuthorProfile">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorProfile" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowBiography" runat="server" ControlName="chkShowBiography"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowBiography" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowSiteUrl" runat="server" ControlName="chkShowSiteUrl"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowSiteUrl" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowLogoUrl" runat="server" ControlName="chkShowLogoUrl"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLogoUrl" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowSlogan" runat="server" ControlName="chkShowSlogan"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowSlogan" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowCompany" runat="server" ControlName="chkShowCompany"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowCompany" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
           <td>
            <dnn:label ID="plShowTel" runat="server" ControlName="chkShowTel"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowTel" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowFax" runat="server" ControlName="chkShowFax"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowFax" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowIM" runat="server" ControlName="chkShowIM"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowIM" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowLinkman" runat="server" ControlName="chkShowLinkman"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLinkman" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowCountry" runat="server" ControlName="chkShowCountry"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowCountry" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowState" runat="server" ControlName="chkShowState"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowState" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowCity" runat="server" ControlName="chkShowCity"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowCity" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowTown" runat="server" ControlName="chkShowTown"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowTown" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowAddress" runat="server" ControlName="chkShowAddress"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAddress" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowBusinessScope" runat="server" ControlName="chkShowBusinessScope"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowBusinessScope" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowZipcode" runat="server" ControlName="chkShowZipcode"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowZipcode" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr runat="server" id="trAuthorField1">
        <td>
            <dnn:label ID="plShowAuthorField1" runat="server" ControlName="chkShowAuthorField1"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorField1" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr runat="server" id="trAuthorField2">
        <td>
            <dnn:label ID="plShowAuthorField2" runat="server" ControlName="chkShowAuthorField2"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorField2" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr runat="server" id="trAuthorField3">
        <td>
            <dnn:label ID="plShowAuthorField3" runat="server" ControlName="chkShowAuthorField3"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorField3" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr runat="server" id="trAuthorField4">
        <td>
            <dnn:label ID="plShowAuthorField4" runat="server" ControlName="chkShowAuthorField4"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorField4" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr runat="server" id="trAuthorField5">
        <td>
            <dnn:label ID="plShowAuthorField5" runat="server" ControlName="chkShowAuthorField5"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorField5" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr runat="server" id="trAuthorField6">
        <td>
            <dnn:label ID="plShowAuthorField6" runat="server" ControlName="chkShowAuthorField6"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorField6" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr runat="server" id="trAuthorField7">
        <td>
            <dnn:label ID="plShowAuthorField7" runat="server" ControlName="chkShowAuthorField7"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorField7" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr runat="server" id="trAuthorField8">
        <td>
            <dnn:label ID="plShowAuthorField8" runat="server" ControlName="chkShowAuthorField8"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorField8" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr runat="server" id="trAuthorField9">
        <td>
            <dnn:label ID="plShowAuthorField9" runat="server" ControlName="chkShowAuthorField9"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorField9" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr runat="server" id="trAuthorField10">
        <td>
            <dnn:label ID="plShowAuthorField10" runat="server" ControlName="chkShowAuthorField10"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorField10" runat="server"></asp:CheckBox>
        </td>

 </tr> 
</table>
<dnn:sectionhead ID="secVote" runat="server" Section="tblVote" ResourceKey="secVote"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblVote" cellspacing="0" cellpadding="2" border="0" runat="server" class="dnnFormItem" width="100%">
 
     <tr>
        <td colspan="2">
            <asp:Label ID="Label8" runat="server" resourcekey="Tip_Vote" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plShowVote" runat="server" ControlName="chkShowVote">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowVote" runat="server"></asp:CheckBox>
        </td>
    </tr>
 </table>

<dnn:sectionhead ID="secGoogleMap" runat="server" Section="tblGoogleMap" ResourceKey="secGoogleMap"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblGoogleMap" cellspacing="0" cellpadding="2" border="0" class="dnnFormItem"
    width="100%" runat="server">
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plShowGoogleMap" runat="server" ControlName="chkShowGoogleMap"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowGoogleMap" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label4" runat="server" resourcekey="Tip_GoogleMapZoom" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plGoogleMapZoom" runat="server" ControlName="txtGoogleMapZoom"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtGoogleMapZoom" runat="server" Columns="6"></asp:TextBox>0 -
            18
            <asp:RangeValidator ID="rang1" runat="server" ControlToValidate="txtGoogleMapZoom"
                ForeColor="Red" resourcekey="MustBetween0To18" MinimumValue="0" MaximumValue="18"
                Type="Integer"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label5" runat="server" resourcekey="Tip_GoogleMapStyle" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plGoogleMapStyle" runat="server" ControlName="txtGoogleMapStyle">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtGoogleMapStyle" runat="server" Columns="60"></asp:TextBox>
            <asp:Image ID="Image15" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtGoogleMapStyle"
                ForeColor="Red" resourcekey="Required" ID="RequiredFieldValidator3" />
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secUDField" runat="server" Section="tblUDField" ResourceKey="secUDField"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead" Visible="false"></dnn:sectionhead>
<table id="tblUDField" cellspacing="0" cellpadding="2" border="0" runat="server"
    width="100%" class="dnnFormItem" visible="false">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label6" runat="server" resourcekey="Tip_UdField" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:label ID="plUseBuiltInTemplate" runat="server" ControlName="chkUseBuiltInTemplate">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkUseBuiltInTemplate" runat="server"></asp:CheckBox>
        </td>
    </tr>
    
    <tr>
        <td>
            <dnn:label ID="plUDFieldList" runat="server" ControlName="cblUDFieldList"></dnn:label>
        </td>
        <td>
            <asp:CheckBoxList ID="cblUDFieldList" runat="server" RepeatColumns="2" RepeatDirection="Horizontal"
                DataTextField="FieldName" DataValueField="Id">
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plHideWhenEmpty" runat="server" ControlName="chkHideWhenEmpty">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkHideWhenEmpty" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDField_ImageWidth" runat="server" ControlName="txtUDField_ImageWidth">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtUDField_ImageWidth" runat="server" Columns="6"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDField_ImageHeight" runat="server" ControlName="txtUDField_ImageHeight">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtUDField_ImageHeight" runat="server" Columns="6"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDField_CheckBoxList_Enabled" runat="server" ControlName="chkUDField_CheckBoxList_Enabled">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkUDField_CheckBoxList_Enabled" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDField_CheckBoxList_RepeatColumns" runat="server" ControlName="txtUDField_CheckBoxList_RepeatColumns">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtUDField_CheckBoxList_RepeatColumns" runat="server" Columns="4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator2" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtUDField_CheckBoxList_RepeatColumns"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secRelatedArticle" runat="server" Section="tblRelatedArticle"
    ResourceKey="secRelatedArticle" IncludeRule="True" IsExpanded="false" CssClass="SubHead">
</dnn:sectionhead>
<table id="tblRelatedArticle" cellspacing="0" cellpadding="2" border="0" class="dnnFormItem"
    width="100%" runat="server">
    <tr>
        <td style="width: 250px">
            <dnn:label ID="plShowRelatedArticle" runat="server" ControlName="chkShowRelatedArticle">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowRelatedArticle" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plRelatedArticleRows" runat="server" ControlName="txtRelatedArticleRows">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtRelatedArticleRows" runat="server" Columns="6"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator5" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtRelatedArticleRows"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secRelatedVideo" runat="server" Section="tblRelatedVideo" ResourceKey="secRelatedVideo"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblRelatedVideo" cellspacing="0" cellpadding="2" border="0" class="dnnFormItem"
    width="100%" runat="server">
    <tr>
        <td style="width: 250px">
            <dnn:label ID="plShowRelatedVideo" runat="server" ControlName="chkShowRelatedVideo">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowRelatedVideo" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plRelatedVideoPerRow" runat="server" ControlName="txtRelatedVideoPerRow">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtRelatedVideoPerRow" runat="server" Columns="6"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regRelatedVideoPerRow" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtRelatedVideoPerRow"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plVideoImageWidth" runat="server" ControlName="txtVideoImageWidth">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtVideoImageWidth" runat="server" Columns="6"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regVideoImageWidth" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtVideoImageWidth"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plVideoPlayerWidth" runat="server" ControlName="txtVideoPlayerWidth">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtVideoPlayerWidth" runat="server" Columns="6"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regVideoPlayerWidth" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtVideoPlayerWidth"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plVideoPlayerHeight" runat="server" ControlName="txtVideoPlayerHeight">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtVideoPlayerHeight" runat="server" Columns="6"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regVideoPlayerHeight" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtVideoPlayerHeight"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secRelatedAudio" runat="server" Section="tblRelatedAudio" ResourceKey="secRelatedAudio"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblRelatedAudio" cellspacing="0" cellpadding="2" border="0" class="dnnFormItem"
    width="100%" runat="server">
    <tr>
        <td style="width: 250px">
            <dnn:label ID="plShowRelatedAudio" runat="server" ControlName="chkShowRelatedAudio">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowRelatedAudio" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plRelatedAudioPerRow" runat="server" ControlName="txtRelatedAudioPerRow">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtRelatedAudioPerRow" runat="server" Columns="6"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator8" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtRelatedAudioPerRow"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secRelatedImage" runat="server" Section="tblRelatedImage" ResourceKey="secRelatedImage"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblRelatedImage" cellspacing="0" cellpadding="2" border="0" class="dnnFormItem"
    width="100%" runat="server">
    <tr>
        <td style="width: 250px">
            <dnn:label ID="plShowRelatedImage" runat="server" ControlName="chkShowRelatedImage">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowRelatedImage" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plRelatedImagePerRow" runat="server" ControlName="txtRelatedImagePerRow">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtRelatedImagePerRow" runat="server" Columns="6"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator9" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtRelatedImagePerRow"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plRelatedImageWidth" runat="server" ControlName="txtRelatedImageWidth">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtRelatedImageWidth" runat="server" Columns="6"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator11" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtRelatedImageWidth"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secAnarchy" runat="server" Section="tblAnarchy" ResourceKey="secAnarchy"
    IncludeRule="True" IsExpanded="False" CssClass="SubHead"></dnn:sectionhead>
<table cellspacing="0" cellpadding="2" border="0" runat="server" id="tblAnarchy"
    class="dnnFormItem" width="100%">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label7" runat="server" resourcekey="Tip_Anarchy" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:label ID="plEnableAnarchy" runat="server" ControlName="chkEnableAnarchy"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkEnableAnarchy" runat="server"></asp:CheckBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <dnn:sectionhead ID="secAnarchyVideoGeneral" runat="server" Section="tblVideoGeneral"
                ResourceKey="secAnarchyVideoGeneral" IncludeRule="True" IsExpanded="True" CssClass="SubHead">
            </dnn:sectionhead>
            <table cellspacing="2" cellpadding="2" runat="server" id="tblVideoGeneral" width="100%">
                <tr>
                    <td style="width: 250px">
                        <dnn:label ID="plVidDownloadLink" runat="server" ControlName="chkVidDownloadLink">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkVidDownloadLink" runat="server"></asp:CheckBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 250px">
                        <dnn:label ID="plVidImgMargin" runat="server" ControlName="txtVidImgMargin"></dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVidImgMargin" runat="server" Columns="12"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <dnn:sectionhead ID="secAnarchyMp3" runat="server" Section="tblAnarchyMp3" ResourceKey="secAnarchyMp3"
                IncludeRule="True" IsExpanded="True" CssClass="SubHead"></dnn:sectionhead>
            <table cellspacing="2" cellpadding="2" runat="server" id="tblAnarchyMp3" width="100%">
                <tr>
                    <td style="width: 250px">
                        <dnn:label ID="plMp3PlayerLoop" runat="server" ControlName="chkMp3PlayerLoop"></dnn:label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkMp3PlayerLoop" runat="server"></asp:CheckBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3DownloadLink" runat="server" ControlName="chkMp3DownloadLink">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkMp3DownloadLink" runat="server"></asp:CheckBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerBg" runat="server" ControlName="txtMp3PlayerBg"></dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerBg" runat="server"></asp:TextBox>&nbsp; <a id="pickMp3PlayerBg"
                            name="pickMp3PlayerBg" href="javascript:void(PickMp3PlayerBg())" target="_self">
                            <asp:Image ID="Image1" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMp3PlayerBg"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                            ControlToValidate="txtMp3PlayerBg" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerLeftBg" runat="server" ControlName="txtMp3PlayerLeftBg">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerLeftBg" runat="server"></asp:TextBox>&nbsp; <a id="pickMp3PlayerLeftBg"
                            name="pickMp3PlayerLeftBg" href="javascript:void(PickMp3PlayerLeftBg())" target="_self">
                            <asp:Image ID="Image2" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMp3PlayerLeftBg"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server"
                            ControlToValidate="txtMp3PlayerLeftBg" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerRightBg" runat="server" ControlName="txtMp3PlayerRightBg">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerRightBg" runat="server"></asp:TextBox>&nbsp; <a id="pickMp3PlayerRightBg"
                            name="pickMp3PlayerRightBg" href="javascript:void(PickMp3PlayerRightBg())" target="_self">
                            <asp:Image ID="Image3" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtMp3PlayerRightBg"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server"
                            ControlToValidate="txtMp3PlayerRightBg" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerRightBgHover" runat="server" ControlName="txtMp3PlayerRightBgHover">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerRightBgHover" runat="server"></asp:TextBox>&nbsp; <a
                            id="pickMp3PlayerRightBgHover" name="pickMp3PlayerRightBgHover" href="javascript:void(PickMp3PlayerRightBgHover())"
                            target="_self">
                            <asp:Image ID="Image4" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtMp3PlayerRightBgHover"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator19" runat="server"
                            ControlToValidate="txtMp3PlayerRightBgHover" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerLeftIcon" runat="server" ControlName="txtMp3PlayerLeftIcon">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerLeftIcon" runat="server"></asp:TextBox>&nbsp; <a id="pickMp3PlayerLeftIcon"
                            name="pickMp3PlayerLeftIcon" href="javascript:void(PickMp3PlayerLeftIcon())"
                            target="_self">
                            <asp:Image ID="Image5" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtMp3PlayerLeftIcon"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator20" runat="server"
                            ControlToValidate="txtMp3PlayerLeftIcon" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerRightIcon" runat="server" ControlName="txtMp3PlayerRightIcon">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerRightIcon" runat="server"></asp:TextBox>&nbsp; <a id="pickMp3PlayerRightIcon"
                            name="pickMp3PlayerRightIcon" href="javascript:void(PickMp3PlayerRightIcon())"
                            target="_self">
                            <asp:Image ID="Image6" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtMp3PlayerRightIcon"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator21" runat="server"
                            ControlToValidate="txtMp3PlayerRightIcon" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerRightIconHover" runat="server" ControlName="txtMp3PlayerRightIconHover">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerRightIconHover" runat="server"></asp:TextBox>&nbsp;
                        <a id="pickMp3PlayerRightIconHover" name="pickMp3PlayerRightIconHover" href="javascript:void(PickMp3PlayerRightIconHover())"
                            target="_self">
                            <asp:Image ID="Image7" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtMp3PlayerRightIconHover"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator22" runat="server"
                            ControlToValidate="txtMp3PlayerRightIconHover" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerText" runat="server" ControlName="txtMp3PlayerText"></dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerText" runat="server"></asp:TextBox>&nbsp; <a id="pickMp3PlayerText"
                            name="pickMp3PlayerText" href="javascript:void(PickMp3PlayerText())" target="_self">
                            <asp:Image ID="Image8" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtMp3PlayerText"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator23" runat="server"
                            ControlToValidate="txtMp3PlayerText" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerSlider" runat="server" ControlName="txtMp3PlayerSlider">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerSlider" runat="server"></asp:TextBox>&nbsp; <a id="pickMp3PlayerSlider"
                            name="pickMp3PlayerSlider" href="javascript:void(PickMp3PlayerSlider())" target="_self">
                            <asp:Image ID="Image9" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtMp3PlayerSlider"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator24" runat="server"
                            ControlToValidate="txtMp3PlayerSlider" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerTrack" runat="server" ControlName="txtMp3PlayerTrack">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerTrack" runat="server"></asp:TextBox>&nbsp; <a id="pickMp3PlayerTrack"
                            name="pickMp3PlayerTrack" href="javascript:void(PickMp3PlayerTrack())" target="_self">
                            <asp:Image ID="Image10" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtMp3PlayerTrack"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator25" runat="server"
                            ControlToValidate="txtMp3PlayerTrack" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerLoader" runat="server" ControlName="txtMp3PlayerLoader">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerLoader" runat="server"></asp:TextBox>&nbsp; <a id="pickMp3PlayerLoader"
                            name="pickMp3PlayerLoader" href="javascript:void(PickMp3PlayerLoader())" target="_self">
                            <asp:Image ID="Image11" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtMp3PlayerLoader"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator26" runat="server"
                            ControlToValidate="txtMp3PlayerLoader" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerBorder" runat="server" ControlName="txtMp3PlayerBorder">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerBorder" runat="server"></asp:TextBox>&nbsp; <a id="pickMp3PlayerBorder"
                            name="pickMp3PlayerBorder" href="javascript:void(PickMp3PlayerBorder())" target="_self">
                            <asp:Image ID="Image12" runat="server" ImageAlign="Top" ResourceKey="PickColor" ImageUrl="~/DesktopModules/CrossArticle/images/ColorPick.jpg" /></a>&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtMp3PlayerBorder"
                            CssClass="NormalRed" ResourceKey="Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator27" runat="server"
                            ControlToValidate="txtMp3PlayerBorder" CssClass="NormalRed" ResourceKey="InvalidHex"
                            SetFocusOnError="True" ValidationExpression="0[x/X][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F][0-9/a-f/A-F]" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3PlayerStyle" runat="server" ControlName="txtMp3PlayerStyle">
                        </dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3PlayerStyle" runat="server" Width="400px"></asp:TextBox>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plMp3ImgMargin" runat="server" ControlName="txtMp3ImgMargin"></dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMp3ImgMargin" runat="server" Width="400px"></asp:TextBox>&nbsp;
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <dnn:sectionhead ID="secAnarchyFlv" runat="server" Section="tblAnarchyFlv" ResourceKey="secAnarchyFlv"
                IncludeRule="True" IsExpanded="True" CssClass="SubHead"></dnn:sectionhead>
            <table cellspacing="2" cellpadding="2" runat="server" id="tblAnarchyFlv" width="100%">
                <tr>
                    <td style="width: 250px">
                        <dnn:label ID="plFlvWidth" runat="server" ControlName="txtFlvWidth"></dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFlvWidth" runat="server"></asp:TextBox>px
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plFlvHeight" runat="server" ControlName="txtFlvHeight"></dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFlvHeight" runat="server"></asp:TextBox>px
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plFlvFullScreen" runat="server" ControlName="chkFlvFullScreen"></dnn:label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkFlvFullScreen" runat="server"></asp:CheckBox>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <dnn:sectionhead ID="secAnarchyQt" runat="server" Section="tblAnarchyQt" ResourceKey="secAnarchyQt"
                IncludeRule="True" IsExpanded="True" CssClass="SubHead"></dnn:sectionhead>
            <table cellspacing="2" cellpadding="2" runat="server" id="tblAnarchyQt" width="100%">
                <tr>
                    <td style="width: 250px">
                        <dnn:label ID="plQtLoop" runat="server" ControlName="chkQtLoop"></dnn:label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkQtLoop" runat="server" Width="40px"></asp:CheckBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plQtWidth" runat="server" ControlName="txtQtWidth"></dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtQtWidth" runat="server"></asp:TextBox>px
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plQtHeight" runat="server" ControlName="txtQtHeight"></dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtQtHeight" runat="server"></asp:TextBox>px
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plQtkiosk" runat="server" ControlName="chkQtkiosk"></dnn:label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkQtkiosk" runat="server" Width="40px"></asp:CheckBox>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <dnn:sectionhead ID="secAnarchyWmv" runat="server" Section="tblAnarchyWmv" ResourceKey="secAnarchyWmv"
                IncludeRule="True" IsExpanded="True" CssClass="SubHead"></dnn:sectionhead>
            <table cellspacing="2" cellpadding="2" runat="server" id="tblAnarchyWmv" width="100%">
                <tr>
                    <td style="width: 250px">
                        <dnn:label ID="plWmvWidth" runat="server" ControlName="txtWmvWidth"></dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtWmvWidth" runat="server"></asp:TextBox>px
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:label ID="plWmvHeight" runat="server" ControlName="txtWmvHeight"></dnn:label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtWmvHeight" runat="server"></asp:TextBox>px
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<p align="center">
    <asp:LinkButton CssClass="dnnPrimaryAction" ID="cmdUpdate" OnClick="cmdUpdate_Click"
        resourcekey="cmdUpdate" runat="server" BorderStyle="none" Text="Update"></asp:LinkButton>&nbsp;
    <asp:HyperLink runat="server" ID="hlCancel" ResourceKey="cmdCancel" CssClass="dnnSecondaryAction"
        NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>" />
</p>
