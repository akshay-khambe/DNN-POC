<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Modal_SelectImage.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_Modal_SelectImage" %>
<div class="tabbable SelectImage-TabsBox">
    <ul id="SelectImageTabs" class="nav nav-tabs tab-padding tab-space-3 tab-blue">

        <li  class="active">
            <a href="#panel_tab_uploader" data-toggle="tab">Upload Files </a>
        </li>    
        <li style="<% =DemoDisplay %>">
            <a href="#panel_tab_list" data-toggle="tab">Media Library </a>
        </li>
       
        <% if(GetSettingT<bool>("PixabayEnable", true)){%>
        <li style="<% =DemoDisplay %>">
            <a href="#panel_tab_free" data-toggle="tab">Free Images</a>
        </li>      
        <% }%>
    </ul>
    
    <div class="tab-content SelectImageContent">
        <div class="tab-pane active" id="panel_tab_uploader">
            <div id="dropzone" action="<%=ModulePath %>Resource_jQueryFileUpload.ashx?<%=QueryString %>" method="post" class="dropzone" enctype="multipart/form-data"></div>
        </div>

        <div class="tab-pane in" id="panel_tab_list"  style="<% =DemoDisplay %>">
            <div class="sidebar-search list-search-image">
                <div class="form-group">
                    <input type="text" placeholder="Search" id="searchImage" >
                    <a href="javascript:;" class="submit_but">
                        <i class="clip-search-3"></i>
                    </a>
                </div>
            </div>
            <div class="templates-list SelectImageList"></div>
        
            <h4 class="nothing-info">Sorry, nothing matched your query</h4>
            <ul id="templates-paginator"></ul>



        </div>
         <% if(GetSettingT<bool>("PixabayEnable", true)){%>
        <div class="tab-pane" id="panel_tab_free"  style="<% =DemoDisplay %>">

            <div class="sidebar-search list-search-image sidebar-search-free">

                <div class="ImagesCategoryFree">
                    <span class="text">Order:</span>
                    <select class="free-order">
                        <option value="">Popular</option>
                        <option value="latest">Latest</option>
                    </select>
                    <span class="text">Type:</span>
                    <select class="free-type">
                        <option value="">All</option>
                        <option value="photo">Ihoto</option>
                        <option value="illustration">Illustration</option>
                        <option value="vector">Vector</option>
                    </select>
                    <span class="text">Category:</span>
                    <select class="free-category">
                        <option value="">All</option>
                        <option value="backgrounds">Backgrounds</option>
                        <option value="fashion">Fashion</option>
                        <option value="nature">Nature</option>
                        <option value="science">Science</option>
                        <option value="education">Education</option>
                        <option value="feelings">Feelings</option>
                        <option value="health">Health</option>
                        <option value="people">People</option>
                        <option value="religion">Religion</option>
                        <option value="places">Places</option>
                        <option value="animals">Animals</option>
                        <option value="industry">Industry</option>
                        <option value="computer">Computer</option>
                        <option value="food">Food</option>
                        <option value="sports">Sports</option>
                        <option value="transportation">Transportation</option>
                        <option value="travel">Travel</option>
                        <option value="buildings">Buildings</option>
                        <option value="business">Business</option>
                    </select>

                    <span class="text">Colors:</span>
                    <select class="free-colors">
                        <option value="" >All</option>
                        <option value="grayscale">Grayscale</option>
                        <option value="red">Red</option>
                        <option value="orange">Orange</option>
                        <option value="yellow">Yellow</option>
                        <option value="green">Green</option>
                        <option value="turquoise">Turquoise</option>
                        <option value="blue">Blue</option>
                        <option value="lilac">Lilac</option>
                        <option value="pink">Pink</option>
                        <option value="white">White</option>
                        <option value="gray">Gray</option>
                        <option value="black">Black</option>
                        <option value="brown">Brown</option>
                        <option value="transparent">Transparent</option>
                    </select>

                    <span class="text">Orientation:</span>
                    <select class="free-orientation">
                        <option value="">All</option>
                        <option value="horizontal">Horizontal</option>
                        <option value="vertical">Vertical</option>
                    </select>
                </div>


                <div class="form-group">
                    <input type="text" placeholder="Search" id="searchImageFree" >
                    <a href="javascript:;" class="submit_but">
                        <i class="clip-search-3"></i>
                    </a>
                </div>
            </div>
            <div class="templates-list SelectImageListFree"></div>

            <div id="templates-more-free">
                <h4 class="nothing-info">Sorry, nothing matched your query</h4>
                <button type="button" class="btn btn-primary btn-insert" id="MediaLoadMoreFree" data-page="1">Load more</button>
            </div>  
           
        </div>
        <% }%>

        <div class="Select-image-info">
        
        
        </div>

    </div>

</div>
<div class="SelectImage-zoomBox">
    <div class="zoomBox-cont">
        <img src="" class="zoom-img">

    </div>
</div>



<script id="scriptImage" type="text/x-jquery-tmpl">
     <div class="gallery-img">
        <div class="wrap-image">
            <a class="group1 cboxElement" href="javascript:;" title="${Name}.${Extension}" >
                <img  class="img-responsive" src="${ThumbnailUrl}" data-url="${FileUrl}">
            </a>
              <%if (Multiple) { %>
             <div class="chkbox"></div>
             <% } else { %>
            <div class="radiobox"></div>
             <% }%>
             {{if Name}}
            <div class="tools tools-bottom" style="bottom: 0;">
                <a href="javascript:;" title="${Name}.${Extension}">${Name}.${Extension}
                </a>
            </div>
            {{/if}}
        </div>
    </div>
</script>
 
<script id="scriptImageInfo" type="text/x-jquery-tmpl">
    <h3>ATTACHMENT DETAILS</h3>
    <div class="info-image-warp">
        {{if FileUrl && ["jpg","png","jpeg","webp","svg"].includes(Extension)}}
        <div class="info-image">
            <a href="${FileUrl}" class="zoom-image">
            <img src="${FileUrl}" alt="">
            </a>
        </div>
        {{else}}
        <div class="info-image">
            <img src="${ThumbnailUrl}" alt="">
        </div>
        {{/if}}

        <div class="info-info">
        {{if Name}}
        <span id="image-name-box">${Name}{{if Extension}}.${Extension}{{/if}}</span><br/>
        {{/if}}
      
        <p class="console">
            {{if ["jpg","png","jpeg","webp","svg"].includes(Extension)}}
            <button type="button" class="btn" id="EditImages" >Edit Image</button>
            {{/if}}
            {{if ID}}
            <button type="button" class="btn" id="DeleteImages"><span class="fa fa-trash"></span></button>
            {{/if}}
        </p>
       
       <!--  <span>${CreateTime}</span><br/><span>371 by 240 pixels</span> -->
    </div>
    </div>
     
     <ul class="info-form">
       <!--  <li>
            <label>Alt Text</label>
            <input value="${Alt}" type="text" name="Alt">
        </li>
        <li>
            <label>Title</label>
            <input value="${Title}" type="text" name="Title">
        </li>
        <li>
            <label>Caption</label>
            <textarea name="Caption" rows="2">${Caption}</textarea>
          
        </li>
        <li>
            <label>Description</label>
            <textarea name="Description" rows="4">${Description}</textarea>
        </li>
        <li>
            <label>File URL</label>
            <input value="${FileUrl}" type="text" name="Url">
        </li> -->
    </ul>
</script>
 
<script type="text/javascript">
    var PagesGallery = function () {
        //function to Image Picker
        var runImagePicker = function () {
            $('body').on('click', ".wrap-image", function () {
                <%if (!Multiple) { %>
                $('.wrap-image').removeClass('selected').children('a').children('img').removeClass('selected');
                <% }%>
               
                if ($(this).hasClass('selected')) {
                    $(this).removeClass('selected').children('a').children('img').removeClass('selected');
                } else {
                    $(this).addClass('selected').children('a').children('img').addClass('selected');
                }
            });
        };
        return {
            //main function to initiate template pages
            init: function () {
                runImagePicker();
            }
        };
    }();

    var listPage = 1;
    var Bind_Paginator = function (pages) {
        $("#templates-paginator li").detach();
        if (pages > 0) {
            $("#templates-paginator").bootstrapPaginator({
            bootstrapMajorVersion: 3, currentPage: listPage, totalPages: pages,
            onPageChanged: function (e, oldPage, newPage) {
                listPage = newPage;
                Image_Loader();
            }
            });
        }
        
    };
    var Image_Loader = function () {
        $("#panel_tab_list").addClass("ajax-loading");
        $.getJSON(Module.ModulePath + "Resource_Service.aspx?Token=PictureList", { ModuleId: Module.ModuleId, TabId: Module.TabId, PortalId: Module.PortalId, PageIndex: listPage, PageSize: 40, FilterFileType: "<% =FilterFileType %>", FilterFileExtension: "<% =FilterFileExtension %>", Search: $("#searchImage").val() }, function (data) {
            var Pages = 0;
            $(".SelectImageList").html('');
            $.each(data, function (i, item) {
                $("#scriptImage").tmpl(item).data("info",item).appendTo($(".SelectImageList"));
                Pages = item.Pages;
            });
           // if(Pages){
                Bind_Paginator(Pages);
              //  listPage++;
          //  
          
          if(Pages){

            $("#panel_tab_list .nothing-info").hide();

          }else{
            $("#panel_tab_list .nothing-info").show();
          }


            $("#panel_tab_list").removeClass("ajax-loading");
        });
    };



    var FreePage = 1;
    var startSearch = true;
    var Image_LoaderFree = function () {
        
        $("#MediaLoadMoreFree").addClass("ajax-loading");
        var FreeOption={page:FreePage};

        if($("#searchImageFree").val()){
            FreeOption['q'] = $("#searchImageFree").val();
        }

        if($(".ImagesCategoryFree .free-order").val()){
            FreeOption['order'] = $(".ImagesCategoryFree .free-order").val();
        }
        if($(".ImagesCategoryFree .free-type").val()){
            FreeOption['image_type'] = $(".ImagesCategoryFree .free-type").val();
        }
        if($(".ImagesCategoryFree .free-category").val()){
            FreeOption['category'] = $(".ImagesCategoryFree .free-category").val();
        }
        if($(".ImagesCategoryFree .free-colors").val()){
            FreeOption['q'] = $(".ImagesCategoryFree .free-colors").val() +( FreeOption['q'] ? '+' + FreeOption['q']:'');
        }
        if($(".ImagesCategoryFree .free-orientation").val()){
            FreeOption['orientation'] = $(".ImagesCategoryFree .free-orientation").val();
        }


        $.getJSON('<%=GetServiceUrl("ServicePixabayProxy") %>', FreeOption, function (data) {
            $.each(data.hits, function (i, item) {
                item.ThumbnailUrl = item.previewURL;
                item.FileUrl =item.imageURL || item.largeImageURL;
                item.Name = item.pageURL.split("/").reverse()[1];
                item.Extension = item.largeImageURL.split(".").reverse()[0] ;
                $("#scriptImage").tmpl(item).data("info",item).appendTo($(".SelectImageListFree"));
            });
         
            if($("#panel_tab_free .SelectImageListFree .gallery-img").length >= data.totalHits){
                $("#MediaLoadMoreFree").hide();
            }else{
                $("#MediaLoadMoreFree").css("display","inline-block");
            }

            $("#panel_tab_free #showing-item").html($("#panel_tab_free .SelectImageListFree .gallery-img").length);
            $("#panel_tab_free .total-item").html(data.totalHits);
            $("#MediaLoadMoreFree").removeClass("ajax-loading");
            FreePage++;


            if(!data.hits.length){
                $(".nothing-info").show();
            }else{
                $(".nothing-info").hide();
            }
            
            startSearch = true;

        });
    };


    $(document).ready(function () {
        Dropzone.options.dropzone = {
            maxFilesize: <%=DotNetNuke.Common.Utilities.Config.GetMaxUploadSize() /1024 / 1024 %>,
            acceptedFiles:'<%=DotNetNuke.Entities.Host.Host.AllowedExtensionWhitelist.ToDisplayString().Replace("*.",".") %>',
            init: function () {
                this.on("queuecomplete", function (data) {
                    listPage=1;
                    Image_Loader();
                    //上传后刷新列表的回调
                    $('#SelectImageTabs a[href="#panel_tab_list"]').tab('show');
                });
            }
        };

        $(".submit_but").click(function () {
            if ($("#SelectImageTabs > .active").index() == 2) {
                FreePage = 1;
                $(".SelectImageListFree").html("");
                if(startSearch){ Image_LoaderFree();startSearch= false;}
            }else{
                listPage=1;
                Image_Loader();
            }
        });

       $(".ImagesCategoryFree").on("change",function(event){
            event.preventDefault();
            FreePage = 1;
            $(".SelectImageListFree").html("");
            $(".sidebar-search-free").trigger("click");
            if(startSearch){ Image_LoaderFree();startSearch= false;}
       })


       $("#searchImage,#searchImageFree").on("keypress",function(event){
            if(event.keyCode == 13){
                event.preventDefault();
                $(this).siblings(".submit_but").focus();
            }
       })
       $("#searchImage,#searchImageFree").on("change",function(event){
            event.preventDefault();
            $(this).siblings(".submit_but").trigger("click");
       })





        Image_Loader();

        $("#SelectImageTabs > li").on('click', function () {
            setTimeout(() => {
                if ($("#SelectImageTabs > .active").index() == 2 && FreePage == 1) {
                    Image_LoaderFree();
                }
            }, 10);
        });
        if ($("#SelectImageTabs > .active").index() == 2) {
            Image_LoaderFree();
        }


        PagesGallery.init();

        var isFreeImage = false;

        $('body').on('click', ".wrap-image", function () {
            var urls = '';
            $("img.img-responsive[class*='selected']").each(function (i) {
                var url = $(this).data("url");
                if (url !== undefined && url != '')
                {
                    if (urls != '') {
                        urls += ",";
                    }
                    urls += url;
                }

            });

            $(".Select-image-info").html("");
            $("#scriptImageInfo").tmpl($(this).parent().data("info")).appendTo($(".Select-image-info"));

            if($("#SelectImageTabs > .active").index() == 2){
                isFreeImage = $(this).parent().data("info");
            }else{
                isFreeImage = false;
            }
        //    $('body').data('urls', urls);

            if (<%=Mode%> == 0) {
                $(parent.document).find("#<%=ReturnControlID%>").attr("data-urls", urls);
                if($("#SelectImageTabs > .active").index() == 2){
                    var info = {
                        Name:$("#image-name-box").text().trim(),
                        ImageURL:isFreeImage.largeImageURL,
                        GetServiceUrl:'<%=GetServiceUrl("ServicePixabaySave") %>',
                        /* 
                        Alt:$('.info-form input[name="Alt"]').val(),
                        Title:$('.info-form input[name="Title"]').val(),
                        Caption:$('.info-form textarea[name="Caption"]').val(), 
                        Description:$('.info-form textarea[name="Description"]').val(), */
                    };
                   
                    $(parent.document).find("#<%=ReturnControlID%>").attr("data-info", JSON.stringify(info));
                }else{
                    $(parent.document).find("#<%=ReturnControlID%>").removeAttr("data-info");
                }
            }
            parentCurr.jQuery("#imgaesTEXTURL").val(urls).siblings(".img").css("background-image","url('"+urls+"')");
            

        });

        $("#MediaLoadMoreFree").on("click",function(event){
            event.preventDefault();
            Image_LoaderFree();
        })

        var parentCurr = parent;

        var AddImages = function () {
            var urls = parentCurr.jQuery("#imgaesTEXTURL");
                var postMediaInfo ={
                    media:{
                        FileUrl:$('.info-form input[name="Url"]').val(),
                        Alt:$('.info-form input[name="Alt"]').val(),
                        Title:$('.info-form input[name="Title"]').val(),
                        Caption:$('.info-form textarea[name="Caption"]').val(), 
                        Description:$('.info-form textarea[name="Description"]').val(),
                    }
                }            

                parentCurr.applyMediaImage(urls,postMediaInfo);
                parentCurr.jQuery("#DnnMediaBox").fadeOut();
                $(".wrap-image.selected").removeClass("selected");


            };
        
        parentCurr.jQuery("#MediaAddImages").click(function () {

           if(isFreeImage && isFreeImage.largeImageURL){

                $(".SelectImage-TabsBox").addClass("ajax-loading");
                var data ={
                        Name:$("#image-name-box").text().trim(),
                        ImageURL:isFreeImage.largeImageURL,/* 
                        Alt:$('.info-form input[name="Alt"]').val(),
                        Title:$('.info-form input[name="Title"]').val(),
                        Caption:$('.info-form textarea[name="Caption"]').val(), 
                        Description:$('.info-form textarea[name="Description"]').val(), */
                    }

                 $.get('<%=GetServiceUrl("ServicePixabaySave") %>',data, function (data) {
                    
                    $('.info-form input[name="Url"]').val(data);
                    parentCurr.jQuery("#imgaesTEXTURL").val(data);
                    $(".SelectImage-TabsBox").removeClass("ajax-loading");
                    listPage = 1;
                    Image_Loader();
                    $("#SelectImageTabs > li").eq(1).children("a").trigger("click");

                    AddImages();
                    

                })
           }else{
            AddImages();

           }
        })

        window.addEventListener("message", (event) => { 
            if(event.data.media && event.data.media.FileUrl){
                $(".Select-image-info").html("");
                event.data.media.ThumbnailUrl = event.data.media.FileUrl;
                if(!event.data.media.Extension) event.data.media.Extension = event.data.media.FileUrl.split(".").slice(-1);
               

                $(".wrap-image.selected").removeClass("selected");

                $("#scriptImageInfo").tmpl(event.data.media).appendTo($(".Select-image-info"));
                $("#SelectImageTabs li").eq(0).trigger("click");
            }
        });



        var Manager_Modal_CropImage = '<%=GetModalPageUrl("Manager_Modal_CropImage") %>';

        function ImagesEditMediaBox(url,back,name){
            var box= window.parent.document.getElementById("ImagesEditMediaBox");
            if(!box){
                var iDom = document.createElement('div');
                iDom.innerHTML = '<div id="ImagesEditMediaBox" style="position: fixed;top: 0;left: 0;width: 100%;height: 100%;z-index: 99999999999999999;background-color: rgba(255,255,255,1);"><iframe id="ImagesEditMediaBox_Iframe" width="100%" height="100%" style="border-width: 0px; vertical-align:middle" src="'+Manager_Modal_CropImage+'imgurl='+encodeURIComponent(url)+(name?'&imgname='+encodeURIComponent(name):'')+'" ></iframe></div>';
                window.parent.document.body.insertBefore(iDom.childNodes[0], window.parent.document.body.lastChild)

            }else{
                window.parent.document.getElementById("ImagesEditMediaBox").style.display='block';  
                window.parent.document.getElementById("ImagesEditMediaBox_Iframe").src = Manager_Modal_CropImage+'imgurl='+encodeURIComponent(url)+(name?'&imgname='+encodeURIComponent(name):'');
            }
            window.parent.document.getElementById("ImagesEditMediaBox").getImageUrl = function(e){back(e);} 
        }


        $("body").on("click",'#EditImages',function(event){
            event.preventDefault();

            var urls = '';
            var name = '';
            $("img.img-responsive[class*='selected']").each(function (i) {
                var info = $(this).parents('.gallery-img').data('info');
                urls = info["FileUrl"];
                name = info["Name"];
            });

            if(!urls){
                urls = $(".info-image-warp .info-image img").attr("src");
            }
 
            if(!urls) return false;

            ImagesEditMediaBox(urls,function(url){


                url.FileUrl = url.FilePath;
                url.ThumbnailUrl = url.FilePath;
                url.Name = url.Name;
                url.Extension = url.FileExtension;

                $(".SelectImageList").prepend($("#scriptImage").tmpl(url).data("info",url))
                $("#SelectImageTabs > li").eq(1).children("a").trigger("click");
                $(".SelectImageList .wrap-image").eq(0).click();
                
              
            },name?name:false)
        })

        $("body").on("click",'#DeleteImages',function(event){
            event.preventDefault();
            var data = {
                'FileID':$(".wrap-image.selected").parent().data("info").ID
            }
            if(confirm('Are you sure you want to delete this item?')){
                $("#panel_tab_list").addClass("ajax-loading");
                $.get('<%=GetServiceUrl("ServiceDeleteFile") %>',data, function (data) {
                    Image_Loader();
                })
            }
        })
        $("body").on("click",'.zoom-image',function(event){
            event.preventDefault();
            $(".SelectImage-zoomBox .zoom-img").attr("src",$(this).attr("href"));
            $(".SelectImage-zoomBox").stop().fadeIn();
        })
        $("body").on("click",'.SelectImage-zoomBox',function(event){
            event.preventDefault();
            $(".SelectImage-zoomBox").stop().fadeOut();
        })
        



        if('<% =FilterFileExtension %>' != ''){
            $("#SelectImageTabs li").eq(2).hide();
        }

    });
</script>

