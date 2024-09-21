<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.Settings_List, App_Web_settings_list.ascx.6c70b780" %>
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
        <td>
            <dnn:label ID="plListType" ControlName="rblListStyle" runat="server" />
        </td>
        <td>
            <asp:RadioButtonList ID="rblListStyle" runat="server">
                <asp:ListItem Value="List" resourcekey="li_ListStyle_List">List</asp:ListItem>
                <asp:ListItem Value="Grid" resourcekey="li_ListStyle_Grid">Grid</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label3" runat="server" resourcekey="Tip_AcceptSearchParm" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAcceptSearchParm" runat="server" ControlName="chkAcceptSearchParm" />
        </td>
        <td>
            <asp:CheckBox ID="chkAcceptSearchParm" runat="server"></asp:CheckBox>
        </td>
    </tr>
       <tr>
        <td colspan="2">
            <asp:Label ID="Label17" runat="server" resourcekey="Tip_UserIdMapping" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUserIdMapping" runat="server" ControlName="txtUserIdMapping" />
        </td>
        <td>
            <asp:TextBox ID="txtUserIdMapping" runat="server"></asp:TextBox>
        </td>
    </tr>

     <tr>
        <td colspan="2">
            <asp:Label ID="Label16" runat="server" resourcekey="Tip_GroupIdMapping" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plGroupIdMapping" runat="server" ControlName="txtGroupIdMapping" />
        </td>
        <td>
            <asp:TextBox ID="txtGroupIdMapping" runat="server"></asp:TextBox>
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

                 <asp:ListItem Value="EventStartDesc" resourcekey="li_SortField_EventStartDesc" />
                <asp:ListItem Value="EventStartAsc" resourcekey="li_SortField_EventStartAsc" />

                 <asp:ListItem Value="EventEndDesc" resourcekey="li_SortField_EventEndDesc" />
                <asp:ListItem Value="EventEndAsc" resourcekey="li_SortField_EventEndAsc" />

            </asp:DropDownList>
        </td>
    </tr>
    <tr runat="server" visible="false">
        <td colspan="2">
            <asp:Label ID="Label10" runat="server" resourcekey="Tip_PublishDateType" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
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
            <dnn:label ID="plLinkTarget" ControlName="ddlLinkTarget" runat="server" />
        </td>
        <td>
            <asp:DropDownList ID="ddlLinkTarget" runat="server">
                <asp:ListItem Value="_self" resourcekey="li_LinkTarget_Self">_Self</asp:ListItem>
                <asp:ListItem Value="_blank" resourcekey="li_LinkTarget_Blank">_Blank</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label12" runat="server" resourcekey="Tip_SearchMode" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plSearchMode" ControlName="rblSearchMode" runat="server" />
        </td>
        <td>
            <asp:RadioButtonList ID="rblSearchMode" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="None" resourcekey="li_SearchMode_None">None</asp:ListItem>
                <asp:ListItem Value="Basic" resourcekey="li_SearchMode_Basic">Basic</asp:ListItem>
                <asp:ListItem Value="Advanced" resourcekey="li_SearchMode_Advanced">Advanced</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secSearch_Basic" runat="server" Section="tblSearch_Basic" ResourceKey="secSearch_Basic"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblSearch_Basic" cellspacing="0" cellpadding="2" width="100%" border="0"
    runat="server" class="dnnFormItem">
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plBasic_TitleInputWidth" runat="server" ControlName="txtBasic_TitleInputWidth">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtBasic_TitleInputWidth" runat="server" Columns="4"></asp:TextBox>px
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator10" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtBasic_TitleInputWidth"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBasic_ShowSortInSearch" runat="server" ControlName="chkBasic_ShowSortInSearch">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBasic_ShowSortInSearch" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBasic_ShowPageInSearch" runat="server" ControlName="chkBasic_ShowPageInSearch">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBasic_ShowPageInSearch" runat="server"></asp:CheckBox>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secSearch_Advanced" runat="server" Section="tblSearch_Advanced"
    ResourceKey="secSearch_Advanced" IncludeRule="True" IsExpanded="false" CssClass="SubHead">
</dnn:sectionhead>
<table id="tblSearch_Advanced" cellspacing="0" cellpadding="2" width="100%" border="0"
    runat="server" class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label11" runat="server" resourcekey="Tip_Advanced_Input" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plWidth_Label" runat="server" ControlName="txtWidth_Label"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtWidth_Label" runat="server" Columns="4"></asp:TextBox>px
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator11" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtWidth_Label"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plWidth_Input" runat="server" ControlName="txtWidth_Input"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtWidth_Input" runat="server" Columns="4"></asp:TextBox>px
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator12" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtWidth_Input"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plWidth_Operator" runat="server" ControlName="txtWidth_Operator">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtWidth_Operator" runat="server" Columns="4"></asp:TextBox>px
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator14" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtWidth_Operator"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label13" runat="server" resourcekey="Tip_RepeatColumns" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plRepeatColumns" runat="server" ControlName="txtRepeatColumns"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtRepeatColumns" runat="server" Columns="4"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label14" runat="server" resourcekey="Tip_Advanced_BuiltInField" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_Title" runat="server" ControlName="chkBuiltInField_Title">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_Title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_Sort" runat="server" ControlName="chkBuiltInField_Sort">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_Sort" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_Paging" runat="server" ControlName="chkBuiltInField_Paging">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_Paging" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_Category" runat="server" ControlName="chkBuiltInField_Category">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_Category" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_Author" runat="server" ControlName="chkBuiltInField_Author">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_Author" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_CreatedDate" runat="server" ControlName="chkBuiltInField_CreatedDate">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_CreatedDate" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_PublishDate" runat="server" ControlName="chkBuiltInField_PublishDate">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_PublishDate" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_ExpireDate" runat="server" ControlName="chkBuiltInField_ExpireDate">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_ExpireDate" runat="server" />
        </td>
    </tr>
      <tr>
        <td>
            <dnn:label ID="plBuiltInField_EventStart" runat="server" ControlName="chkBuiltInField_EventStart">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_EventStart" runat="server" />
        </td>
    </tr>
      <tr>
        <td>
            <dnn:label ID="plBuiltInField_EventEnd" runat="server" ControlName="chkBuiltInField_EventEnd">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_EventEnd" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_Views" runat="server" ControlName="chkBuiltInField_Views">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_Views" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_RatingAverage" runat="server" ControlName="chkBuiltInField_RatingAverage">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_RatingAverage" runat="server" />
        </td>
    </tr>
     <tr>
        <td colspan="2">
            <asp:Label ID="Label20" runat="server" resourcekey="Tip_Advanced_Location" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plBuiltInField_Country" runat="server" ControlName="chkBuiltInField_Country">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_Country" runat="server" />
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plBuiltInField_State" runat="server" ControlName="chkBuiltInField_State">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_State" runat="server" />
        </td>
    </tr>
      <tr>
        <td>
            <dnn:label ID="plBuiltInField_City" runat="server" ControlName="chkBuiltInField_City">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_City" runat="server" />
        </td>
    </tr>
     <tr>
        <td>
            <dnn:label ID="plBuiltInField_Town" runat="server" ControlName="chkBuiltInField_Town">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkBuiltInField_Town" runat="server" />
        </td>
    </tr>
   
    <tr>
        <td colspan="2">
            <asp:Label ID="Label15" runat="server" resourcekey="Tip_Advanced_UDT" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDT_1" runat="server" ControlName="ddlUDT_1"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUDT_1" runat="server" DataTextField="Text" DataValueField="Value" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDT_2" runat="server" ControlName="ddlUDT_2"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUDT_2" runat="server" DataTextField="Text" DataValueField="Value" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDT_3" runat="server" ControlName="ddlUDT_3"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUDT_3" runat="server" DataTextField="Text" DataValueField="Value" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDT_4" runat="server" ControlName="ddlUDT_4"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUDT_4" runat="server" DataTextField="Text" DataValueField="Value" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDT_5" runat="server" ControlName="ddlUDT_5"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUDT_5" runat="server" DataTextField="Text" DataValueField="Value" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDT_6" runat="server" ControlName="ddlUDT_6"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUDT_6" runat="server" DataTextField="Text" DataValueField="Value" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDT_7" runat="server" ControlName="ddlUDT_7"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUDT_7" runat="server" DataTextField="Text" DataValueField="Value" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDT_8" runat="server" ControlName="ddlUDT_8"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUDT_8" runat="server" DataTextField="Text" DataValueField="Value" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDT_9" runat="server" ControlName="ddlUDT_9"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUDT_9" runat="server" DataTextField="Text" DataValueField="Value" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plUDT_10" runat="server" ControlName="ddlUDT_10"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUDT_10" runat="server" DataTextField="Text" DataValueField="Value" />
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secCategory" runat="server" Section="tblCategory" ResourceKey="secCategory"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblCategory" cellspacing="0" cellpadding="2" border="0" runat="server"
    class="dnnFormItem" width="100%">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label4" runat="server" resourcekey="Tip_Category" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plCategory" runat="server" ControlName="tvCategory" />
        </td>
        <td>
            <asp:TreeView ID="tvCategory" runat="server" ImageSet="XPFileExplorer" NodeIndent="10"
                PathSeparator="/" ShowCheckBoxes="All" ExpandDepth="-1">
                <ParentNodeStyle Font-Bold="False" />
                <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px"
                    VerticalPadding="0px" />
                <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px"
                    NodeSpacing="0px" VerticalPadding="2px" />
            </asp:TreeView>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secAuthor" runat="server" Section="tblAuthor" ResourceKey="secAuthor"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblAuthor" cellspacing="0" cellpadding="2" border="0" runat="server" class="dnnFormItem"
    width="100%">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label5" runat="server" resourcekey="Tip_Author" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plAuthor" runat="server" ControlName="cblType" />
        </td>
        <td>
            <asp:CheckBoxList ID="cblAuthor" runat="server" RepeatColumns="4">
            </asp:CheckBoxList>
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
        <td>
            <dnn:label ID="plUseLightBoxEffect" runat="server" ControlName="chkUseLightBoxEffect">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkUseLightBoxEffect" runat="server"></asp:CheckBox>
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

<dnn:sectionhead ID="secPaging" runat="server" Section="tblPaging" ResourceKey="secPaging"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblPaging" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plPaging" runat="server" ControlName="chkShowPage"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowPage" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plRowCount" runat="server" ControlName="txtRowCount"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtRowCount" runat="server" Columns="4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtRowCount"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plColCount" runat="server" ControlName="txtColCount"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtColCount" runat="server" Columns="4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator2" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtColCount"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plPageSpan" runat="server" ControlName="txtPageSpan"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtPageSpan" runat="server" Columns="4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator3" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtPageSpan"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plShowPageInfo" runat="server" ControlName="chkShowPageInfo"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowPageInfo" runat="server"></asp:CheckBox>
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
    <tr id="Tr1" runat="server" visible="<%#CurrentType.FieldEnable_Author %>">
        <td style="width: 200px">
            <dnn:label ID="plShowAuthor" runat="server" ControlName="chkShowAuthor"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowAuthor" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr id="Tr2" runat="server" visible="<%#CurrentType.FieldEnable_Source %>">
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
    <tr id="Tr3" runat="server" visible="<%#CurrentType.FieldEnable_Summary %>">
        <td style="width: 200px">
            <dnn:label ID="plShowSummary" runat="server" ControlName="chkShowSummary"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowSummary" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr id="Tr4" runat="server" visible="<%#CurrentType.FieldEnable_Summary %>">
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
<dnn:sectionhead ID="secRoll" runat="server" Text="Roll" Section="tblRoll" ResourceKey="secRoll"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblRoll" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plRoll" runat="server" Text="Roll" ControlName="chkRoll"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkRoll" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plDirection" runat="server" ControlName="ddlDirection"></dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlDirection" runat="server">
                <asp:ListItem Value="UP" resourcekey="li_Direction_Up">UP</asp:ListItem>
                <asp:ListItem Value="DOWN" resourcekey="li_Direction_Down">DOWN</asp:ListItem>
                <asp:ListItem Value="LEFT" resourcekey="li_Direction_Left">LEFT</asp:ListItem>
                <asp:ListItem Value="RIGHT" resourcekey="li_Direction_Right">RIGHT</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plMarHeight" runat="server" ControlName="txtMarHeight"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtMarHeight" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator5" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtMarHeight"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plScrollAmount" runat="server" ControlName="txtScrollAmount"></dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtScrollAmount" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator6" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtScrollAmount"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secMoreArticles" runat="server" Section="tblMoreArticles" ResourceKey="secMoreArticles"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblMoreArticles" cellspacing="0" cellpadding="2" width="100%" border="0"
    class="dnnFormItem" runat="server">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label6" runat="server" resourcekey="Tip_MoreArticle" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plMoreArticles" runat="server" ControlName="chkMoreArticles"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkMoreArticles" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plMoreArticlesText" runat="server" ControlName="txtMoreArticlesText">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtMoreArticlesText" runat="server" Columns="40"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plMoreArticlesLink" runat="server" ControlName="ddlMoreArticlesLink">
            </dnn:label>
        </td>
        <td>
            <asp:DropDownList ID="ddlMoreArticlesLink" DataValueField="TabId" DataTextField="IndentedTabName"
                runat="server">
            </asp:DropDownList>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secRss" runat="server" Section="tblRss" ResourceKey="secRss"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblRss" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plDisplayRss" runat="server" ControlName="chkDisplayRss"></dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkDisplayRss" runat="server"></asp:CheckBox>
        </td>
    </tr>
</table>
<p align="center">
    <asp:LinkButton CssClass="dnnPrimaryAction" ID="cmdUpdate" OnClick="cmdUpdate_Click"
        resourcekey="cmdUpdate" runat="server" BorderStyle="none" Text="Update" CausesValidation="true"></asp:LinkButton>&nbsp;&nbsp;
    <asp:HyperLink runat="server" ID="hlCancel" ResourceKey="cmdCancel" CssClass="dnnSecondaryAction"
        NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>" />
</p>
