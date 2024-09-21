<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Download.ascx.cs" Inherits="DNNGo.Modules.PowerForms.Manager_Download" %>
<!-- start: PAGE HEADER -->
<div class="row">
    <div class="col-sm-12">
        <!-- start: PAGE TITLE & BREADCRUMB -->
        
        <div class="page-header">
            <h1>
                <i class="fa clip-download"></i> <%=ViewResourceText("Header_Title", "Download")%></h1>
        </div>
        <!-- end: PAGE TITLE & BREADCRUMB -->
    </div>
</div>
<!-- end: PAGE HEADER -->


<!-- start: PAGE CONTENT -->
      
    <div class="row">
    <div class="col-sm-8">
        If your download doesn't start after 30 seconds,<asp:HyperLink ID="hlDownload" runat="server" download="download">click here to download manually</asp:HyperLink>.
        
    </div>
     
</div>

  
  <!-- end: PAGE CONTENT--> 
 <script type="text/javascript">
     //jQuery(function (q) {
         
     //});

     var autodownload = function () {
         let elink = document.createElement("a");
         elink.setAttribute("download", "");
         elink.setAttribute("href", "<%=DownloadUrl%>");
         elink.click();
         elink.remove();
     }
     setTimeout(autodownload, 500);

 </script>
