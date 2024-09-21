<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Projects.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_Projects" %>
<!-- start: PAGE HEADER -->
<!--<div class="row">
    <div class="col-sm-12"> 
        
           
        <div class="page-header">
        <h1><i class="clip-t-shirt"></i> <%=ViewResourceText("Header_Title_" + ModelString , ModelString + " Projects")%> 
            <asp:HyperLink ID="hlReturn" runat="server" CssClass="btn btn-xs btn-bricky" Text="<i class='fa fa-mail-reply-all'></i> Return" resourcekey="hlReturn" ></asp:HyperLink>
        </h1>

        </div>
        
    </div>
</div>-->
<!-- end: PAGE HEADER --> 






<!-- start: PAGE CONTENT -->
<div class="row">
	<div class="col-sm-12"></div>
</div>
<div class="row">
     <asp:Repeater ID="RepeaterProjects" runat="server" OnItemDataBound="RepeaterProjects_ItemDataBound">
          <ItemTemplate>
	        <div class="col-md-3 col-sm-4 gallery-img">
		        <div class="wrap-image">
			        
				        <img src="<%#FormatPath(Eval("Image").ToString())%>" alt="<%# Eval("Alias")%>" class="img-responsive" />
			        

			        <div class="tools tools-bottom" style="bottom:0;">
                        <a class="btn-link" href="<%#FormatLink( Eval("Name"),Eval("Template"))%>"><i class="clip-pencil-3"></i>  <%# Eval("Alias")%></a>
			        </div>
		        </div>
	        </div>
         </ItemTemplate>
     </asp:Repeater>

</div>
<!-- end: PAGE CONTENT-->
<script type="text/javascript">
    jQuery(function ($) {
        $("a.btn-link").click(function (event) {
            event.preventDefault();
            //console.log($(window.parent.document).find('#PageProjects_Modal').html());
             window.parent.HideModaleProjects($(this).attr("href"));

            //console.log($(this).attr("href"));
        });




    });
</script>