<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Modal_PageTemplate_Import.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_Modal_PageTemplate_Import" %>










 
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="properties-list">
                  <div class="properties-tab">
                    <div class="dng-templates-content">
                      <div class="dng-template-filters">
                        <ul>
                          <li data-filter="*" class="active">All <span class="grve-count"> <%= DBList.Count %> </span></li>
                           <%foreach (var Group in GetDBGroupList()){ Response.Write(String.Format("<li data-filter=\"{0}\" class=\"\">{1} <span class=\"grve-count\">{2}</span></li>",Group.Name,Group.Alias,FindDBCount(Group))); }%>
                        </ul>
                      </div>
                      <div id="dng-template-item-grid">
                        <div class="templates-list">

                              <asp:Repeater ID="RepeaterTemplates" runat="server"  OnItemDataBound="RepeaterTemplates_ItemDataBound">
                                    <ItemTemplate>

                                        <div class="col-md-3 col-sm-4 gallery-img template-item <%# Eval("Group")%>">
							                <div class="wrap-image">
								                
                                                    <asp:Image ID="imgPicture" runat="server" CssClass="img-responsive selected" />
<%--									                <img src="<%=SkinPath%>resource/images/vc-templates-load.gif" alt="<%# Eval("Alias")%>" class="" data-src="<asp:Literal ID="liImageUrl" runat="server"></asp:Literal>"  onerror="this.src='<%=SkinPath%>resource/images/vc-templates-load.gif'">--%>
								             
								               <%-- <div class="chkbox"></div>--%>
								                <div class="tools tools-bottom" style="bottom:0;">
									             <%--   <a href="javascript:;">
										                <%# Eval("Alias")%>
									                </a>--%>
									                <asp:LinkButton ID="lbtnImport" runat="server" CssClass="btn-import" lang='Submit' Text="<i class='clip-download'></i>"  OnClick="lbtnImport_Click"></asp:LinkButton>
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

        </div>


        
    </div>
</div>




    <script>
        var PagesGallery = function () {
            //function to initiate Colorbox
            var runColorBox = function () {
                $(".cboxElement").colorbox({
                    rel: 'cboxElement',
                    transition: "none",
                    width: "100%",
                    height: "100%",
                    retinaImage: true
                });
            };

            //function to Image Picker
            var runImagePicker = function () {
                $('.wrap-image .chkbox').bind('click', function () {
                    if ($(this).parent().hasClass('selected')) {
                        $(this).parent().removeClass('selected').children('a').children('img').removeClass('selected');
                    } else {
                        $(this).parent().addClass('selected').children('a').children('img').addClass('selected');
                    }
                });
            };

            return {
                //main function to initiate template pages
                init: function () {
                    runColorBox();
                    runImagePicker();
                }
            };
        }();


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
		var list = jQuery("#dng-template-item-grid > .templates-list");

		PagesGallery.init();

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
       
        jQuery("#dng-template-item-grid").scroll(function () { visibleItem(); });  


        $("#PlaceHolder_container a[lang='Submit']").click(function (event) {
            if (confirm('<% =ViewResourceText("ImportPageTemplate", "This page will be overwritten with this page template, are you sure to import it?")%>')) {
                $(window.parent.document).find("#setting-message-info-full").fadeIn();
            } else {
                event.preventDefault();
            }
        });

}) ; 



</script>



