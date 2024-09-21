<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Layout_List.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_Layout_List" %>
 <!-- start: PAGE HEADER -->
      <div class="row">
        <div class="col-sm-12"> 
          <!-- start: PAGE TITLE & BREADCRUMB -->
           
          <div class="page-header">
            <h1><i class="clip-puzzle-3"></i> <%=LayoutName %> <%=ViewResourceText("Header_Title", "Layouts")%> 
                <asp:HyperLink ID="hlAddLayout" runat="server" CssClass="btn btn-xs btn-bricky" Text="<i class='fa fa-link'></i> Add Layout" resourcekey="hlAddLayout" ></asp:HyperLink>
            </h1>
 
          </div>
          <!-- end: PAGE TITLE & BREADCRUMB --> 
        </div>
      </div>
      <!-- end: PAGE HEADER --> 

        <!-- start: PAGE CONTENT -->
      
<div class="properties-list">
  <div class="properties-tab">
    <div class="dng-templates-content">
      <div class="dng-template-filters">
        <ul>
          <li data-filter="*" class="active">All <span class="grve-count"><%=LayoutList.Count %></span></li>
           <%foreach (var Group in GetLayoutGroupList()){ Response.Write(String.Format("<li data-filter=\"{0}\" class=\"\">{1} <span class=\"grve-count\">{2}</span></li>",Group.Name,Group.Alias,FindGroupCount(Group))); }%>
        </ul>
      </div>
      <div id="dng-template-item-grid">
        <div class="templates-list">

              <asp:Repeater ID="RepeaterLayouts" runat="server"  OnItemDataBound="RepeaterLayouts_ItemDataBound">
                    <ItemTemplate>
                        
                         <div class="template-item <%# Eval("Groups")%>">
                            <div class="wrap-image">
                              <div class="dng-template-image-wrapper">
                                  <div class="dng-template-load" style="background-image: url('<%=ModulePath%>resource/images/templates-load.gif')"></div>
                                  <div class="dng-template-image" data-src="<asp:Literal ID="liImageUrl" runat="server"></asp:Literal>" data-width="613" data-height="230" alt="<%# Eval("Alias")%>"></div>
                              </div>
                            <div class="tools tools-bottom">
                                <span class="titlename"><%# Eval("Alias")%></span> 
                                <asp:HyperLink ID="hlEdit" runat="server" CssClass="tooltips" data-original-title="Edit" data-placement="top" Text="<i class='clip-pencil-3'></i>"></asp:HyperLink>
                                <asp:HyperLink ID="hlCopy" runat="server" CssClass="tooltips" data-original-title="Copy" data-placement="top" Text="<i class='clip-copy-2'></i>"></asp:HyperLink>
                                <asp:LinkButton ID="btnRemove" runat="server" CssClass="tooltips" data-original-title="Remove" data-placement="top" Text="<i class='clip-close-2'></i>" OnClick="btnRemove_Click"></asp:LinkButton>
                            </div>
                          </div>   
                             </div>
                   </ItemTemplate>
               </asp:Repeater>
 
        </div>
      </div>



      
    </div>
  </div>
</div>

<script src="<%=ModulePath %>Resource/plugins/isotope/isotope.pkgd.min.js"></script>
<script>
	jQuery.fn.visible = function (partial) {
		var $t = jQuery(this),
			$w = jQuery("#dng-template-item-grid"),
			viewTop = $w.scrollTop(),
			viewBottom = viewTop + $w.height()*0.85,
			// _top = $t.offset().top,
			_top = $t[0].offsetTop;
			_bottom = _top + $t.height(),
			compareTop = partial === true ? _bottom : _top,
			compareBottom = partial === true ? _top : _bottom;
		if ($t.hasClass("visible")) {
			return false
		}
		return ((compareBottom <= viewBottom) && (compareTop >= viewTop));
	};


	
	jQuery(document).ready(function () {

		jQuery(".dng-template-filters").eq(0).addClass("active");
		var list =jQuery("#dng-template-item-grid > .templates-list");
        function visibleItem(){
				list.find(".template-item:not(.load)").each(function(){
					var item = jQuery(this);
					var image = item.find(".dng-template-image"); 
					if( item.css("display") != "none" && item.visible(true) && !item.data("visible")){
						var load = image.siblings(".dng-template-load");
						var src =image.data("src");
						var n =jQuery("<img src='"+src+"' />");
						n.load(function(){
							image.css("background","url("+src+")").addClass("load");
							n.remove();
							load.fadeOut();
						})
						item.data("visible",true);
         
					}
				});
        
        }

		jQuery(".dng-template-filters li").each(function(){
			var filter=jQuery(this).data("filter")=="*"?".template-item":"."+jQuery(this).data("filter");
			jQuery(this).on("click",function(){
				list.children(".template-item").hide();
				list.children(filter).stop().fadeIn();
				jQuery("#dng-template-item-grid").animate({scrollTop:0}, 200);
				jQuery(this).addClass("active").siblings().removeClass("active");
                visibleItem();
	  		})
      });

      list.find(".template-item").each(function(){
          var item = jQuery(this);
          var image = item.find(".dng-template-image");  

          var width = image.data("width");
          var height = image.data("height");
          var padding_bottom = (height / width) * 100;

          image.css("padding-bottom", padding_bottom + "%");
      });
      visibleItem();
      jQuery("#dng-template-item-grid").scroll(function () { visibleItem();});  

      ImgLoad(function(){
        jQuery('.templates-list').find(".template-item").each(function(){
          if($(this).css("display")!="none"){
            $(this).addClass("normal-width").siblings().removeClass("normal-width");
            return false;
          }
        })
        jQuery('.templates-list').isotope({
            itemSelector: '.template-item',
            masonry: {
              columnWidth: '.normal-width'
            }
        });

        jQuery(".dng-template-filters li").on("click",function(){
          jQuery('.templates-list').find(".template-item").each(function(){
          if($(this).css("display")!="none"){
            $(this).addClass("normal-width").siblings().removeClass("normal-width");
            return false;
          }
        })
        jQuery('.templates-list').isotope("layout");
        })

      },$('.templates-list'))
    }) ; 



</script>