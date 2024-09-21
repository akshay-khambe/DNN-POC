<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.Admin_SetupWizard, App_Web_admin_setupwizard.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="sectionhead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="URL" Src="~/controls/URLControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls" %>
<%@ Register TagPrefix="Portal" Namespace="DotNetNuke.Security.Permissions.Controls"
    Assembly="DotNetNuke" %>
<asp:Wizard ID="wizSetup" runat="server" CssClass="dnnFormItem" ActiveStepIndex="0" SideBarStyle-Width="200px"
    Font-Names="Verdana" CellPadding="5" CellSpacing="5" FinishCompleteButtonType="Link"
    FinishPreviousButtonType="Link" StartNextButtonType="Link" StepNextButtonType="Link"
    StepPreviousButtonType="Link" Width="98%" BackColor="#F7F6F3" BorderColor="#CCCCCC"
    BorderStyle="Solid" BorderWidth="1px" Font-Size="1.0em" 
    OnFinishButtonClick="wizSetup_FinishButtonClick" 
    onactivestepchanged="wizSetup_ActiveStepChanged">
    <StepStyle VerticalAlign="Top" Width="100%" BorderWidth="0px" ForeColor="#5D7B9D"
        CssClass="Normal" />
    <NavigationButtonStyle CssClass="Normal" BackColor="#FFFBFF" BorderColor="#CCCCCC"
        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1.0em"
        ForeColor="#284775" />
    <StartNavigationTemplate>
        <table border="0" cellpadding="5" cellspacing="5">
            <tr>
                <td align="right">
                    <asp:LinkButton ID="StartNextButton" runat="server" CommandName="MoveNext" CssClass="dnnPrimaryAction"
                        Text='<%#Localization.GetString("StepNextButton",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>' />
                </td>
            </tr>
        </table>
    </StartNavigationTemplate>
    <StepNavigationTemplate>
        <table border="0" cellpadding="5" cellspacing="5">
            <tr>
                <td align="right">
                    <asp:LinkButton ID="StepPreviousButton" runat="server" CommandName="MovePrevious"
                        Text='<%#Localization.GetString("StepPreviousButton",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>'
                        CssClass="dnnSecondaryAction" />
                </td>
                <td align="right">
                    <asp:LinkButton ID="StepNextButton" runat="server" CommandName="MoveNext" Text='<%#Localization.GetString("StepNextButton",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>'
                        CssClass="dnnPrimaryAction" />
                </td>
            </tr>
        </table>
    </StepNavigationTemplate>
    <FinishNavigationTemplate>
        <table border="0" cellpadding="5" cellspacing="5">
            <tr>
                <td align="right">
                    <asp:LinkButton ID="FinishPreviousButton" runat="server" CommandName="MovePrevious"
                        Text='<%#Localization.GetString("StepPreviousButton",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>'
                        CssClass="dnnSecondaryAction" />
                </td>
                <td align="right">
                    <asp:LinkButton ID="FinishButton" runat="server" CommandName="MoveComplete" Text='<%#Localization.GetString("StepFinishButton",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared)%>'
                        CssClass="dnnPrimaryAction" />
                </td>
            </tr>
        </table>
    </FinishNavigationTemplate>
    <WizardSteps>
        <asp:WizardStep ID="wsGeneral" runat="server" Title='<%# Localization.GetString("wsGeneral", LocalResourceFile) %>'
            StepType="Start">
            <h4>
                <asp:Label ID="lblGeneral" runat="server" resourcekey="lblGeneral"/>
            </h4>
            <hr />
            <table cellspacing="2" cellpadding="2" class="dnnFormItem" width="100%">
                <tr>
                    <td>
                        <asp:Label ID="lblGeneralTips" runat="server" resourcekey="lblGeneralTips" CssClass="dnnFormMessage dnnFormInfo"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="rblSetupType" runat="server" AutoPostBack="True" 
                            OnSelectedIndexChanged="rblSetupType_SelectedIndexChanged">
                            <asp:ListItem Value="Yes" ResourceKey="li_SetupType_Yes" Selected="True"/>
                            <asp:ListItem Value="No" ResourceKey="li_SetupType_No" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                       
                      <Portal:TabPermissionsGrid ID="ctlTabPermissionsGrid" runat="server" Visible="false"/>
                      
                    </td>
                </tr>
            </table>
        </asp:WizardStep>

        <asp:WizardStep ID="wsDepartment" runat="server" Title='<%# Localization.GetString("wsDepartment", LocalResourceFile) %>'>
            <h4>
                <asp:Label ID="lblDepartment" runat="server" resourcekey="lblDepartment" />
            </h4>
            <hr />
            
      
            <table cellspacing="2" cellpadding="2" class="dnnFormItem" width="100%">
               <tr>
                    <td colspan="2">
                        <asp:Label ID="lblDepartmentTip" runat="server" resourcekey="lblDepartmentTip" CssClass="dnnFormMessage dnnFormInfo"/>
                    </td>
                </tr>
                <tr>
                 <td style="width: 200px;vertical-align:middle">
                        <dnn:Label ID="plDepartment" runat="server" ControlName="cblDepartment" />
                    </td>
                    <td>
                    <asp:CheckBoxList runat="server" ID="cblDepartment">
                            <asp:ListItem Value="Article" ResourceKey="li_Department_Article" Selected="True"/>
                            <asp:ListItem Value="Real Estate" ResourceKey="li_Department_RealEstate" />
                            <asp:ListItem Value="Car" ResourceKey="li_Department_Car" />
                             <asp:ListItem Value="Job" ResourceKey="li_Department_Job" />
                             <asp:ListItem Value="Product" ResourceKey="li_Department_Product" />
                              <asp:ListItem Value="Classified Ad" ResourceKey="li_Department_Ad" />
                              <asp:ListItem Value="Directory" ResourceKey="li_Department_Directory" />
                    </asp:CheckBoxList>
                   
                    </td>
                </tr>
            </table>
            <table cellspacing="2" cellpadding="2" class="dnnFormItem" width="100%">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblExtraDepartment" runat="server" resourcekey="lblExtraDepartment" CssClass="dnnFormMessage dnnFormInfo" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px;">
                        <asp:Label ID="lblDepartment1" runat="server" resourcekey="lblDepartment1" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtDepartment1" runat="server" MaxLength="50" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lblDepartment2" runat="server" resourcekey="lblDepartment2" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtDepartment2" runat="server" MaxLength="50" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDepartment3" runat="server" resourcekey="lblDepartment3" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtDepartment3" runat="server" MaxLength="50" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDepartment4" runat="server" resourcekey="lblDepartment4" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtDepartment4" runat="server" MaxLength="50" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDepartment5" runat="server" resourcekey="lblDepartment5" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtDepartment5" runat="server" MaxLength="50" />
                    </td>
                </tr>
            </table>
        </asp:WizardStep>

        <asp:WizardStep ID="wsFinish" runat="server" Title='<%# Localization.GetString("Finish",Cross.Modules.Article.Business.LocalUtils.ResourcesFile_Shared) %>'
            StepType="Finish">
            <h4>
                <asp:Label ID="lblFinish" runat="server" Text="Finish" resourcekey="lblFinish"  /></h4>
            <hr />
            <asp:Label ID="lblFailure" runat="server" Visible="False" CssClass="NormalRed" />
            <asp:Label ID="lblSummary" runat="server" resourcekey="lblSummary" CssClass="dnnFormMessage dnnFormInfo"/>
        </asp:WizardStep>
    </WizardSteps>
    <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top"
        CssClass="Normal" />
    <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" CssClass="CommandButton" />
    <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em"
        ForeColor="White" HorizontalAlign="Left" />
</asp:Wizard>
<table width="100%" class="dnnFormItem"  runat="server" id="tblFinish" visible="false">
    <tr>
        <td>
           <asp:Label ID="lblSuccess" runat="server" resourcekey="lblSuccess"  CssClass="dnnFormMessage dnnFormInfo"/>
           <br />
           <asp:HyperLink runat="server" ID="hlAddArticle" ResourceKey="hlAddArticle" Target="_blank"/>&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:HyperLink runat="server" ID="hlAccessAdmin" ResourceKey="hlAccessAdmin"  Target="_blank"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
          
           <asp:HyperLink runat="server" ID="hlReturn" ResourceKey="hlReturn" Target="_self"/>
        </td>
    </tr>
</table>