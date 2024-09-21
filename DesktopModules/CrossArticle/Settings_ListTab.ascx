<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.Settings_ListTab, App_Web_settings_listtab.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="sectionhead" Src="~/controls/SectionHeadControl.ascx" %>
<dnn:sectionhead ID="secGeneral" runat="server" Section="tblGeneral" ResourceKey="secGeneral"
    IncludeRule="True" IsExpanded="true" CssClass="SubHead"></dnn:sectionhead>
<table id="tblGeneral" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plType" runat="server" ControlName="ddlType" />
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
            <dnn:label ID="plTemplate" runat="server" ControlName="ddlTemplate" />
        </td>
        <td>
            <asp:DropDownList ID="ddlTemplate" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" resourcekey="Tip_DetailTab" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plDetailTab" runat="server" ControlName="ddlDetailTab" />
        </td>
        <td>
            <asp:DropDownList ID="ddlDetailTab" DataValueField="TabId" DataTextField="IndentedTabName"
                runat="server">
            </asp:DropDownList>
        </td>
    </tr>
     <tr>
        <td colspan="2">
            <asp:Label ID="Label4" runat="server" resourcekey="Tip_RowAndColumn" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plRowCount" runat="server" ControlName="txtRowCount"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtRowCount" runat="server" Columns="4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" resourcekey="MustBeInteger"
                runat="server" ValidationExpression="\d*" ControlToValidate="txtRowCount"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plColCount" runat="server" ControlName="txtColCount"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtColCount" runat="server" Columns="4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator2" resourcekey="MustBeInteger"
                runat="server" ValidationExpression="\d*" ControlToValidate="txtColCount"></asp:RegularExpressionValidator>
        </td>
    </tr>
    
    <tr>
        <td>
            <dnn:label ID="plFeatured" runat="server" ControlName="chkFeatured" />
        </td>
        <td>
            <asp:CheckBox ID="chkFeatured" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plIgnoreSortIndex" runat="server" ControlName="chkIgnoreSortIndex">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkIgnoreSortIndex" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plSortField" runat="server" Text="Sort By" ControlName="ddlSortField" />
        </td>
        <td>
            <asp:DropDownList ID="ddlSortField" runat="server">
                <asp:ListItem Value="CreationDateDesc" resourcekey="li_SortField_CreationDateDesc" />
                <asp:ListItem Value="CreationDateAsc" resourcekey="li_SortField_CreationDateAsc" />
                <asp:ListItem Value="PublishDateDesc" resourcekey="li_SortField_PublishDateDesc" />
                <asp:ListItem Value="PublishDateAsc" resourcekey="li_SortField_PublishDateAsc" />
                <asp:ListItem Value="LastModifiedDateDesc" resourcekey="li_SortField_LastModifiedDateDesc" />
                <asp:ListItem Value="LastModifiedDateAsc" resourcekey="li_SortField_LastModifiedDateAsc" />
                <asp:ListItem Value="ViewsDesc" resourcekey="li_SortField_ViewsDesc" />
                <asp:ListItem Value="ViewsAsc" resourcekey="li_SortField_ViewsAsc" />
                <asp:ListItem Value="TitleDesc" resourcekey="li_SortField_TitleDesc" />
                <asp:ListItem Value="TitleAsc" resourcekey="li_SortField_TitleAsc" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr id="Tr1" runat="server" visible="false">
        <td colspan="2">
            <asp:Label ID="Label10" runat="server" resourcekey="Tip_PublishDateType" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr id="Tr2" runat="server" visible="false">
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
            <dnn:label ID="plLinkTarget" ControlName="ddlLinkTarget" runat="server" />
        </td>
        <td>
            <asp:DropDownList ID="ddlLinkTarget" runat="server">
                <asp:ListItem Value="_self" resourcekey="li_LinkTarget_Self">_Self</asp:ListItem>
                <asp:ListItem Value="_blank" resourcekey="li_LinkTarget_Blank">_Blank</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
  
</table>

<dnn:sectionhead ID="secJqueryTab" runat="server" Section="tblJqueryTab" ResourceKey="secJqueryTab"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblJqueryTab" cellspacing="0" cellpadding="2" width="100%" border="0"
    runat="server" class="dnnFormItem">
     <tr>
        <td colspan="2">
            <asp:Label ID="Label3" runat="server" resourcekey="Tip_JQueryUI" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plCssStyle" runat="server" ControlName="ddlCssStyle">
            </dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlCssStyle" runat="server" >
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plHeightStyle" runat="server" ControlName="ddlHeightStyle">
            </dnn:label>
        </td>
        <td>
             <asp:DropDownList ID="ddlHeightStyle" runat="server">
                <asp:ListItem Value="auto" resourcekey="li_HeightStyle_auto"></asp:ListItem>
                <asp:ListItem Value="fill" resourcekey="li_HeightStyle_fill"></asp:ListItem>
                <asp:ListItem Value="content" resourcekey="li_HeightStyle_content"></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plActiveMode" runat="server" ControlName="rblActiveMode">
            </dnn:label>
        </td>
        <td>
             <asp:RadioButtonList ID="rblActiveMode" runat="server" RepeatColumns="3">
                <asp:ListItem Value="click" resourcekey="li_ActiveMode_click"></asp:ListItem>
                <asp:ListItem Value="hover" resourcekey="li_ActiveMode_hover"></asp:ListItem>
                <asp:ListItem Value="autorotate" resourcekey="li_ActiveMode_autorotate"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plRotateInterval" runat="server" ControlName="txtRotateInterval">
            </dnn:label>
        </td>
        <td>
             <asp:TextBox ID="txtRotateInterval" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator3" resourcekey="MustBeInteger"
                runat="server" ValidationExpression="\d*" ControlToValidate="txtRotateInterval"></asp:RegularExpressionValidator>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plStartTab" runat="server" ControlName="ddlStartTab">
            </dnn:label>
        </td>
        <td>
             <asp:DropDownList ID="ddlStartTab" runat="server">
              <asp:ListItem Value="0"  Text="0" ></asp:ListItem>
                <asp:ListItem Value="1"  Text="1" ></asp:ListItem>
              <asp:ListItem Value="2"  Text="2" ></asp:ListItem>
                <asp:ListItem Value="3"  Text="3" ></asp:ListItem>
                 <asp:ListItem Value="4"  Text="4" ></asp:ListItem>
                <asp:ListItem Value="5"  Text="5" ></asp:ListItem>
                 <asp:ListItem Value="6"  Text="6" ></asp:ListItem>
                <asp:ListItem Value="7"  Text="7" ></asp:ListItem>
               
            </asp:DropDownList>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secCategory" runat="server" Section="tblCategory"
    ResourceKey="secCategory" IncludeRule="True" IsExpanded="false" CssClass="SubHead">
</dnn:sectionhead>
<table id="tblCategory" cellspacing="0" cellpadding="2" width="100%" border="0"
    runat="server" class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label16" runat="server" resourcekey="Tip_Category" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plTabCategory1" runat="server" ControlName="ddlTabCategory1"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTabCategory1" runat="server" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory1Title" runat="server" ControlName="txtTabCategory1Title"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtTabCategory1Title" runat="server"></asp:TextBox>
         
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory2" runat="server" ControlName="ddlTabCategory2"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTabCategory2" runat="server" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory2Title" runat="server" ControlName="txtTabCategory2Title"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtTabCategory2Title" runat="server"></asp:TextBox>
         
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plTabCategory3" runat="server" ControlName="ddlTabCategory3"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTabCategory3" runat="server" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory3Title" runat="server" ControlName="txtTabCategory3Title"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtTabCategory3Title" runat="server"></asp:TextBox>
         
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory4" runat="server" ControlName="ddlTabCategory4"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTabCategory4" runat="server" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory4Title" runat="server" ControlName="txtTabCategory4Title"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtTabCategory4Title" runat="server"></asp:TextBox>
         
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plTabCategory5" runat="server" ControlName="ddlTabCategory5"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTabCategory5" runat="server" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory5Title" runat="server" ControlName="txtTabCategory5Title"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtTabCategory5Title" runat="server"></asp:TextBox>
         
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plTabCategory6" runat="server" ControlName="ddlTabCategory6"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTabCategory6" runat="server" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory6Title" runat="server" ControlName="txtTabCategory6Title"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtTabCategory6Title" runat="server"></asp:TextBox>
         
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plTabCategory7" runat="server" ControlName="ddlTabCategory7"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTabCategory7" runat="server" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory7Title" runat="server" ControlName="txtTabCategory7Title"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtTabCategory7Title" runat="server"></asp:TextBox>
         
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory8" runat="server" ControlName="ddlTabCategory8"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTabCategory8" runat="server" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plTabCategory8Title" runat="server" ControlName="txtTabCategory8Title"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtTabCategory8Title" runat="server"></asp:TextBox>
         
        </td>
    </tr>
</table>

<dnn:sectionhead ID="secImage" runat="server" Section="tblImage" ResourceKey="secImage"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblImage" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plShowPrefixImage" runat="server" ControlName="chkShowPrefixImage" />
        </td>
        <td>
            <asp:CheckBox ID="chkShowPrefixImage" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plPrefixImage" ControlName="ddlPrefixImage" runat="server" />
        </td>
        <td>
            <asp:DropDownList ID="ddlPrefixImage" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowImage" runat="server" ControlName="chkShowImage" />
        </td>
        <td>
            <asp:CheckBox ID="chkShowImage" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowImageOnly" runat="server" ControlName="chkShowImageOnly" />
        </td>
        <td>
            <asp:CheckBox ID="chkShowImageOnly" runat="server"></asp:CheckBox>
        </td>
    </tr>
    
    <tr>
        <td colspan="2">
            <asp:Label ID="Label9" runat="server" resourcekey="Tip_ImageSize" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plImageWidth" runat="server" ControlName="txtImageWidth" />
        </td>
        <td>
            <asp:TextBox ID="txtImageWidth" runat="server" Columns="4"></asp:TextBox>
            <asp:CheckBox ID="chkForceImageWidth" runat="server" Text="Force Image Width" resourcekey="chkForceImageWidth">
            </asp:CheckBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator4" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtImageWidth"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plImageHeight" runat="server" ControlName="txtImageHeight" />
        </td>
        <td>
            <asp:TextBox ID="txtImageHeight" runat="server" Columns="4"></asp:TextBox>
            <asp:CheckBox ID="chkForceImageHeight" runat="server" Text="Force Image Height" resourcekey="chkForceImageHeight">
            </asp:CheckBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator13" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtImageHeight"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>


<dnn:sectionhead ID="secContent" runat="server" Section="tblContent" ResourceKey="secContent"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblContent" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label7" runat="server" resourcekey="Tip_DisplayContent" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
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
            <dnn:label ID="plTitleLength" runat="server" ControlName="txtTitleLength"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtTitleLength" runat="server" Columns="4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator8" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtTitleLength"></asp:RegularExpressionValidator>
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
            <dnn:label ID="plShowAuthorCompany" runat="server" ControlName="chkShowAuthorCompany"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthorCompany" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td colspan="2">
            <asp:Label ID="Label21" runat="server" resourcekey="Tip_ShowLocation" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowLocation_Country" runat="server" ControlName="chkShowLocation_Country"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLocation_Country" runat="server"></asp:CheckBox>
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plShowLocation_State" runat="server" ControlName="chkShowLocation_State"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLocation_State" runat="server"></asp:CheckBox>
        </td>
    </tr>
      <tr>
        <td>
            <dnn:label ID="plShowLocation_City" runat="server" ControlName="chkShowLocation_City"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLocation_City" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowLocation_Town" runat="server" ControlName="chkShowLocation_Town"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowLocation_Town" runat="server"></asp:CheckBox>
        </td>
    </tr>
       <tr>
        <td colspan="2">
            <br />
        </td>
    </tr>
    <tr id="Tr3" runat="server" visible="<%#CurrentType.FieldEnable_Author %>">
        <td style="width: 200px">
            <dnn:label ID="plShowAuthor" runat="server" ControlName="chkShowAuthor"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthor" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr id="Tr4" runat="server" visible="<%#CurrentType.FieldEnable_Source %>">
        <td style="width: 200px">
            <dnn:label ID="plShowSource" runat="server" ControlName="chkShowSource"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowSource" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowRecommend" runat="server" ControlName="chkShowRecommend"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowRecommend" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr id="Tr5" runat="server" visible="<%#CurrentType.FieldEnable_Summary %>">
        <td style="width: 200px">
            <dnn:label ID="plShowSummary" runat="server" ControlName="chkShowSummary"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowSummary" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr id="Tr6" runat="server" visible="<%#CurrentType.FieldEnable_Summary %>">
        <td>
            <dnn:label ID="plSummaryLength" runat="server" ControlName="txtSummaryLength"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtSummaryLength" runat="server" Columns="4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator7" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtSummaryLength"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowPublishDate" runat="server" ControlName="chkShowPublishDate"
                Text="Show Publish Date"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowPublishDate" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowFeaturedField" runat="server" ControlName="chkShowFeaturedField"
                Text="Show Featured Field"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowFeaturedField" runat="server"></asp:CheckBox>
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
    
</table>
<dnn:sectionhead ID="secUDField" runat="server" Section="tblUDField" ResourceKey="secUDField"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead" Visible="false"></dnn:sectionhead>
<table id="tblUDField" cellspacing="0" cellpadding="2" border="0" runat="server"
    class="dnnFormItem" width="100%" visible="false">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label8" runat="server" resourcekey="Tip_UdField" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plUseBuiltInTemplate" runat="server" ControlName="chkUseBuiltInTemplate" />
        </td>
        <td>
            <asp:CheckBox ID="chkUseBuiltInTemplate" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDFieldList" runat="server" ControlName="cblUDFieldList" />
        </td>
        <td>
            <asp:CheckBoxList ID="cblUDFieldList" runat="server" RepeatColumns="2" RepeatDirection="Horizontal"
                DataTextField="FieldName" DataValueField="Id">
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDField_ImageWidth" runat="server" ControlName="txtUDField_ImageWidth">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtUDField_ImageWidth" runat="server" Columns="4"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDField_ImageHeight" runat="server" ControlName="txtUDField_ImageHeight" />
        </td>
        <td>
            <asp:TextBox ID="txtUDField_ImageHeight" runat="server" Columns="4"></asp:TextBox>
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
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator9" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtUDField_CheckBoxList_RepeatColumns"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>


<p align="center">
    <asp:LinkButton CssClass="dnnPrimaryAction" ID="cmdUpdate" OnClick="cmdUpdate_Click"
        resourcekey="cmdUpdate" runat="server" BorderStyle="none" Text="Update" CausesValidation="true"></asp:LinkButton>&nbsp;&nbsp;
    <asp:HyperLink runat="server" ID="hlCancel" ResourceKey="cmdCancel" CssClass="dnnSecondaryAction"
        NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>" />
</p>
