<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_TabList.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_TabList" %>
 <!-- start: PAGE HEADER -->
      <div class="row">
        <div class="col-sm-12"> 
          <!-- start: PAGE TITLE & BREADCRUMB -->
          
          <div class="page-header">
            <h1><i class="fa fa-pagelines"></i> <%=ViewResourceText("Header_Title", "All Pages")%>
            </h1>
          </div>
          <!-- end: PAGE TITLE & BREADCRUMB --> 
        </div>
      </div>
      <!-- end: PAGE HEADER --> 
      <!-- start: PAGE CONTENT -->
      
      <div class="row">
        <div class="col-sm-12">
        <!--
          <div class="form-group">
            <div class="row">
              <div class="col-sm-8 ">
               
                  <div class="btn-group">
                   <asp:HyperLink runat="server" ID="hlAllArticle" CssClass="btn btn-default" Text="All"></asp:HyperLink> 
                    <asp:HyperLink runat="server" ID="hlPublishedArticle" CssClass="btn btn-default" Text="Published"></asp:HyperLink>  
                    <asp:HyperLink runat="server" ID="hlPendingArticle" CssClass="btn btn-default" Text="Pending"></asp:HyperLink>   
                    <asp:HyperLink runat="server" ID="hlDraftsArticle" CssClass="btn btn-default" Text="Drafts"></asp:HyperLink> 
                    <asp:HyperLink runat="server" ID="hlRecycleBinArticle" CssClass="btn btn-default" Text="Recycle Bin"></asp:HyperLink> 
                  </div>
              </div>
              <div class="col-sm-4 input-group text_right">
             
                <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" Width="100%" placeholder="Search Text Field" x-webkit-speech></asp:TextBox>
                <div class="input-group-btn">
                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btn btn-primary" 
                      Text="<i class='fa fa-search'></i>" onclick="btnSearch_Click" />
				</div>
              
              </div>
            </div>
          </div>
          -->
          <div class="form-group">
            <div class="row">
              <div class="col-sm-9">
              <!--
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control form_default">
                    <asp:ListItem Value="-1" Text="Bulk Actions"  resourcekey="ddlStatus_BulkActions"></asp:ListItem>
                    <asp:ListItem Value="1" Text="Published" resourcekey="ddlStatus_Published"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Pending" resourcekey="ddlStatus_Pending"></asp:ListItem>
                    <asp:ListItem Value="4" Text="Delete" resourcekey="ddlStatus_Delete"></asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnApply" runat="server" CssClass="btn btn-default" Text="Apply" resourcekey="btnApply" onclick="btnApply_Click" OnClientClick="return ApplyStatus();" />
                -->
              
              </div>
              <div class="col-sm-3 text_right"> <br/>
                <asp:Label ID="lblRecordCount" runat="server"></asp:Label> </div>
            </div>
          </div>
          <div class="form-group">
            <asp:GridView ID="gvArticleList" runat="server" AutoGenerateColumns="False" OnRowDataBound="gvArticleList_RowDataBound" OnRowCreated="gvArticleList_RowCreated" OnSorting="gvArticleList_Sorting" AllowSorting="true"
                        Width="100%" CellPadding="0" cellspacing="0" border="0" CssClass="table table-striped table-bordered table-hover"  GridLines="none" >
                        <Columns>
                             

                            <asp:BoundField DataField="IndentedTabName" HeaderText="TabName"  /> 
                            <asp:BoundField DataField="Title" HeaderText="Title"  HeaderStyle-CssClass="hidden-xs" ItemStyle-CssClass="hidden-xs" HeaderStyle-Width="45%" /> 
                            
       <%--                     <asp:BoundField DataField="IsVisible" HeaderText="Visible" HeaderStyle-CssClass="hidden-xs" ItemStyle-CssClass="hidden-xs" /> 
                            <asp:BoundField DataField="DisableLink" HeaderText="DisableLink" HeaderStyle-CssClass="hidden-xs" ItemStyle-CssClass="hidden-xs" /> 
                            <asp:BoundField DataField="TabType" HeaderText="TabType" HeaderStyle-CssClass="hidden-xs" ItemStyle-CssClass="hidden-xs" /> 
                            <asp:BoundField DataField="CreatedOnDate" HeaderText="CreatedDate" DataFormatString="{0:d}"  HeaderStyle-CssClass="hidden-xs" ItemStyle-CssClass="hidden-xs" /> --%>
                            <asp:TemplateField HeaderText="Icon" HeaderStyle-CssClass="visible-md visible-lg hidden-sm hidden-xs" ItemStyle-CssClass="visible-md visible-lg hidden-sm hidden-xs" HeaderStyle-Width="150" >
                                <ItemTemplate>
                                     <div class="visible-md visible-lg hidden-sm hidden-xs">
                                        <asp:HyperLink ID="hlIconEdit" runat="server" CssClass="tooltips" data-original-title="Edit Icon" data-placement="top" Text="[Edit]"></asp:HyperLink>
                                     </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action" HeaderStyle-Width="150" >
                                <ItemTemplate>
                                    <div class="btn-group">
										<button type="button" class="btn btn-purple dropdown-toggle" data-toggle="dropdown">
											<i class="fa fa-wrench"></i> Setting
										</button>
										<button data-toggle="dropdown" class="btn btn-purple dropdown-toggle">
											<span class="caret"></span>
										</button>
										<ul class="dropdown-menu" role="menu" style="right:0px; left:initial;">
											<li>
                                                <asp:HyperLink ID="hlThemeOptions" runat="server" CssClass="tooltips" data-original-title="Theme Options" data-placement="left" Text="<i class='fa fa-wrench'></i> Edit Options"></asp:HyperLink>
											</li>
											<li>
												<asp:HyperLink ID="hlMegamenuEdit" runat="server" CssClass="tooltips" data-original-title="Megamenu Options" data-placement="left" Text="<i class='fa fa-list'></i> Edit Megamenu"></asp:HyperLink>
											</li>
                                            <li class="divider"></li>
                                           <!-- <li>
												<asp:HyperLink ID="hlImportPageOptions" runat="server" CssClass="tooltips hlImportPageOptions" data-original-title="Import Page Template" data-placement="left" Text="<i class='clip-download'></i> Import Page Options"></asp:HyperLink>
											</li>-->
											<li>
												<asp:HyperLink ID="hlImportPageTemplate" runat="server" CssClass="tooltips hlImportPage" data-toggle="modal" NavigateUrl="#PageTemplate_Modal" data-original-title="Import Page Template" data-placement="left" Text="<i class='clip-download'></i> Import Page Template"></asp:HyperLink>
											</li>
                                         
                                            <%-- <li>
												<asp:HyperLink ID="hlExportPage" runat="server" CssClass="tooltips hlExportPage" data-toggle="modal" NavigateUrl="#PageTemplate_Modal" data-original-title="Export Page Template" data-placement="left" Text="<i class='clip-download'></i> Export Page Template"></asp:HyperLink>
											</li>--%>
										</ul>
								    </div>

                                </ItemTemplate>
                            </asp:TemplateField>



                            
                        </Columns>
                        <PagerSettings Visible="False" />
                    </asp:GridView>
                    <!--<ul id="paginator-ArticleList" class="pagination-purple"></ul>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $('#paginator-ArticleList').bootstrapPaginator({
                                bootstrapMajorVersion: 3,
                                currentPage: <%=PageIndex %>,
                                totalPages: <%=RecordPages %>,
                                numberOfPages:7,
                                useBootstrapTooltip:true,
                                onPageClicked: function (e, originalEvent, type, page) {
                                    window.location.href='<%=CurrentUrl %>&PageIndex='+ page;
                                }
                            });
                        });
                    </script>-->
          </div>
        </div>
        
        <!-- end: PAGE CONTENT--> 
      </div>


<div id="PageTemplate_Modal" class="modal fade " tabindex="-1" data-width="90%" data-height="800px" style="display: none;">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
            &times;
        </button>
        <h4 class="modal-title"></h4>
    </div>
    <div class="modal-body">
        <iframe id="PageTemplate_Iframe" width="100%" height="100%" style="border-width: 0px;">
        </iframe>
    </div>
</div>









<script type="text/javascript">

jQuery(function ($) {

    $("a.hlImportPage").click(function () { 
         $("#PageTemplate_Iframe").attr("src", $(this).attr("data-href"));
         $("#PageTemplate_Modal .modal-title").html($(this).html());
     });

});


<!--

     function SelectAll() {
         var e = document.getElementsByTagName("input");
         var IsTrue;
         if (document.getElementById("CheckboxAll").value == "0") {
             IsTrue = true;
             document.getElementById("CheckboxAll").value = "1"
         }
         else {
             IsTrue = false;
             document.getElementById("CheckboxAll").value = "0"
         }
         for (var i = 0; i < e.length; i++) {
             if (e[i].type == "checkbox") {
                 e[i].checked = IsTrue;
             }
         }
     }
     function ApplyStatus() {
         var StatusSelected = $("#<%=ddlStatus.ClientID %>").find("option:selected").val();
         if (StatusSelected >= 0) {
             var checkok = false;
             $("#<%=gvArticleList.ClientID %> input[type='checkbox'][type-item='true']").each(function (i, n) {
                 if ($(this).prop('checked')) {
                     checkok = true;
                 }
             });

             if (checkok) {
                 return confirm('<%=ViewResourceText("Confirm_ApplyStatus", "Are you sure to operate the records you choose?") %>');
             }
             alert('<%=ViewResourceText("Alert_NoItems", "Please operate with one line of record selected at least.") %>');

         } else {
             alert('<%=ViewResourceText("Alert_NoActions", "Please choose the operation you need.") %>');
         }
         return false;
     }
   
 
// -->
    </script>