<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_ImportExport.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_ImportExport" %>
<!-- start: PAGE HEADER -->
      <div class="row">
        <div class="col-sm-12"> 
          <!-- start: PAGE TITLE & BREADCRUMB -->
          
          <div class="page-header">
            <h1><i class="fa fa-retweet"></i> <%=ViewResourceText("Header_Title", "Export & Import")%> </h1>
          </div>
          <!-- end: PAGE TITLE & BREADCRUMB --> 
        </div>
      </div>
      <!-- end: PAGE HEADER --> 
      <!-- start: PAGE CONTENT -->
      
      <div class="row">
        <div class="col-sm-12">

          <div class="panel panel-default">
            <div class="panel-heading"> <i class="fa clip-download"></i> <%=ViewResourceText("Title_Export", "Export")%>
              <div class="panel-tools"> <a href="#" class="btn btn-xs btn-link panel-collapse collapses"> </a> </div>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="form-horizontal">
                     <div class="form-group">
                        <%=ViewControlTitle("lblExportToXml", "Export To JSON", "cmdExportToXml", ":", "col-sm-3 control-label")%>
                        <div class="col-sm-6">
                           <asp:Button runat="server" Text="Export" ID="cmdExportToXml"  resourcekey="cmdExportToXml" onclick="cmdExportToXml_Click"  OnClientClick="CancelValidation();" CssClass="btn btn-bricky" /> 
                        </div>
                      </div>

                </div>
              </div>
            </div>
          </div>


                    <div class="panel panel-default">
            <div class="panel-heading"> <i class="fa clip-upload"></i> <%=ViewResourceText("Title_Import", "Import")%>
              <div class="panel-tools"> <a href="#" class="btn btn-xs btn-link panel-collapse collapses"> </a> </div>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="form-horizontal">
                       <div class="form-group">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-10">
                               <%=ViewHelp("Title_Import", "")%>
                            </div>
                      </div>

                        <div class="form-group">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-9">
                               <asp:FileUpload runat="server" ID="fuImportFormXml" Width="340" CssClass=" file-input validate[required]" />  
                            </div>
                      </div>
                      <div class="form-group">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-9">
                               
                                <asp:Button ID="cmdImportFormXml" runat="server" Text="Import Article List" resourcekey="cmdImportFormXml" onclick="cmdImportFormXml_Click" CssClass="btn btn-primary" /> 
                            </div>
                      </div>
                </div>
              </div>
            </div>
          </div>
 
        </div>
      </div>
      
      <!-- end: PAGE CONTENT--> 
 
								            
							             
