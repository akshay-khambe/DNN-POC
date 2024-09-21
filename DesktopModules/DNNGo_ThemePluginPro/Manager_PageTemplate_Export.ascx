<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_PageTemplate_Export.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_PageTemplate_Export" %>
 
    <div class="row">
        <div class="col-sm-12">

             <div class="form-group">
                    <%=ViewControlTitle("lblFolder", "Folder", "labShowFolder", ":", "col-sm-3 control-label")%>
                    <div class="col-sm-9">
                         <asp:Label ID="labShowFolder" runat="server" Text="1111111"></asp:Label>
                    </div>
             </div>

             <div class="form-group">
                    <%=ViewControlTitle("lblTemplate", "Template Name", "ddlTemplate", ":", "col-sm-3 control-label")%>
                    <div class="col-sm-9">
                         <asp:TextBox ID="txtTemplateName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
             </div>
                <div class="form-group">
                    <%=ViewControlTitle("lblTemplate", "Description", "ddlTemplate", ":", "col-sm-3 control-label")%>
                    <div class="col-sm-9">
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    </div>
             </div>
                <div class="form-group">
                    <%=ViewControlTitle("lblTemplate", "Include Content", "ddlTemplate", ":", "col-sm-3 control-label")%>
                    <div class="col-sm-9">
                         <span class="checkbox-inline">
                            <asp:CheckBox ID="cbEnable" runat="server" CssClass="flat-grey auto" />
                        </span>
                    </div>
             </div>


            <div class="form-group">
                <asp:LinkButton CssClass="btn btn-yellow btn-block" lang="Submit" ID="cmdImport" resourcekey="cmdImport" runat="server" Text="Import <i class='clip-download'></i>" OnClick="cmdImport_Click"></asp:LinkButton>
               
            </div>
         
        </div>
    </div>
 