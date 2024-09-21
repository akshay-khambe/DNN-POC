<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.AdminGeneral_Settings, App_Web_admingeneral_settings.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="sectionhead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="URL" Src="~/controls/URLControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls" %>
<div class="dnnFormItem dnnFormHelp dnnClear">
    <p align="right">
        <span>
            <asp:Image ID="Image6" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg" />
            <%=LocalizeString("RequiredFields")%>
        </span>
    </p>
</div>
<dnn:sectionhead ID="secGeneral" runat="server" Section="tblGeneral" ResourceKey="secGeneral"
    IncludeRule="True" IsExpanded="True" CssClass="SubHead"></dnn:sectionhead>
<table id="tblGeneral" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
    <tr >
        <td style="width: 250px">
            <dnn:Label ID="plRequireApproval" runat="server" ControlName="chkRequireApproval">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkRequireApproval" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plManagerEmail" runat="server" ControlName="txtManagerEmail"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtManagerEmail" runat="server" Columns="30"></asp:TextBox>
            <asp:Image ID="Image9" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtManagerEmail" resourcekey="Required"
                ID="RequiredFieldValidator4" />
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator3" resourcekey="Tip_InvalidEmail"
                runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtManagerEmail" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" resourcekey="Tip_EmailWhenNew" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plEmailWhenNew" runat="server" ControlName="chkEmailWhenNew"></dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkEmailWhenNew" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plCategorySelectCount" runat="server" ControlName="txtCategorySelectCount">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtCategorySelectCount" runat="server" width="200px"></asp:TextBox>1-10
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCategorySelectCount"
                resourcekey="MustBetween1To10" MinimumValue="1" MaximumValue="10" Type="Integer"
                ForeColor="Red">
            </asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plTagSelectCount" runat="server" ControlName="txtTagSelectCount">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTagSelectCount" runat="server" width="200px"></asp:TextBox>1-10
            <asp:RangeValidator ID="rang1" runat="server" ControlToValidate="txtTagSelectCount"
                resourcekey="MustBetween1To10" MinimumValue="1" MaximumValue="10" Type="Integer"
                ForeColor="Red"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" resourcekey="Tip_EnableRelated" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plEnableDocument" runat="server" ControlName="chkEnableDocument" />
        </td>
        <td>
            <asp:CheckBox ID="chkEnableDocument" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plEnableVideo" runat="server" ControlName="chkEnableVideo" />
        </td>
        <td>
            <asp:CheckBox ID="chkEnableVideo" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plEnableAudio" runat="server" ControlName="chkEnableAudio" />
        </td>
        <td>
            <asp:CheckBox ID="chkEnableAudio" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plEnableImage" runat="server" ControlName="chkEnableImage" />
        </td>
        <td>
            <asp:CheckBox ID="chkEnableImage" runat="server" />
        </td>
    </tr>
    <tr runat="server" visible="false">
        <td colspan="2">
            <asp:Label ID="Label3" runat="server" resourcekey="Tip_SpecifyListPageForCategory"
                CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr  runat="server" visible="false">
        <td>
            <dnn:Label ID="plSpecifyListPageForCategory" runat="server" ControlName="chkSpecifyListPageForCategory">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkSpecifyListPageForCategory" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr runat="server" visible="false">
        <td colspan="2">
            <asp:Label ID="Label4" runat="server" resourcekey="Tip_SpecifyDetailPageForArticle"
                CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr runat="server" visible="false">
        <td>
            <dnn:Label ID="plSpecifyDetailPageForArticle" runat="server" ControlName="chkSpecifyDetailPageForArticle">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkSpecifyDetailPageForArticle" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label5" runat="server" resourcekey="Tip_SpecifyArticleCreatedDate"
                CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plSpecifyArticleCreatedDate" runat="server" ControlName="chkSpecifyArticleCreatedDate">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkSpecifyArticleCreatedDate" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label6" runat="server" resourcekey="Tip_ShowUnauthInManage" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plShowUnauthInManage" runat="server" ControlName="chkShowUnauthInManage">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkShowUnauthInManage" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plViewRoles" runat="server" ControlName="chkViewRoles"></dnn:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="chkViewRoles" runat="server" CellSpacing="2" CellPadding="2"
                RepeatColumns="4">
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label7" runat="server" resourcekey="Tip_ManageRoles" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plArticleManageRoles" runat="server" ControlName="chkArticleManageRoles">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="chkArticleManageRoles" runat="server" CellSpacing="2" CellPadding="2"
                RepeatColumns="4">
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label8" runat="server" resourcekey="Tip_EditorRoles" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plArticleEditorRoles" runat="server" ControlName="chkArticleEditorRoles">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="chkArticleEditorRoles" runat="server" CellSpacing="2" CellPadding="2"
                RepeatColumns="4">
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label21" runat="server" resourcekey="Tip_EmptyImage" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
     <tr >
        <td >
            <dnn:Label ID="plEnableEmptyImage" runat="server" ControlName="chkEnableEmptyImage">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkEnableEmptyImage" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plEmptyImage" runat="server" ControlName="ctlEmptyImage"></dnn:Label>
        </td>
        <td>
            <dnn:URL ID="ctlEmptyImage" runat="server" Width="400px" ShowTabs="False" ShowFiles="True"
                FileFilter="jpg,jpeg,png,bmg,jpe,gif" ShowUrls="False" UrlType="F" ShowLog="False"
                ShowNewWindow="False" ShowTrack="False"></dnn:URL>
        </td>
    </tr>

     <tr>
        <td>
            <dnn:Label ID="plEnableSocialShare" runat="server" ControlName="chkEnableSocialShare" />
        </td>
        <td>
            <asp:CheckBox ID="chkEnableSocialShare" runat="server" />
        </td>
    </tr>

    <tr>
        <td>
            <dnn:Label ID="plEnableSilverlightUpload" runat="server" ControlName="chkEnableSilverlightUpload" />
        </td>
        <td>
            <asp:CheckBox ID="chkEnableSilverlightUpload" runat="server" />
        </td>
    </tr>

     <tr>
        <td>
            <dnn:Label ID="plShowSettingActionButton" runat="server" ControlName="chkShowSettingActionButton" />
        </td>
        <td>
            <asp:CheckBox ID="chkShowSettingActionButton" runat="server" />
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secFileStorage" runat="server" Section="tblFileStorage" ResourceKey="secFileStorage"
    IncludeRule="True" IsExpanded="False" CssClass="SubHead"></dnn:sectionhead>
<table id="tblFileStorage" cellspacing="0" cellpadding="2" width="100%" border="0"
    class="dnnFormItem" runat="server">
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plFileStorage" runat="server" ControlName="rblFileStorage"></dnn:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="rblFileStorage" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblFileStorage_SelectedIndexChanged">
                <asp:ListItem Value="Local" ResourceKey="li_FileStorage_Local" />
                <asp:ListItem Value="A3" ResourceKey="li_FileStorage_A3" />
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr runat="server" id="trLocalTip">
        <td colspan="2">
            <asp:Label ID="Label9" runat="server" resourcekey="Tip_UserFolderRoot" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr runat="server" id="trLocal">
        <td>
            <dnn:Label ID="plUserFolderRoot" runat="server" ControlName="txtUserFolderRoot">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtUserFolderRoot" runat="server" Columns="40"></asp:TextBox>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator ID="valNameRequired" runat="server" ControlToValidate="txtUserFolderRoot"
                Display="Dynamic" resourcekey="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr runat="server" id="trA3Tip">
        <td colspan="2">
            <asp:Label ID="Label10" runat="server" resourcekey="Tip_A3" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr runat="server" id="trA3AccessKey">
        <td>
            <dnn:Label ID="plA3AccessKey" runat="server" ControlName="txtA3AccessKey"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtA3AccessKey" runat="server" Columns="70"></asp:TextBox>
            <asp:Image ID="Image3" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtA3AccessKey"
                Display="Dynamic" resourcekey="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr runat="server" id="trA3SecretKey">
        <td>
            <dnn:Label ID="plA3SecretKey" runat="server" ControlName="txtA3SecretKey"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtA3SecretKey" runat="server" Columns="70"></asp:TextBox>
            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtA3SecretKey"
                Display="Dynamic" resourcekey="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr runat="server" id="trA3Bucket">
        <td>
            <dnn:Label ID="plA3Bucket" runat="server" ControlName="txtA3Bucket"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtA3Bucket" runat="server" Columns="70"></asp:TextBox>
            <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtA3Bucket"
                Display="Dynamic" resourcekey="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secVideoConvert_Online" runat="server" Section="tblVideoConvert_Online"
    ResourceKey="secVideoConvert_Online" IncludeRule="True" IsExpanded="false" CssClass="SubHead">
</dnn:sectionhead>
<table id="tblVideoConvert_Online" cellspacing="0" cellpadding="2" width="100%" border="0"
    class="dnnFormItem" runat="server">
    <tr runat="server" id="trVideoConvertTips">
        <td colspan="2">
            <asp:Label ID="lblVideoConvertTips" runat="server" CssClass="dnnFormMessage dnnFormError"
                resourcekey="lblVideoConvertTips"></asp:Label>
        </td>
    </tr>
    <tr align="left" runat="server" id="trVideoConvertHelp">
        <td colspan="2">
            <asp:Label ID="lblHelp_VideoConvert" runat="server" resourcekey="Help_VideoConvert_Online"
                CssClass="dnnFormMessage dnnFormInfo">
            </asp:Label><br />
            <asp:Image runat="server" ID="imgHelp_VideoConvert" ImageUrl="~/DesktopModules/CrossArticle/images/Help/ExecuteSetting.jpg"
                Width="60%" CssClass="dnnFormMessage dnnFormInfo" />
        </td>
    </tr>
    <tr runat="server" id="trPermissionCheck">
        <td style="width: 250px">
            <dnn:Label ID="plPermissionCheck" runat="server" ControlName="lblPermissionCheckOk">
            </dnn:Label>
        </td>
        <td>
            <asp:Image runat="server" ID="imgPermissionCheckOk" ImageUrl="~/DesktopModules/CrossArticle/images/Blue-Ok.gif"
                Visible="false" />
            <asp:Label ID="lblPermissionCheckOk" runat="server" Visible="false" resourcekey="lblPermissionCheckOk"></asp:Label>
            <asp:Image ID="imgPermissionCheckDeny" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/red-error.gif"
                Visible="false" />
            <asp:Label ID="lblPermissionCheckDeny" runat="server" Visible="false" resourcekey="lblPermissionCheckDeny"></asp:Label>
        </td>
    </tr>
    <tr runat="server" id="trVideoConvert">
        <td style="width: 250px">
            <dnn:Label ID="plVideoConvert" runat="server" ControlName="chkVideoConvert"></dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkVideoConvert" runat="server" />
        </td>
    </tr>
    <tr runat="server" id="trVideoConvert_Type">
        <td style="width: 250px">
            <dnn:Label ID="plVideoConvert_Type" runat="server" ControlName="ddlVideoConvert_Type">
            </dnn:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlVideoConvert_Type" runat="server">
                <asp:ListItem Value="Flv" ResourceKey="li_VideoConvert_Type_Flv" />
                <asp:ListItem Value="H264" ResourceKey="li_VideoConvert_Type_H264" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr runat="server" id="trVideoConvert_Width">
        <td style="width: 250px">
            <dnn:Label ID="plVideoConvert_Width" runat="server" ControlName="ddlVideoConvert_Width">
            </dnn:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlVideoConvert_Width" runat="server">
                <asp:ListItem Value="128" Text="128x96 sqcif" />
                <asp:ListItem Value="160" Text="160x120 qqvga" />
                <asp:ListItem Value="176" Text="176x144 qcif" />
                <asp:ListItem Value="320" Text="320x240 qvga" />
                <asp:ListItem Value="352" Text="352x288 cif" />
                <asp:ListItem Value="448" Text="448x336 Flash 7 video" />
                <asp:ListItem Value="480" Text="480x360 YouTube Standard" />
                <asp:ListItem Value="640" Text="640x480 SD" />
                <asp:ListItem Value="800" Text="800x600 svga" />
                <asp:ListItem Value="852" Text="852x480 HD480" />
                <asp:ListItem Value="1024" Text="1024x768 xga" />
                <asp:ListItem Value="1280" Text="1280x720 HD720" />
                <asp:ListItem Value="1600" Text="1600x1200 uxga" />
                <asp:ListItem Value="1920" Text="1920x1080 HD1080" />
                <asp:ListItem Value="-1" ResourceKey="li_VideoConvert_Width_UseExisting" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr runat="server" id="trProcessExitTime">
        <td style="width: 250px">
            <dnn:Label ID="plProcessExitTime" runat="server" ControlName="txtProcessExitTime">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtProcessExitTime" runat="server" width="200px"></asp:TextBox>millisecond
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" resourcekey="MustBeInteger"
                runat="server" ValidationExpression="\d*" ControlToValidate="txtProcessExitTime"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secVideoConvert_Offline" runat="server" Section="tblVideoConvert_Offline"
    ResourceKey="secVideoConvert_Offline" IncludeRule="True" IsExpanded="false" CssClass="SubHead">
</dnn:sectionhead>
<table id="tblVideoConvert_Offline" cellspacing="0" cellpadding="2" width="100%"
    class="dnnFormItem" border="0" runat="server">
    <tr>
        <td colspan="2">
            <asp:Label ID="lblVideoConvert_Offline" runat="server" resourcekey="Help_VideoConvert_Offline"
                CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secWatermark" runat="server" Section="tblWatermark" ResourceKey="secWatermark"
    IncludeRule="True" IsExpanded="False" CssClass="SubHead"></dnn:sectionhead>
<table id="tblWatermark" cellspacing="0" cellpadding="2" border="0" runat="server"
    class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label20" runat="server" resourcekey="Tip_GenerateThumb" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plGenerateThumb" runat="server" ControlName="chkGenerateThumb"></dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkGenerateThumb" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plThumbnailSize" runat="server" ControlName="txtThumbnailSize"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtThumbnailSize" runat="server" width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator6" resourcekey="MustBeInteger"
                runat="server" ValidationExpression="\d*" ControlToValidate="txtThumbnailSize"
                ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label23" runat="server" resourcekey="Tip_Watermark" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td >
            <dnn:Label ID="plAddWatermark" runat="server" ControlName="chkAddWatermark"></dnn:Label>
        </td>
        <td>
            <asp:CheckBox runat="server" ID="chkAddWatermark" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plWatermarkPosition" runat="server" ControlName="ddlWatermarkPosition">
            </dnn:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlWatermarkPosition" runat="server">
                <asp:ListItem Value="TopLeft" ResourceKey="li_WatermarkPosition_TopLeft" />
                <asp:ListItem Value="TopRight" ResourceKey="li_WatermarkPosition_TopRight" />
                <asp:ListItem Value="BottomLeft" ResourceKey="li_WatermarkPosition_BottomLeft" />
                <asp:ListItem Value="BottomRight" ResourceKey="li_WatermarkPosition_BottomRight" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plWatermarkType" runat="server" ControlName="rblWatermarkType"></dnn:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="rblWatermarkType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblWatermarkType_SelectedIndexChanged" RepeatColumns="2">
                <asp:ListItem Value="Text" ResourceKey="li_WatermarkType_Text" />
                <asp:ListItem Value="Image" ResourceKey="li_WatermarkType_Image" />
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr runat="server" id="trWatermarkImage">
        <td>
            <dnn:Label ID="plWatermarkImage" runat="server" ControlName="ctlWatermarkImage">
            </dnn:Label>
        </td>
        <td>
            <dnn:URL ID="ctlWatermarkImage" runat="server" Width="400px" ShowTabs="False" ShowFiles="True"
                FileFilter="gif" ShowUrls="False" UrlType="F" ShowLog="False" ShowNewWindow="False"
                ShowTrack="False"></dnn:URL>
        </td>
    </tr>
    <tr runat="server" id="trWatermarkText">
        <td>
            <dnn:Label ID="plWatermarkText" runat="server" ControlName="txtWatermarkText"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtWatermarkText" runat="server" Columns="80"></asp:TextBox>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/desktopmodules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtWatermarkText"
                Display="Dynamic" resourcekey="Required" CssClass="NormalRed"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr runat="server" id="trTextFontFamily">
        <td>
            <dnn:Label ID="plTextFontFamily" runat="server" ControlName="txtTextFontFamily">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTextFontFamily" runat="server" Columns="40"></asp:TextBox>
            <asp:Image ID="Image11" runat="server" ImageUrl="~/desktopmodules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTextFontFamily"
                Display="Dynamic" resourcekey="Required" CssClass="NormalRed"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr runat="server" id="trTextFontColor">
        <td>
            <dnn:Label ID="plTextFontColor" runat="server" ControlName="txtTextFontColor"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTextFontColor" runat="server" Columns="40"></asp:TextBox>
            <asp:Image ID="Image12" runat="server" ImageUrl="~/desktopmodules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtTextFontColor"
                Display="Dynamic" resourcekey="Required" CssClass="NormalRed"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr runat="server" id="trTextFontBgColor">
        <td>
            <dnn:Label ID="plTextFontBgColor" runat="server" ControlName="txtTextFontBgColor">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTextFontBgColor" runat="server" Columns="70"></asp:TextBox>
            <asp:Image ID="Image13" runat="server" ImageUrl="~/desktopmodules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtTextFontBgColor"
                Display="Dynamic" resourcekey="Required" CssClass="NormalRed"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Image ID="Image14" runat="server" ImageUrl="~/desktopmodules/CrossArticle/images/Watermark_Sample_Text.jpg" /><br />
            <%=LocalizeString("Tip_Watermark_Sample_Text")%><br />
            <br />
            <asp:Image ID="Image15" runat="server" ImageUrl="~/desktopmodules/CrossArticle/images/Watermark_Sample_Gif.jpg" /><br />
            <%=LocalizeString("Tip_Watermark_Sample_Gif")%>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secTwitter" runat="server" Section="tblTwitter" ResourceKey="secTwitter"
    IncludeRule="True" IsExpanded="False" CssClass="SubHead"></dnn:sectionhead>
<table id="tblTwitter" cellspacing="0" cellpadding="2" border="0" runat="server"
    class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label22" runat="server" resourcekey="Tip_TwitterCredential" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plTwitterConsumerKey" runat="server" ControlName="txtTwitterConsumerKey">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTwitterConsumerKey" runat="server" Columns="40"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plTwitterConsumerSecret" runat="server" ControlName="txtTwitterConsumerSecret">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTwitterConsumerSecret" runat="server" Columns="40"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plTwitterAccessToken" runat="server" ControlName="txtTwitterAccessToken">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTwitterAccessToken" runat="server" Columns="40"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plTwitterAccessTokenSecret" runat="server" ControlName="txtTwitterAccessTokenSecret">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTwitterAccessTokenSecret" runat="server" Columns="40"></asp:TextBox>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secJournal" runat="server" Section="tblJournal" ResourceKey="secJournal"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblJournal" cellspacing="0" cellpadding="2" width="100%" border="0" class="dnnFormItem"
    runat="server">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label11" runat="server" resourcekey="Tip_JournalIntegration" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plJournal_Enabled" runat="server" ControlName="chkJournal_Enabled">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkJournal_Enabled" runat="server"></asp:CheckBox>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secSeo" runat="server" Section="tblSeo" ResourceKey="secSeo"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblSeo" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label12" runat="server" resourcekey="Tip_SeoUrl" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plUseSeoFriendlyUrl" runat="server" ControlName="chkUseSeoFriendlyUrl">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkUseSeoFriendlyUrl" runat="server"></asp:CheckBox>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secHelp_DnnSitemap" runat="server" Section="tblHelp_DnnSitemap"
    ResourceKey="secHelp_DnnSitemap" IncludeRule="True" IsExpanded="false" CssClass="SubHead">
</dnn:sectionhead>
<table id="tblHelp_DnnSitemap" cellspacing="0" cellpadding="2" width="100%" border="0"
    class="dnnFormItem" runat="server">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label13" runat="server" resourcekey="Tip_DnnSitemapIntegration" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 300px">
            <dnn:Label ID="plDnnSitemap" runat="server" ControlName="chkDnnSitemap"></dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkDnnSitemap" runat="server" />
        </td>
    </tr>
    <tr>
        <td >
            <dnn:Label ID="plYourSitemap" runat="server" ControlName="hlYourSitemap"></dnn:Label>
        </td>
        <td>
            <asp:HyperLink ID="hlYourSitemap" runat="server" Target="_blank"></asp:HyperLink>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secNewsSiteMap" runat="server" Section="tblNewsSiteMap" ResourceKey="secNewsSiteMap"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblNewsSiteMap" cellspacing="0" cellpadding="2" width="95%" border="0"
    runat="server" class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label14" runat="server" resourcekey="Help_NewsSiteMap" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label15" runat="server" resourcekey="Tip_Publication_Name" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plPublication_Name" runat="server" ControlName="txtPublication_Name">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPublication_Name" runat="server" Columns="60" />
            <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label16" runat="server" resourcekey="Tip_Publication_Language" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plPublication_Language" runat="server" ControlLanguage="txtPublication_Language">
            </dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPublication_Language" runat="server" width="200px" />
            <asp:Image ID="Image8" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plSiteMap" runat="server" ControlName="txtSiteMap"></dnn:Label>
        </td>
        <td>
            <asp:HyperLink ID="hlSiteMap" runat="server" Target="_blank"></asp:HyperLink>
        </td>
    </tr>
</table>
<%--<dnn:sectionhead ID="secGoogleMap" runat="server" Section="tblGoogleMap" ResourceKey="secGoogleMap"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblGoogleMap" cellspacing="0" cellpadding="2" width="100%" border="0"
    class="dnnFormItem" runat="server">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label17" runat="server" resourcekey="Tip_GoogleMapApi" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plGoogleMapApi" runat="server" ControlName="txtGoogleMapApi"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtGoogleMapApi" runat="server" Columns="60"></asp:TextBox>
           <asp:Image ID="Image10" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtGoogleMapApi"
                Display="Dynamic" resourcekey="Required" CssClass="NormalRed"></asp:RequiredFieldValidator>
        </td>
    </tr>
</table>--%>
<dnn:sectionhead ID="secRss" runat="server" Section="tblRss" ResourceKey="secRss"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblRss" cellspacing="0" cellpadding="2" bauthorize="0" width="100%" runat="server"
    class="dnnFormItem">
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plRssItemCounts" runat="server" ControlName="txtRssItemCounts"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtRssItemCounts" runat="server" width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator2" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtRssItemCounts"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plRssTitle" runat="server" ControlName="txtRssTitle"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtRssTitle" runat="server" Columns="40" />
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secReadTrack" runat="server" Section="tblReadTrack" ResourceKey="secReadTrack"
    IncludeRule="True" IsExpanded="False" CssClass="SubHead"></dnn:sectionhead>
<table id="tblReadTrack" cellspacing="0" cellpadding="2" border="0" runat="server" class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label30" runat="server" resourcekey="Tip_ReadTrack" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:Label ID="plReadTrack_Enable" runat="server" ControlName="chkReadTrack_Enable"></dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkReadTrack_Enable" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plReadTrack_TrackAnonymous" runat="server" ControlName="chkReadTrack_TrackAnonymous"></dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkReadTrack_TrackAnonymous" runat="server"></asp:CheckBox>
        </td>
    </tr>
 </table>
<dnn:sectionhead ID="secModulePage_Help" runat="server" Section="tblModulePage_Help"
    ResourceKey="secModulePage_Help" IncludeRule="True" IsExpanded="false" CssClass="SubHead">
</dnn:sectionhead>
<table id="tblModulePage_Help" cellspacing="0" cellpadding="2" width="100%" border="0"
    class="dnnFormItem" runat="server">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label18" runat="server" resourcekey="Tip_ModulePage_Help" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plModulePage_Help" runat="server" ControlName="ddlModulePage_Help">
            </dnn:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlModulePage_Help" DataValueField="TabId" DataTextField="IndentedTabName"
                runat="server">
            </asp:DropDownList>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secComment" runat="server" Section="tblComment" ResourceKey="secComment"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblComment" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
     <tr>
        <td colspan="2">
            <asp:Label ID="Label24" runat="server" resourcekey="Tip_Comment" CssClass="dnnFormMessage dnnFormInfo" />
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plAllowComment" runat="server" ControlName="chkAllowComment"></dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkAllowComment" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plCommentRoles" runat="server" ControlName="chkCommentRoles"></dnn:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="chkCommentRoles" runat="server" CellSpacing="2" CellPadding="2"
                RepeatColumns="4" ResourceKey="chkCommentRoles">
            </asp:CheckBoxList>
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plAutoAuthComment" runat="server" ControlName="chkAutoAuthComment">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkAutoAuthComment" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label19" runat="server" resourcekey="Tip_SendMail" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plSendMail" runat="server" ControlName="chkSendMail"></dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkSendMail" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plSortByDate" runat="server" ControlName="ddlSortByDate"></dnn:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlSortByDate" runat="server">
                <asp:ListItem Value="asc" ResourceKey="li_SortByDate_Asc" />
                <asp:ListItem Value="desc" ResourceKey="li_SortByDate_Desc" />
            </asp:DropDownList>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secRating" runat="server" Section="tblRating" ResourceKey="secRating"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblRating" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
     <tr>
        <td colspan="2">
            <asp:Label ID="Label25" runat="server" resourcekey="Tip_Rating" CssClass="dnnFormMessage dnnFormInfo" />
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plAllowRating" runat="server" ControlName="chkAllowRating"></dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkAllowRating" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plRatingRoles" runat="server" ControlName="chkRatingRoles"></dnn:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="chkRatingRoles" runat="server" CellSpacing="2" CellPadding="2"
                RepeatColumns="4">
            </asp:CheckBoxList>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secRecommend" runat="server" Section="tblRecommend" ResourceKey="secRecommend"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblRecommend" cellspacing="0" cellpadding="2" width="100%" border="0"
    class="dnnFormItem" runat="server">
     <tr>
        <td colspan="2">
            <asp:Label ID="Label26" runat="server" resourcekey="Tip_Recommend" CssClass="dnnFormMessage dnnFormInfo" />
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plAllowRecommend" runat="server" ControlName="chkAllowRecommend">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkAllowRecommend" runat="server"></asp:CheckBox>
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plRecommendRoles" runat="server" ControlName="chkRecommendRoles">
            </dnn:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="chkRecommendRoles" runat="server" CellSpacing="2" CellPadding="2"
                RepeatColumns="4">
            </asp:CheckBoxList>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secDownload" runat="server" Section="tblDownload" ResourceKey="secDownload"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblDownload" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
     <tr>
        <td colspan="2">
            <asp:Label ID="Label27" runat="server" resourcekey="Tip_Download" CssClass="dnnFormMessage dnnFormInfo" />
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plDownloadRoles" runat="server" ControlName="chkDownloadRoles"></dnn:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="chkDownloadRoles" runat="server" CellSpacing="2" CellPadding="2"
                RepeatColumns="4">
            </asp:CheckBoxList>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secVote" runat="server" Section="tblVote" ResourceKey="secVote"
    IncludeRule="True" IsExpanded="false" CssClass="SubHead"></dnn:sectionhead>
<table id="tblVote" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server"
    class="dnnFormItem">
     <tr>
        <td colspan="2">
            <asp:Label ID="Label29" runat="server" resourcekey="Tip_Vote" CssClass="dnnFormMessage dnnFormInfo" />
        </td>
    </tr>
    <tr>
        <td style="width: 250px">
            <dnn:Label ID="plVoteRoles" runat="server" ControlName="chkVoteRoles"></dnn:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="chkVoteRoles" runat="server" CellSpacing="2" CellPadding="2"
                RepeatColumns="4">
            </asp:CheckBoxList>
        </td>
    </tr>
</table>
<dnn:sectionhead ID="secAuthorProfile" runat="server" Section="tblAuthorProfile"
    ResourceKey="secAuthorProfile" IncludeRule="True" IsExpanded="false" CssClass="SubHead">
</dnn:sectionhead>
<table id="tblAuthorProfile" cellspacing="0" cellpadding="2" bauthorize="0" width="100%"
    runat="server" class="dnnFormItem">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label28" runat="server" resourcekey="Tip_AuthorProfile" CssClass="dnnFormMessage dnnFormInfo" />
        </td>
    </tr>
    <tr>
        <td style="width: 200px">
            <dnn:label ID="plAuthorProfile_Field1Enable" runat="server" ControlName="chkAuthorProfile_Field1Enable">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkAuthorProfile_Field1Enable" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field1Title" runat="server" ControlName="txtAuthorProfile_Field1Title">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtAuthorProfile_Field1Title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field2Enable" runat="server" ControlName="chkAuthorProfile_Field2Enable">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkAuthorProfile_Field2Enable" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field2Title" runat="server" ControlName="txtAuthorProfile_Field2Title">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtAuthorProfile_Field2Title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field3Enable" runat="server" ControlName="chkAuthorProfile_Field3Enable">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkAuthorProfile_Field3Enable" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field3Title" runat="server" ControlName="txtAuthorProfile_Field3Title">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtAuthorProfile_Field3Title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field4Enable" runat="server" ControlName="chkAuthorProfile_Field4Enable">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkAuthorProfile_Field4Enable" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field4Title" runat="server" ControlName="txtAuthorProfile_Field4Title">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtAuthorProfile_Field4Title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field5Enable" runat="server" ControlName="chkAuthorProfile_Field5Enable">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkAuthorProfile_Field5Enable" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field5Title" runat="server" ControlName="txtAuthorProfile_Field5Title">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtAuthorProfile_Field5Title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field6Enable" runat="server" ControlName="chkAuthorProfile_Field6Enable">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkAuthorProfile_Field6Enable" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field6Title" runat="server" ControlName="txtAuthorProfile_Field6Title">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtAuthorProfile_Field6Title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field7Enable" runat="server" ControlName="chkAuthorProfile_Field7Enable">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkAuthorProfile_Field7Enable" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field7Title" runat="server" ControlName="txtAuthorProfile_Field7Title">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtAuthorProfile_Field7Title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field8Enable" runat="server" ControlName="chkAuthorProfile_Field8Enable">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkAuthorProfile_Field8Enable" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field8Title" runat="server" ControlName="txtAuthorProfile_Field8Title">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtAuthorProfile_Field8Title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field9Enable" runat="server" ControlName="chkAuthorProfile_Field9Enable">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkAuthorProfile_Field9Enable" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field9Title" runat="server" ControlName="txtAuthorProfile_Field9Title">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtAuthorProfile_Field9Title" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field10Enable" runat="server" ControlName="chkAuthorProfile_Field10Enable">
            </dnn:label>
        </td>
        <td>
            <asp:CheckBox ID="chkAuthorProfile_Field10Enable" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <dnn:label ID="plAuthorProfile_Field10Title" runat="server" ControlName="txtAuthorProfile_Field10Title">
            </dnn:label>
        </td>
        <td>
            <asp:TextBox ID="txtAuthorProfile_Field10Title" runat="server" />
        </td>
    </tr>
</table>
<p align="center">
    <asp:LinkButton ID="lbtnUpdate" OnClick="lbtnUpdate_Click" CssClass="dnnPrimaryAction"
        resourcekey="cmdUpdate" runat="server" BorderStyle="none"></asp:LinkButton>&nbsp;
    <asp:HyperLink runat="server" ID="hlAdminHome" ResourceKey="cmdCancel" CssClass="dnnSecondaryAction"
        NavigateUrl="<%#DotNetNuke.Common.Globals.NavigateURL(TabId)%>" />
</p>
