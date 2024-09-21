<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Settings_External.ascx.cs" Inherits="DNNGo.Modules.PowerForms.Manager_Settings_External" %>
<!-- start: PAGE HEADER -->
<div class="row">
    <div class="col-sm-12">
        <!-- start: PAGE TITLE & BREADCRUMB -->
        
        <div class="page-header">
            <h1>
                <i class="fa fa-wrench"></i>
                <%=ViewResourceText("Header_Title", "External Form")%></h1>
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
                <%=ViewTitle("lblSettings", "Settings")%>
                <div class="panel-tools">
                    <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                </div>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="form-group">
                        <%=ViewControlTitle("lblExternalFormEnable", "Enable External Form", "cbExternalFormEnable", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="checkbox-inline">
                               <asp:CheckBox ID="cbExternalFormEnable" runat="server" CssClass="auto" />
                                 <%--<%=ViewHelp("lblExternalFormEnable","Enable the external submit API") %>--%>
                            </div>
                        </div>
                    </div>
                  <!--   <div class="form-group">
                        <%=ViewControlTitle("lblExternalDomain", "Third Party Domain", "cbExternalDomain", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-8">
                            <div class="checkbox-inline">
                               <asp:CheckBox ID="cbExternalDomain" runat="server" CssClass="auto" />
                                 <%=ViewHelp("lblExternalDomain","Information submitted from 3rd party websites is allowed") %>
                            </div>
                        </div>
                    </div>-->
                    <div class="form-group">
                        <%=ViewControlTitle("lblSubmissionInterval", "Submission Interval", "txtExternalFormInterval", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-5">
                            <div class="control-inline">
                                <asp:TextBox runat="server" ID="txtExternalFormInterval" Width="80px" CssClass="form-control validate[required,max[60],min[1]]"></asp:TextBox>
                                  <%=ViewHelp("lblSubmissionInterval", "Seconds / The interval between two forms submissions cannot be less than this time")%>
                                
                            </div>
                        </div>
                    </div>
                    

                  
                </div>
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i>
                <%=ViewTitle("lblCodeArea", "Code Area")%>
                <div class="panel-tools">
                    <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                </div>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                  <!--  <div class="form-group">
                        <%=ViewControlTitle("lblFormHTML", "Form HTML", "txtFormHTML", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-9">
                              <div class="control-inline">
                               <asp:TextBox runat="server" ID="txtFormHTML"   CssClass="form-control" Rows="10" TextMode="MultiLine"></asp:TextBox>
                                <%=ViewHelp("lblFormHTML","You can copy the HTML of the form to a HB module") %>
                            </div>
                        </div>
                    </div>-->
                    <div class="form-group">
                        <%=ViewControlTitle("lblFormAPI", "Form API", "txtFormAPI", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-9">
                              <div class="control-inline">
                              <!-- <asp:TextBox runat="server" ID="txtFormAPI"   CssClass="form-control" Rows="2" TextMode="MultiLine"></asp:TextBox>-->
                               <asp:HyperLink runat="server" ID="hlFormAPI"></asp:HyperLink>
                                <%=ViewHelp("lblFormAPI","You can copy the API of the form to a Content Builder Module") %>
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

