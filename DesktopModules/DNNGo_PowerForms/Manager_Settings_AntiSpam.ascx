<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Settings_AntiSpam.ascx.cs" Inherits="DNNGo.Modules.PowerForms.Manager_Settings_Anti_Spam" %>
<!-- start: PAGE HEADER -->
<div class="row">
    <div class="col-sm-12">
        <!-- start: PAGE TITLE & BREADCRUMB -->
        
        <div class="page-header">
            <h1>
                <i class="fa fa-wrench"></i>
                <%=ViewResourceText("Header_Title", "Anti-Spam Settings")%></h1>
        </div>
        <!-- end: PAGE TITLE & BREADCRUMB -->
    </div>
</div>
<!-- end: PAGE HEADER -->
<!-- start: PAGE CONTENT -->
<div class="row">
    <div class="col-sm-12">

        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i>
                <%=ViewTitle("lblCaptchaSettings", "reCAPTCHA v3 Settings")%>
                <div class="panel-tools">
                    <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                </div>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="form-group">
                        <%=ViewControlTitle("lblCaptchaEnable", "Enable reCAPTCHA", "ddlCaptchaType", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline" style="width:200px;">
                                 <asp:DropDownList ID="ddlCaptchaType" runat="server" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="control-inline">
                                 <%=ViewHelp("lblCaptchaEnable","To use reCAPTCHA ( v2 /v3 ), you need to <a href='http://www.google.com/recaptcha/admin' target='_blank'>sign up for an API key pair</a> for your site. The key pair consists of a <b>site key</b> and <b>secret</b>.") %>
                            </div>
                        </div>
                    </div>
                    <div class="form-group conditional" data-condition="['2','3'].includes(#<%=ddlCaptchaType.ClientID %>)">
                         <%=ViewControlTitle("lblCaptchaDomain", "Domain", "txtCaptchaDomain", ":", "col-sm-3 control-label")%>
                         <div class="col-sm-8">
                             <div class="control-inline" style="width:200px;">
                                <asp:DropDownList ID="ddlCaptchaDomain" runat="server" CssClass="form-control"></asp:DropDownList>
                             </div>
                         </div>
                     </div>
                    <div class="form-group conditional" data-condition="['2','3'].includes(#<%=ddlCaptchaType.ClientID %>)">
                        <%=ViewControlTitle("lblCaptchaSiteKey", "Site key", "txtCaptchaSiteKey", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline">
                               <asp:TextBox runat="server" ID="txtCaptchaSiteKey" Width="380px"  CssClass="form-control"></asp:TextBox>
                                <%=ViewHelp("lblCaptchaSiteKey","Use this in the code your site serves to users.") %>
                            </div>
                        </div>
                    </div>

                   <div class="form-group conditional" data-condition="['2','3'].includes(#<%=ddlCaptchaType.ClientID %>)">
                        <%=ViewControlTitle("lblCaptchaSecretKey", "Secret key", "txtCaptchaSecretKey", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline">
                               <asp:TextBox runat="server" ID="txtCaptchaSecretKey" Width="380px"  CssClass="form-control"></asp:TextBox>
                                <%=ViewHelp("lblCaptchaSecretKey","Use this for communication between your site and Google. Be sure to keep it a secret.") %>
                            </div>
                        </div>
                    </div>
                    <div class="form-group conditional" data-condition="['3'].includes(#<%=ddlCaptchaType.ClientID %>)">
                        <%=ViewControlTitle("lblCaptchaSocial", "Captcha Score", "txtLimitSocial", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline">
                               <asp:TextBox runat="server" ID="txtLimitSocial" Width="50px"  CssClass="form-control  validate[required,custom[number]]"></asp:TextBox>
                                <%=ViewHelp("lblCaptchaSocial","0.1 - 1, The smaller the numerical value, the looser the restriction. Limit unanswered friend requests from abusive users") %>
                            </div>
                        </div>
                    </div>

<%--                    <div class="form-group">
                        <%=ViewControlTitle("lblCaptchaTabindex", "Tabindex", "txtCaptchaTabindex", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline">
                               <asp:TextBox runat="server" ID="txtCaptchaTabindex" Width="50px"  CssClass="form-control  validate[required,custom[integer]]"></asp:TextBox>
                                <%=ViewHelp("lblCaptchaTabindex","The tabindex of the widget and challenge. If other elements in your page use tabindex, it should be set to make user navigation easier.") %>
                            </div>
                        </div>
                    </div>
                --%>
                   <div class="form-group conditional" data-condition="['2'].includes(#<%=ddlCaptchaType.ClientID %>)">
                        <%=ViewControlTitle("lblCaptchaTheme", "Theme", "ddlCaptchaTheme", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline">
                                <asp:DropDownList ID="ddlCaptchaTheme" runat="server" CssClass="form-control" Width="200">
                                    <asp:ListItem Text="light" Value="light"></asp:ListItem>
                                    <asp:ListItem Text="dark" Value="dark"></asp:ListItem>
                                </asp:DropDownList>
                         
                                <%=ViewHelp("lblCaptchaTheme","The color theme of the widget.") %>
                            </div>
                        </div>
                    </div>
                       <div class="form-group conditional" data-condition="['2'].includes(#<%=ddlCaptchaType.ClientID %>)">
                        <%=ViewControlTitle("lblCaptchaTypeV2", "Type", "ddlCaptchaTypeV2", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline">
                                <asp:DropDownList ID="ddlCaptchaTypeV2" runat="server" CssClass="form-control" Width="200">
                                    <asp:ListItem Text="image" Value="image"></asp:ListItem>
                                    <asp:ListItem Text="audio" Value="audio"></asp:ListItem>
                                </asp:DropDownList>
                         
                                <%=ViewHelp("ddlCaptchaTypeV2","The type of CAPTCHA to serve.") %>
                            </div>
                        </div>
                    </div>
                       <div class="form-group conditional" data-condition="['2'].includes(#<%=ddlCaptchaType.ClientID %>)">
                        <%=ViewControlTitle("lblCaptchaSize", "Size", "ddlCaptchaSize", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline">
                                <asp:DropDownList ID="ddlCaptchaSize" runat="server" CssClass="form-control" Width="200">
                                    <asp:ListItem Text="normal" Value="normal"></asp:ListItem>
                                    <asp:ListItem Text="compact" Value="compact"></asp:ListItem>
                                </asp:DropDownList>
                                <%=ViewHelp("lblCaptchaSize","The size of the widget.") %>
                            </div>
                        </div>
                    </div>


                  
                </div>
            </div>
        </div>


        <div id="divImageCaptcha" class="panel panel-default" runat="server">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i>
                <%=ViewTitle("lblImageCaptchaSettings", "Image Captcha Settings")%>
                <div class="panel-tools">
                    <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                </div>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="form-group">
                        <%=ViewControlTitle("lblImageCaptchaEnable", "Image Captcha Enable", "cbImageCaptchaEnable", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="checkbox-inline">
                               <asp:CheckBox ID="cbImageCaptchaEnable" runat="server" CssClass="auto" />
                            </div>
                        </div>
                    </div>
                     
                  
                </div>
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i>
                <%=ViewTitle("lblHoneypotFieldSettings", "Honeypot Field Settings")%>
                <div class="panel-tools">
                    <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                </div>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="form-group">
                        <%=ViewControlTitle("lblHoneypotFieldEnable", "Enable Honeypot Field", "cbHoneypotFieldEnable", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="checkbox-inline">
                               <asp:CheckBox ID="cbHoneypotFieldEnable" runat="server" CssClass="auto" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         

        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i>
                <%=ViewTitle("lblBlacklist", "Blacklist")%>
                <div class="panel-tools">
                    <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                </div>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="form-group">
                        <%=ViewControlTitle("lblEnableBlacklist", "Enable Blacklist", "cbBlockRulesEnable", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-5">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="cbBlockRulesEnable" runat="server" CssClass="auto"/>
                             </div>
                        </div>
                    </div>



                   <div class="form-group">
                        <%=ViewControlTitle("lblBlockMail", "Email Blacklist", "txtBlockMail", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-5">
                            <div class="control-inline">
                                <asp:TextBox runat="server" ID="txtBlockMail"  CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                <%=ViewHelp("lblBlockMail", "Fill in a mailbox per line.")%>
                             </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <%=ViewControlTitle("lblBlockUrlMail", "The external link of the email blacklist", "txtBlockUrlMail", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline">
                               <asp:TextBox runat="server" ID="txtBlockUrlMail"  CssClass="form-control validate[custom[url]]" Width="520"></asp:TextBox>
                                  <%=ViewHelp("lblBlockUrlMail", "For example: https://www.dnngo.net/blacklist/mail.txt")%>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <%=ViewControlTitle("lblBlockIP", "IP Blacklist", "txtBlockIP", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-5">
                            <div class="control-inline">
                                <asp:TextBox runat="server" ID="txtBlockIP" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                <%=ViewHelp("lblBlockIP", "Fill in a IP per line.")%>
                             </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <%=ViewControlTitle("lblBlockUrlIP", "The external link of the IP blacklist", "txtBlockUrlIP", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline">
                               <asp:TextBox runat="server" ID="txtBlockUrlIP"  CssClass="form-control validate[custom[url]]" Width="520"></asp:TextBox>
                                <%=ViewHelp("lblBlockUrlIP", "For example: https://www.dnngo.net/blacklist/ip.txt")%>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <%=ViewControlTitle("lblBlockKeyword", "Keywords Blacklist", "txtBlockKeyword", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-5">
                            <div class="control-inline">
                                <asp:TextBox runat="server" ID="txtBlockKeyword" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                  <%=ViewHelp("lblBlockKeyword", "Fill in a keywords per line.")%>
                                
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <%=ViewControlTitle("lblBlockUrlKeyword", "The external link of the keywords blacklist", "txtBlockUrlKeyword", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="control-inline">
                               <asp:TextBox runat="server" ID="txtBlockUrlKeyword"  CssClass="form-control validate[custom[url]]" Width="520"></asp:TextBox>
                                  <%=ViewHelp("lblBlockUrlKeyword", "For example: https://www.dnngo.net/blacklist/keywords.txt")%>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>


        
    </div>
</div>
<!-- end: PAGE CONTENT-->
<div class="row">
    <div class="col-sm-2">
    </div>
    <div class="col-sm-10">
        <asp:Button CssClass="btn btn-primary" data-verify="Submit" ID="cmdUpdate" resourcekey="cmdUpdate"
            runat="server" Text="Update" OnClick="cmdUpdate_Click"></asp:Button>&nbsp;
        <asp:Button CssClass="btn btn-default" ID="cmdCancel" resourcekey="cmdCancel" runat="server"
            Text="Cancel" CausesValidation="False" OnClick="cmdCancel_Click" OnClientClick="CancelValidation();">
        </asp:Button>&nbsp;
    </div>
</div>

