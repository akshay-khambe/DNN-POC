<%@ control language="C#" inherits="Cross.Modules.Article.View.Admin, App_Web_admin.ascx.6c70b780" autoeventwireup="true" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls" %>
<asp:Label ID="lblTrialTips" runat="server" Visible="false" resourcekey="lblTrialTips"
    CssClass="Normal"></asp:Label>
<asp:Label ID="lblNoPermission" runat="server" resourcekey="lblNoPermission" Visible="true"></asp:Label>
<asp:Label ID="lblTrialExpired" runat="server" resourcekey="lblTrialExpired" Visible="false"
    CssClass="NormalRed"></asp:Label>

<asp:LinkButton CssClass="dnnPrimaryAction" ID="lbtnSetupWizard" OnClick="lbtnSetupWizard_Click"
        resourcekey="lbtnSetupWizard" runat="server" BorderStyle="none" CausesValidation="False">
  </asp:LinkButton>

<dnn:SectionHead ID="secHowtostart" CssClass="SubHead" runat="server" Section="tblHowtostart"
     ResourceKey="secHowtostart" IncludeRule="True" IsExpanded="False"
    Visible="false"></dnn:SectionHead>
<table class="dnnFormItem" id="tblHowtostart" cellspacing="2" cellpadding="2" width="100%"
     visible="false" runat="server">
    <tr>
        <td colspan="2" class="dnnFormMessage dnnFormInfo">
            <%=LocalizeString("Help_HowToStart")%>
            <br />
            <%=string.Format(LocalizeString("Help_ReadUserGuide"), FullDomainName + "/DesktopModules/CrossArticle/Help/Cross_Article_User_Guide.pdf")%>
        </td>
    </tr>
</table>
<dnn:SectionHead ID="secHelp_ContentLocalization" CssClass="SubHead" runat="server"
    Section="tblHelp_ContentLocalization" align="left" ResourceKey="secHelp_ContentLocalization"
    IncludeRule="True" IsExpanded="false"></dnn:SectionHead>
<table style="width: 100%;"   cellpadding="2" cellspacing="2"
    runat="server" id="tblHelp_ContentLocalization">
    <tr>
        <td colspan="2" class="dnnFormMessage dnnFormInfo">
            <asp:Label ID="lblHelp_ContentLocalization" runat="server" resourcekey="Help_ContentLocalization"></asp:Label>
        </td>
    </tr>
</table>
<dnn:SectionHead ID="secAdmin" CssClass="SubHead" runat="server" Section="tblAdmin"
     ResourceKey="secAdmin" IncludeRule="True" IsExpanded="true"></dnn:SectionHead>
<table class="dnnFormItem" id="tblAdmin" cellspacing="2" cellpadding="2" width="90%"  align="center"
    visible="false" runat="server">
    <tr id="trAdminGeneral" runat="server">
      
        <td  style="width: 100%">
            <dnn:SectionHead ID="secAdminGeneral" CssClass="SubHead" runat="server" Section="tblAdminGeneral"
                 ResourceKey="secAdminGeneral" IncludeRule="True" IsExpanded="false">
            </dnn:SectionHead>
            <table style="width: 90%;" align="left"  border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblAdminGeneral">
                <tr runat="server" visible="<%#UserInfo.IsInRole(PortalSettings.AdministratorRoleName) %>">
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" resourcekey="Tip_ForAdministratorOnly" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    </td>
                </tr>
                <tr runat="server" id="trAdminGeneral_Settings" visible="false" >
                    <td valign="middle" >
                        <asp:ImageButton ID="ibtnAdminGeneral_Settings" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/GeneralSettings.gif"
                            OnClick="lbtnAdminGeneral_Settings_Click"></asp:ImageButton>
                    </td>
                    <td >
                        <asp:LinkButton ID="lbtnAdminGeneral_Settings" runat="server" resourcekey="lbtnAdminGeneral_Settings"
                            CssClass="NormalBold" OnClick="lbtnAdminGeneral_Settings_Click"></asp:LinkButton><br />
                        <asp:Label ID="lblAdminGeneral_Settings" runat="server" resourcekey="lblAdminGeneral_Settings"></asp:Label>
                    </td>
                </tr>
                 <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                <tr runat="server" id="trAdminGeneral_Role" visible="false">
                    <td valign="middle" >
                        <asp:ImageButton ID="ibtnAdminGeneral_Role" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/icon_securityroles_32px.gif"
                            OnClick="lbtnAdminGeneral_Role_Click"></asp:ImageButton>
                    </td>
                    <td >
                        <asp:LinkButton ID="lbtnAdminGeneral_Role" runat="server" resourcekey="lbtnAdminGeneral_Role"
                            CssClass="NormalBold" OnClick="lbtnAdminGeneral_Role_Click"></asp:LinkButton>
                        <br />
                        <asp:Label ID="lblAdminGeneral_Role" runat="server" resourcekey="lblAdminGeneral_Role"
                            CssClass="Normal"></asp:Label>
                    </td>
                </tr>
                 <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                 <tr runat="server" id="trAdminGeneral_Location" visible="false">
                    <td valign="middle">
                        <asp:ImageButton ID="ibtnAdminGeneral_Location" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Location.gif"
                            OnClick="lbtnAdminGeneral_Location_Click"></asp:ImageButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="lbtnAdminGeneral_Location" runat="server" resourcekey="lbtnAdminGeneral_Location"
                            CssClass="NormalBold" OnClick="lbtnAdminGeneral_Location_Click"></asp:LinkButton>
                        <br />
                        <asp:Label ID="lblAdminGeneral_Location" runat="server" resourcekey="lblAdminGeneral_Location"
                            CssClass="Normal"></asp:Label>
                         <asp:Label ID="lblContentLocalization_Location" runat="server"
                              Visible="<%#SupportsContentLocalization%>" CssClass="Normal"/>
                    </td>
                </tr>
           
            </table>
        </td>
    </tr>
    <tr id="trAdminSystem" runat="server">
        <td valign="top"  width="100%">
            <dnn:SectionHead ID="secAdminSystem" CssClass="SubHead" runat="server" Section="tblAdminSystem"
                 ResourceKey="secAdminSystem" IncludeRule="True" IsExpanded="false">
            </dnn:SectionHead>
            <table style="width: 90%;" align="left"  border="0" cellpadding="1" cellspacing="1" 
                runat="server" id="tblAdminSystem">
                <tbody>
                    <tr>
                        <td colspan="2">
                             <asp:Label ID="lblSystemDataTip" runat="server" 
                              Visible="<%#UserInfo.IsInRole(PortalSettings.AdministratorRoleName) %>" 
                                CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                        </td>
                    </tr>
                    <tr runat="server" id="trAdminArticle_Type" visible="false">
                        <td valign="middle" >
                            <asp:ImageButton ID="ibtnAdminArticle_Type" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Type.gif"
                                OnClick="lbtnAdminArticle_Type_Click"></asp:ImageButton>
                        </td>
                        <td >
                            <asp:LinkButton ID="lbtnAdminArticle_Type" runat="server" resourcekey="lbtnAdminArticle_Type"
                                CssClass="NormalBold" OnClick="lbtnAdminArticle_Type_Click"></asp:LinkButton><br />
                            <asp:Label ID="lblAdminArticle_Type" runat="server" resourcekey="lblAdminArticle_Type"
                                CssClass="Normal"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr runat="server" id="trAdminArticle_Category" visible="false">
                        <td valign="middle" >
                            <asp:ImageButton ID="ibtnAdminArticle_Category" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Category.gif"
                                OnClick="lbtnAdminArticle_Category_Click"></asp:ImageButton>
                        </td>
                        <td >
                            <asp:LinkButton ID="lbtnAdminArticle_Category" runat="server" resourcekey="lbtnAdminArticle_Category"
                                CssClass="NormalBold" OnClick="lbtnAdminArticle_Category_Click"></asp:LinkButton>
                            <br />
                            <asp:Label ID="lblAdminArticle_Category" runat="server" resourcekey="lblAdminArticle_Category"
                                CssClass="Normal"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr runat="server" id="trAdminArticle_UDT" visible="false">
                        <td valign="middle" >
                            <asp:ImageButton ID="ibtnAdminArticle_UDT" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Udt.gif"
                                OnClick="lbtnAdminArticle_UDT_Click"></asp:ImageButton>
                        </td>
                        <td >
                            <asp:LinkButton ID="lbtnAdminArticle_UDT" runat="server" resourcekey="lbtnAdminArticle_UDT"
                                CssClass="NormalBold" OnClick="lbtnAdminArticle_UDT_Click"></asp:LinkButton><br />
                            <asp:Label ID="lblAdminArticle_UDT" runat="server" resourcekey="lblAdminArticle_UDT"
                                CssClass="Normal"></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
    </tr>
    <tr id="trAdminArticle" runat="server">
        <td  width="100%">
            <dnn:SectionHead ID="secAdminArticle" CssClass="SubHead" runat="server" Section="tblAdminArticle"
                 ResourceKey="secAdminArticle" IncludeRule="True" IsExpanded="false">
            </dnn:SectionHead>
            <table style="width: 90%;" align="left"   border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblAdminArticle">
                <tbody>
                    <tr>
                        <td colspan="2">
                             <asp:Label ID="lblManageTip" runat="server" 
                             Visible="<%#UserInfo.IsInRole(PortalSettings.AdministratorRoleName) %>"
                                CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                        </td>
                    </tr>
                    <tr runat="server" id="trAdminArticle_Article" visible="false">
                        <td valign="middle" >
                            <asp:ImageButton ID="ibtnAdminArticle_Article" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Article.gif"
                                OnClick="lbtnAdminArticle_Article_Click"></asp:ImageButton>
                        </td>
                        <td >
                            <asp:LinkButton ID="lbtnAdminArticle_Article" runat="server" resourcekey="lbtnAdminArticle_Article"
                                CssClass="NormalBold" OnClick="lbtnAdminArticle_Article_Click"></asp:LinkButton>
                            <br />
                            <asp:Label ID="lblAdminArticle_Article" runat="server" resourcekey="lblAdminArticle_Article"
                                CssClass="Normal"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr runat="server" id="trAdminArticle_RSS" visible="false">
                        <td valign="middle" >
                            <asp:ImageButton ID="ibtnAdminArticle_RSS" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Feed_32x32.png"
                                OnClick="lbtnAdminArticle_RSS_Click"></asp:ImageButton>
                        </td>
                        <td >
                            <asp:LinkButton ID="lbtnAdminArticle_RSS" runat="server" resourcekey="lbtnAdminArticle_RSS"
                                CssClass="NormalBold" OnClick="lbtnAdminArticle_RSS_Click"></asp:LinkButton>
                            <br />
                            <asp:Label ID="lblAdminArticle_RSS" runat="server" resourcekey="lblAdminArticle_RSS"
                                CssClass="Normal"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr runat="server" id="trAdminArticle_Tag" visible="false">
                        <td valign="middle" >
                            <asp:ImageButton ID="ibtnAdminArticle_Tag" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Tag.gif"
                                OnClick="lbtnAdminArticle_Tag_Click"></asp:ImageButton>
                        </td>
                        <td >
                            <asp:LinkButton ID="lbtnAdminArticle_Tag" runat="server" resourcekey="lbtnAdminArticle_Tag"
                                CssClass="NormalBold" OnClick="lbtnAdminArticle_Tag_Click"></asp:LinkButton>
                            <br />
                            <asp:Label ID="lblAdminArticle_Tag" runat="server" resourcekey="lblAdminArticle_Tag"
                                CssClass="Normal"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr runat="server" id="trAdminArticle_Author" visible="false">
                        <td valign="middle" >
                            <asp:ImageButton ID="ibtnAdminArticle_Author" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/AuthorList.gif"
                                OnClick="lbtnAdminArticle_Author_Click"></asp:ImageButton>
                        </td>
                        <td >
                            <asp:LinkButton ID="lbtnAdminArticle_Author" runat="server" resourcekey="lbtnAdminArticle_Author"
                                CssClass="NormalBold" OnClick="lbtnAdminArticle_Author_Click"></asp:LinkButton>
                            <br />
                            <asp:Label ID="lblAdminArticle_Author" runat="server" resourcekey="lblAdminArticle_Author"
                                CssClass="Normal"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr runat="server" id="trAdminArticle_Import" visible="false">
                        <td valign="middle" >
                            <asp:ImageButton ID="ibtnAdminArticle_Import" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Import.gif"
                                OnClick="lbtnAdminArticle_Import_Click"></asp:ImageButton>
                        </td>
                        <td >
                            <asp:LinkButton ID="lbtnAdminArticle_Import" runat="server" resourcekey="lbtnAdminArticle_Import"
                                CssClass="NormalBold" OnClick="lbtnAdminArticle_Import_Click"></asp:LinkButton><br />
                            <asp:Label ID="lblAdminArticle_Import" runat="server" resourcekey="lblAdminArticle_Import"
                                CssClass="Normal"></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
    </tr>
    <tr id="trAdminPromotion" runat="server">
      
        <td valign="top"  width="100%">
            <dnn:SectionHead ID="secAdminPromotion" CssClass="SubHead" runat="server" Section="tblAdminPromotion"
                 ResourceKey="secAdminPromotion" IncludeRule="True" IsExpanded="false">
            </dnn:SectionHead>
            <table style="width: 90%;" align="left"  border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblAdminPromotion">
                <tbody>
                    <tr runat="server" visible="<%#UserInfo.IsInRole(PortalSettings.AdministratorRoleName) %>">
                        <td colspan="2">
                            <asp:Label ID="Label7" runat="server" resourcekey="Tip_ForAdministratorOnly" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                        </td>
                    </tr>
                    <tr runat="server" id="trAdminArticle_Newsletter" visible="false">
                        <td valign="middle" >
                            <asp:ImageButton ID="ibtnAdminArticle_Newsletter" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/icon_bulkmail_32px.gif"
                                OnClick="lbtnAdminArticle_Newsletter_Click"></asp:ImageButton>
                        </td>
                        <td >
                            <asp:LinkButton ID="lbtnAdminArticle_Newsletter" runat="server" resourcekey="lbtnAdminArticle_Newsletter"
                                CssClass="NormalBold" OnClick="lbtnAdminArticle_Newsletter_Click"></asp:LinkButton>
                            <br />
                            <asp:Label ID="lblAdminArticle_Newsletter" runat="server" resourcekey="lblAdminArticle_Newsletter"
                                CssClass="Normal"></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
    </tr>
</table>
<dnn:SectionHead ID="secAuthor" CssClass="SubHead" runat="server" Section="tblAuthor"
     ResourceKey="secAuthor" IncludeRule="True" IsExpanded="False"></dnn:SectionHead>
<table style="width: 100%;"  border="0" cellpadding="1" cellspacing="1"
    runat="server" id="tblAuthor">
    <tbody>
        <tr runat="server" visible="<%#UserInfo.IsInRole(PortalSettings.AdministratorRoleName) %>">
            <td colspan="2">
                 <asp:Label ID="lblAuthorTip" runat="server" 
                 Visible="<%#UserInfo.IsInRole(PortalSettings.AdministratorRoleName) %>"
                    CssClass="dnnFormMessage dnnFormInfo" ></asp:Label>
            </td>
        </tr>
        <tr runat="server" id="trAuthor_Profile" visible="false">
            <td valign="middle" >
                <asp:ImageButton ID="ibtnAuthor_Profile" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Author.gif"
                    OnClick="lbtnAuthor_Profile_Click"></asp:ImageButton>
            </td>
            <td >
                <asp:LinkButton ID="lbtnAuthor_Profile" runat="server" resourcekey="lbtnAuthor_Profile"
                    CssClass="NormalBold" OnClick="lbtnAuthor_Profile_Click"></asp:LinkButton><br />
                <asp:Label ID="lblAuthor_Profile" runat="server" resourcekey="lblAuthor_Profile"
                    CssClass="Normal"></asp:Label>
            </td>
        </tr>
         <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
        <tr runat="server" id="trAuthor_Folder" visible="false">
            <td valign="middle" >
                <asp:ImageButton ID="ibtnAuthor_Folder" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Folder.gif"
                    OnClick="lbtnAuthor_Folder_Click"></asp:ImageButton>
            </td>
            <td >
                <asp:LinkButton ID="lbtnAuthor_Folder" runat="server" resourcekey="lbtnAuthor_Folder"
                    CssClass="NormalBold" OnClick="lbtnAuthor_Folder_Click"></asp:LinkButton><br />
                <asp:Label ID="lblAuthor_Folder" runat="server" resourcekey="lblAuthor_Folder" CssClass="Normal"></asp:Label>
            </td>
        </tr>
        <tr runat="server" id="trAuthor_File" visible="false">
            <td valign="middle" >
                <asp:ImageButton ID="ibtnAuthor_File" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/File.gif"
                    OnClick="lbtnAuthor_File_Click"></asp:ImageButton>
            </td>
            <td >
                <asp:LinkButton ID="lbtnAuthor_File" runat="server" resourcekey="lbtnAuthor_File"
                    CssClass="NormalBold" OnClick="lbtnAuthor_File_Click"></asp:LinkButton><br />
                <asp:Label ID="lblAuthor_File" runat="server" resourcekey="lblAuthor_File" CssClass="Normal"></asp:Label>
            </td>
        </tr>
         <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
        <tr runat="server" id="trAuthor_Article" visible="false">
            <td valign="middle" >
                <asp:ImageButton ID="ibtnAuthor_Article" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Article.gif"
                    OnClick="lbtnAuthor_Article_Click"></asp:ImageButton>
            </td>
            <td >
                <asp:LinkButton ID="lbtnAuthor_Article" runat="server" resourcekey="lbtnAuthor_Article"
                    CssClass="NormalBold" OnClick="lbtnAuthor_Article_Click"></asp:LinkButton>
                <br />
                <asp:Label ID="lblAuthor_Article" runat="server" resourcekey="lblAuthor_Article"
                    CssClass="Normal"></asp:Label>
            </td>
        </tr>
         <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
        <tr runat="server" id="trAuthor_RSS" visible="false">
            <td valign="middle" >
                <asp:ImageButton ID="ibtnAuthor_RSS" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Feed_32x32.png"
                    OnClick="lbtnAuthor_RSS_Click"></asp:ImageButton>
            </td>
            <td >
                <asp:LinkButton ID="lbtnAuthor_RSS" runat="server" resourcekey="lbtnAuthor_RSS" CssClass="NormalBold"
                    OnClick="lbtnAuthor_RSS_Click"></asp:LinkButton>
                <br />
                <asp:Label ID="lblAuthor_RSS" runat="server" resourcekey="lblAuthor_RSS" CssClass="Normal"></asp:Label>
            </td>
        </tr>
         <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
        <tr runat="server" id="trAuthor_Ticket" visible="false">
            <td valign="middle" >
                <asp:ImageButton ID="ibtnAuthor_Ticket" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Help.gif"
                    OnClick="lbtnAuthor_Ticket_Click"></asp:ImageButton>
            </td>
            <td >
                <asp:LinkButton ID="lbtnAuthor_Ticket" runat="server" resourcekey="lbtnAuthor_Ticket"
                    CssClass="NormalBold" OnClick="lbtnAuthor_Ticket_Click"></asp:LinkButton>
                <br />
                <asp:Label ID="lblAuthor_Ticket" runat="server" resourcekey="lblAuthor_Ticket" CssClass="Normal"></asp:Label>
            </td>
        </tr>
         <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
        <tr runat="server" id="trAuthor_Comment" visible="false">
            <td valign="middle" >
                <asp:ImageButton ID="ibtnAuthor_Comment" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Comment.gif"
                    OnClick="lbtnAuthor_Comment_Click"></asp:ImageButton>
            </td>
            <td >
                <asp:LinkButton ID="lbtnAuthor_Comment" runat="server" resourcekey="lbtnAuthor_Comment"
                    CssClass="NormalBold" OnClick="lbtnAuthor_Comment_Click"></asp:LinkButton>
                <br />
                <asp:Label ID="lblAuthor_Comment" runat="server" resourcekey="lblAuthor_Comment"
                    CssClass="Normal"></asp:Label>
            </td>
        </tr>
    </tbody>
</table>
<dnn:SectionHead ID="secReader" CssClass="SubHead" runat="server" Section="tblReader"
     ResourceKey="secReader" IncludeRule="True" IsExpanded="false"></dnn:SectionHead>
<table style="width: 100%;"  border="0" cellpadding="1" cellspacing="1"
    runat="server" id="tblReader">
    <tbody>
        <tr runat="server" visible="<%#UserInfo.IsInRole(PortalSettings.AdministratorRoleName) %>">
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" resourcekey="Tip_ForRegisterUser" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
            </td>
        </tr>
        <tr runat="server" id="trReader_Watch" visible="false">
            <td valign="middle" >
                <asp:ImageButton ID="ibtnReader_Watch" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Watch.gif"
                    OnClick="lbtnReader_Watch_Click"></asp:ImageButton>
            </td>
            <td >
                <asp:LinkButton ID="lbtnReader_Watch" runat="server" resourcekey="lbtnReader_Watch"
                    CssClass="NormalBold" OnClick="lbtnReader_Watch_Click"></asp:LinkButton>
                <br />
                <asp:Label ID="lblReader_Watch" runat="server" resourcekey="lblReader_Watch" CssClass="Normal"></asp:Label>
            </td>
        </tr>
         <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
        <tr runat="server" id="trReader_Ticket" visible="false">
            <td valign="middle" >
                <asp:ImageButton ID="ibtnReader_Ticket" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/Help.gif"
                    OnClick="lbtnReader_Ticket_Click"></asp:ImageButton>
            </td>
            <td >
                <asp:LinkButton ID="lbtnReader_Ticket" runat="server" resourcekey="lbtnReader_Ticket"
                    CssClass="NormalBold" OnClick="lbtnReader_Ticket_Click"></asp:LinkButton>
                <br />
                <asp:Label ID="lblReader_Ticket" runat="server" resourcekey="lblReader_Ticket" CssClass="Normal"></asp:Label>
            </td>
        </tr>
    </tbody>
</table>
<dnn:SectionHead ID="secHelp" CssClass="SubHead" runat="server" Section="tblHelp"
     ResourceKey="secHelp" IncludeRule="True" IsExpanded="false"></dnn:SectionHead>
<table class="dnnFormItem" id="tblHelp" cellspacing="2" cellpadding="2" width="90%" align="center"
    visible="false" runat="server">
    <tr runat="server" visible="<%#UserInfo.IsInRole(PortalSettings.AdministratorRoleName) %>">
        <td colspan="2">
            <asp:Label ID="Label5" runat="server" resourcekey="Tip_ForAdministratorOnly" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td  style="width: 100%">
            <dnn:sectionhead id="secHelp_SubModulesIntroduction" cssclass="SubHead" runat="server"
                section="tblHelp_SubModulesIntroduction" align="left" resourcekey="secHelp_SubModulesIntroduction"
                includerule="True" isexpanded="false"></dnn:sectionhead>
            <table style="width: 90%;" align="left" border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblHelp_SubModulesIntroduction">
                <tr align="left">
                    <td colspan="2" class="dnnFormMessage dnnFormInfo">
                        <asp:Label ID="lblHelp_SubModulesIntroduction" runat="server" resourcekey="Help_SubModulesIntroduction"></asp:Label><br />
                        <asp:Image runat="server" ID="Image3" ImageUrl="~/DesktopModules/CrossArticle/images/Help/SumModules.jpg"
                             />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td  style="width: 100%">
            <dnn:SectionHead ID="secHelp_VideoConvert_Online" CssClass="SubHead" runat="server"
                Section="tblHelp_VideoConvert_Online"  ResourceKey="secHelp_VideoConvert_Online"
                IncludeRule="True" IsExpanded="false"></dnn:SectionHead>
            <table style="width: 90%;" align="left"  border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblHelp_VideoConvert_Online">
                <tr >
                    <td colspan="2">
                        <asp:Label ID="lblHelp_VideoConvert_Online" runat="server" resourcekey="Help_VideoConvert_Online"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label><br />
                        <asp:Image runat="server" ID="imgHelp_VideoConvert" ImageUrl="~/DesktopModules/CrossArticle/images/Help/ExecuteSetting.jpg"
                            CssClass="dnnFormMessage dnnFormInfo" Width="60%" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td  style="width: 100%">
            <dnn:SectionHead ID="secHelp_VideoConvert_Offline" CssClass="SubHead" runat="server"
                Section="tblHelp_VideoConvert_Offline"  ResourceKey="secHelp_VideoConvert_Offline"
                IncludeRule="True" IsExpanded="false"></dnn:SectionHead>
            <table style="width: 90%;" align="left"  border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblHelp_VideoConvert_Offline">
                <tr >
                    <td colspan="2">
                        <asp:Label ID="lblHelp_VideoConvert_Offline" runat="server" resourcekey="Help_VideoConvert_Offline"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label><br />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td  style="width: 100%">
            <dnn:SectionHead ID="secHelp_MimeType" CssClass="SubHead" runat="server" Section="tblHelp_MimeType"
                 ResourceKey="secHelp_MimeType" IncludeRule="True" IsExpanded="false">
            </dnn:SectionHead>
            <table style="width: 90%;" align="left"  border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblHelp_MimeType">
                <tr >
                    <td colspan="2">
                        <asp:Label ID="lblHelp_MimeType" runat="server" resourcekey="lblHelp_MimeType" CssClass="dnnFormMessage dnnFormInfo"></asp:Label><br />
                        <asp:Image runat="server" ID="imgHelp_MimeType" ImageUrl="~/DesktopModules/CrossArticle/images/Help/MimeType.jpg"
                            CssClass="dnnFormMessage dnnFormInfo" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td  style="width: 100%">
            <dnn:SectionHead ID="secHelp_UploadFileExtension" CssClass="SubHead" runat="server"
                Section="tblHelp_UploadFileExtension"  ResourceKey="secHelp_UploadFileExtension"
                IncludeRule="True" IsExpanded="false"></dnn:SectionHead>
            <table style="width: 90%;" align="left" border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblHelp_UploadFileExtension">
                <tr >
                    <td colspan="2">
                        <asp:Label ID="lblHelp_UploadFileExtension" runat="server" resourcekey="lblHelp_UploadFileExtension"
                            CssClass="dnnFormMessage dnnFormInfo"></asp:Label><br />
                        <asp:Image runat="server" ID="imgHelp_UploadFileExtension" ImageUrl="~/DesktopModules/CrossArticle/images/Help/UploadFileExtension.jpg"
                            CssClass="dnnFormMessage dnnFormInfo" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td valign="top"  style="width: 100%">
            <dnn:SectionHead ID="secHelp_NewsSiteMap" runat="server" Section="tblHelp_NewsSiteMap"
                ResourceKey="secHelp_NewsSiteMap" IncludeRule="True" IsExpanded="false" CssClass="SubHead">
            </dnn:SectionHead>
            <table id="tblHelp_NewsSiteMap" cellspacing="0" cellpadding="2" style="width: 90%;" align="left" border="0"
                runat="server">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label6" runat="server" resourcekey="Help_NewsSiteMap" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px">
                        <dnn:Label ID="plSiteMap" runat="server" ControlName="txtSiteMap"></dnn:Label>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlSiteMap" runat="server" Target="_blank"></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td  style="width: 100%">
            <dnn:SectionHead ID="secHelp_CreateBanner" CssClass="SubHead" runat="server" Section="tblHelp_CreateBanner"
                align="left" ResourceKey="secHelp_CreateBanner" IncludeRule="True" IsExpanded="false">
            </dnn:SectionHead>
            <table style="width: 90%;" align="left" border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblHelp_CreateBanner">
                <tr align="left">
                    <td colspan="2" class="dnnFormMessage dnnFormInfo">
                        <asp:Label ID="lblHelp_CreateBanner" runat="server" resourcekey="Help_CreateBanner"></asp:Label><br />
                         <asp:Image runat="server" ID="Image2" ImageUrl="~/DesktopModules/CrossArticle/images/slideshow/SlideshowDemo_Flow.jpg" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td  style="width: 100%">
            <dnn:SectionHead ID="secHelp_Faqs" CssClass="SubHead" runat="server" Section="tblHelp_Faqs"
                 ResourceKey="secHelp_Faqs" IncludeRule="True" IsExpanded="false">
            </dnn:SectionHead>
            <table style="width: 90%;" align="left"  border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblHelp_Faqs">
                <tr >
                    <td colspan="2">
                        <asp:Label ID="lblHelp_Faqs" runat="server" resourcekey="Help_Faqs" CssClass="dnnFormMessage dnnFormInfo"></asp:Label><br />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td  style="width: 100%">
            <dnn:SectionHead ID="secHelp_Online" CssClass="SubHead" runat="server" Section="tblHelp_Online"
                 ResourceKey="secHelp_Online" IncludeRule="True" IsExpanded="false">
            </dnn:SectionHead>
            <table style="width: 90%;" align="left"  border="0" cellpadding="1" cellspacing="1"
                runat="server" id="tblHelp_Online">
                <tr >
                    <td colspan="2">
                        <asp:Label ID="lblHelp_Online" runat="server" resourcekey="lblHelp_Online" CssClass="dnnFormMessage dnnFormInfo"></asp:Label><br />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<dnn:SectionHead ID="secRegister" CssClass="SubHead" runat="server" Section="tblRegister"
     ResourceKey="secRegister" IncludeRule="True" IsExpanded="false"
    Visible="false"></dnn:SectionHead>
<table style="width: 100%;"  border="0" cellpadding="2" cellspacing="1"
    class="dnnFormItem" runat="server" id="tblRegister" visible="false">
    <tr >
        <td colspan="2">
            <asp:Label ID="lblHelp_Register" runat="server" resourcekey="Help_Register" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <dnn:Label ID="plInvoiceId" runat="server" ControlName="txtInvoiceId"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtInvoiceId" runat="server" Width="300px"></asp:TextBox>
            <dnn:CommandButton ID="btnRegister" runat="server" ResourceKey="btnRegister" ImageUrl="~/images/add.gif"
                OnCommand="btnRegister_Click" CausesValidation="false" />
            <asp:Label ID="lblRegisterStatus" runat="server" resourcekey="lblRegisterStatus"></asp:Label>
        </td>
    </tr>
</table>
<dnn:SectionHead ID="secShowcase" CssClass="SubHead" runat="server" Section="tblShowcase"
     ResourceKey="secShowcase" IncludeRule="True" IsExpanded="false"
    Visible="false"></dnn:SectionHead>
<table style="width: 100%;"  border="0" cellpadding="2" cellspacing="1"
    class="dnnFormItem" runat="server" id="tblShowcase" visible="false">
    <tr >
        <td colspan="2">
            <asp:Label ID="lblHelp_Showcase" runat="server" resourcekey="Help_Showcase" CssClass="dnnFormMessage dnnFormInfo"></asp:Label><br />
        </td>
    </tr>
    <tr valign="top">
        <td style="width: 150">
            <dnn:Label ID="plName" runat="server" ControlName="txtName"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" Columns="70" runat="server" /><asp:Image ID="Image1" runat="server"
                ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg" ToolTip="Reuired"
                AlternateText="Required" />
            <asp:RequiredFieldValidator ID="varName" runat="server" CssClass="NormalRed" resourcekey="Required"
                Display="Dynamic" ControlToValidate="txtName">* Required</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr valign="top">
        <td style="width: 150">
            <dnn:Label ID="plUrl" runat="server" ControlName="txtUrl"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtUrl" Columns="70" runat="server" />
            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg"
                ToolTip="Reuired" AlternateText="Required" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="NormalRed"
                resourcekey="Required" Display="Dynamic" ControlToValidate="txtUrl">* Required</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr valign="top">
        <td style="width: 150">
            <dnn:Label ID="plLogo" runat="server" ControlName="txtLogo"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtLogo" Columns="70" runat="server" />
        </td>
    </tr>
    <tr valign="top">
        <td style="width: 150" valign="middle">
            <dnn:Label ID="plDescription" runat="server" ControlName="txtDescription"></dnn:Label>
        </td>
        <td>
            <asp:TextBox ID="txtDescription" Columns="70" runat="server" Height="200px" TextMode="MultiLine" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <dnn:CommandButton ID="btnAddShowcase" runat="server" ImageUrl="~/images/add.gif"
                OnCommand="btnAddShowcase_Click" ResourceKey="btnAddShowcase" CausesValidation="true" />
            <asp:Label ID="lblSuccess" runat="server" Visible="false" resourcekey="lblSuccess" />
        </td>
    </tr>
</table>
