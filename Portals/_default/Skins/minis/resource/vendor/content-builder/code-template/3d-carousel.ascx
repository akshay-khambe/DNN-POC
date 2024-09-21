<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="<%= SkinPath %>#">Carousel Item</a></li>
    <li><a href="<%= SkinPath %>#">Carousel Options</a></li>
</ul>
<div class="tab-content">
    <div class="tab-pane active">

            <div class="form-group">
                <div class="control-cont">
                    <div class="dynamic-list">
                        <div class="dynamic-item">
                            <div class="dynamic-title"><span class="name">ITEM 01</span>
                                <div class="copy" title="Copy"><svg><use xlink:href="#lnr-copy"></use></svg></div>
                                <div class="sortdown" title="Down"><svg><use xlink:href="#lnr-arrow-down"></use></svg></div>
                                <div class="sortup" title="Up"><svg><use xlink:href="#lnr-arrow-up"></use></svg></div>
                                <div class="delete" title="Delete"><svg><use xlink:href="#lnr-close"></use></svg></div>
                                </div>
                            <div class="dynamic-content">
                                <div class="form-group">
                                    <label class="control-label">Title:</label>
                                    <div class="control-cont">
                                        <input name="title" type="text" class="dynamicOptions" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Picture:</label>
                                    <div class="control-cont">
                                        <div class="slideform singleImage">
                                            <div class="img"></div>
                                            <div class="filebuttom">
                                                <button class="fileImage"></button>
                                            </div>
                                            <input name="single" type="hidden" class="dynamicOptions" value="${single}" />
                                        </div>
                                        <input name="singlewidth" type="hidden" class="dynamicOptions imgwidth" value="${singlewidth}" />
                                        <input name="singleheight" type="hidden" class="dynamicOptions imgheight" value="${singleheight}" />
                                    </div>
                                </div>
                                {{if $data.style == "carousel-3d-style02"}}
                                <div class="form-group">
                                    <label class="control-label">Description:</label>
                                    <div class="control-cont">
                                        <textarea rows="5" name="description" class="dynamicOptions"></textarea>
                                    </div>
                                </div>
                                {{/if}}

                            </div>
                        </div>
                        <div class="dynamic-footer">
                            <div class="dynamic-add">+</div>
                            <input name="items" type="text" class="dnnOptions json" value="${ $data.items && JSON.stringify(items)}" />
                        </div>
                    </div>
                </div>
            </div>
       
    </div>
    <div class="tab-pane">
         
            <div class="form-group">
                <label class="control-label">Pagination:</label>
                <div class="control-cont">
                    <input name="pagination" type="checkbox" class="dnnOptions" ${pagination}/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Navigation:</label>
                <div class="control-cont">
                    <input name="navigation" type="checkbox" class="dnnOptions" ${navigation} data-default="checked"  />
                </div>
            </div>
           
            <div class="form-group">
                <label class="control-label">Lazy load :</label>
                <div class="control-cont">
                    <input name="lazy" type="checkbox" class="dnnOptions" ${lazy} />
                </div>
            </div>
            
            <div class="form-group">
                <label class="control-label">Auto play :</label>
                <div class="control-cont">
                    <input name="autoplay" type="checkbox" class="dnnOptions" ${autoplay} data-default="checked" id="autoplay" />
                    <input name="delay" type="number" class="dnnOptions conditional"  data-condition="#autoplay" value="${delay}" data-default="5000" style="width: 100px" placeholder="ms"  /> 
                </div>
            </div>
            {{if $data.style == "carousel-3d-style02"}}
            <div class="form-group">
                <label class="control-label">Item:</label>
                <div class="control-cont">
                <ul class="responsive-control-list">
                    <li><span>XS</span><input name="displayxs" type="number" class="dnnOptions required" value="${displayxs}" data-default="1" /></li>
                    <li><span>S</span><input name="displays" type="number" class="dnnOptions required" value="${displays}" data-default="1" /></li>
                    <li><span>M</span><input name="displaym" type="number" class="dnnOptions required" value="${displaym}" data-default="2" /></li>
                    <li><span>L</span><input name="displayl" type="number" class="dnnOptions required" value="${displayl}" data-default="2" /></li>
                    <li><span>XL</span><input name="displayxl" type="number" class="dnnOptions required" value="${displayxl}" data-default="3" /></li>
                    <li><span>XXL</span><input name="displayxxl" type="number" class="dnnOptions required" value="${displayxxl}" data-default="3" /></li>
                </ul>
                    
                </div>
            </div>
            {{/if}}
           
    </div>

</div>


<!--build HTML-->
         
<div class="buildHTML">
    
    {{if $data.style == "carousel-3d-style01"}}
     <style class="build-css" data-class="${style}">
        .carousel-3d-style01 .pic{
            border: 5px solid #FFF;
            border-radius: 10px;
            overflow: hidden;
            background-color: #FFF;
            box-shadow: -5px 7px 40px rgba(0,0,0,0.2);
        }
        .carousel-3d-style01 .swiper-wrapper-overflow{
            padding: 35px 0 47px 0;
        }
        .carousel-3d-style01 .swiper-pagination{
            margin: 0 0 15px;
        }
        .carousel-3d-style01 .swiper-wrapper-overflow{
            overflow: visible;
        }
        .carousel-3d-style01.swiper-container .swiper-pagination-bullet:not(.swiper-pagination-bullet-active){
            background-color: #e5e5e5;
            opacity: 1;
        }
    </style>
    {{else $data.style == "carousel-3d-style02"}}
    <style class="build-css" data-class="${style}">
.carousel-3d-style02 .swiper-wrapper-overflow{
    padding:0;
    overflow: visible;
}
.carousel-3d-style02 .cont{
    position: absolute;
    bottom: 0;
}
.carousel-3d-style02 .pic{
    position: relative;
    overflow: hidden;
    backface-visibility: hidden;
}
.carousel-3d-style02 .pic .shadow{
    content: "";
    position: absolute;
    background: linear-gradient(rgba(0,0,0,.0), rgba(0,0,0,0.8));
    top:50%;
    left: 0;
    right: 0;
    bottom: -1px;
    opacity: 0;
}
.carousel-3d-style02 .cont {
    color: #fff;
    opacity: 0;
    width: 100%;
    text-align: center;
}
.carousel-3d-style02 .title {
    font-size: 20px;
    font-weight: 600;
    color: #fff;
}
.carousel-3d-style02 .swiper-button-next, .carousel-3d-style02 .swiper-button-prev{
    width: 42px;
    height: 42px;
    border: 2px solid #FFFFFF;
    border-radius: 50%;
}
.carousel-3d-style02 .swiper-button-next{
    right: 50%;
}
.carousel-3d-style02 .swiper-button-prev{
    left: 50%;
}
.carousel-3d-style02 .swiper-button-next span, .carousel-3d-style02 .swiper-button-prev span{
    width: 13px;
    height: 13px;
    border-width: 2px;
    margin: -7px 0 0 -9px;
    color: #FFF;
}
.carousel-3d-style02 .swiper-button-prev span{
    margin: -7px 0 0 -5px;
}
.carousel-3d-style02 .swiper-pagination{
   margin: 0px 0 0px;
    position: absolute;
    bottom: -35px;
}
 
@media only screen and (max-width: 600px) {
    .carousel-3d-style02 .swiper-button-next{
        right: 15px;
        margin-right: 0!important;
    }
    .carousel-3d-style02 .swiper-button-prev{
        left: 15px;
        margin-left: 0!important;
    }
}
        	
    </style>
    {{/if}}
    {{if $data.style == "carousel-3d-style01"}}
    {LT}div class="swiper-container carousel-swiper ${style} loading" data-effect="slides3d" data-centeredSlides="true" {{if !$data.pagination}}data-pagination="false"{{/if}}{{if !$data.navigation}} data-navigation="false"{{/if}} {{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
    {{else $data.style == "carousel-3d-style02"}}
    {LT}div class="swiper-container carousel-swiper ${style} loading" data-effect="slides3d_2" data-centeredSlides="true" {{if !$data.pagination}}data-pagination="false"{{/if}}{{if !$data.navigation}} data-navigation="false"{{/if}}  data-slidesperview="[${displayxxl},${displayxl},${displayl},${displaym},${displays},${displayxs}]"{{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
    {{/if}}

        <div class="swiper-wrapper">      
            {{if $data.items}}
                {{each(prop, val) $data.items }}
                <div class="swiper-slide">
                        <div class="item">
                            {{if val.single }}
                            <div class="pic">
                                {{if $data.lazy}}
                                {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' wdith='${singlewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                    <div class="swiper-lazy-preloader"></div>
                                {{else}}
                                {LT}img alt="${val.title}" src="${val.single}" /{GT}
                                {{/if}}
                                <div class="shadow"></div>
                            </div>
                            {{/if}}
                            {{if $data.style == "carousel-3d-style02"}}
                            <div class="cont">
                                <h3 class="title"> ${val.title}</h3>
                                <div class="description"> ${val.description}</div>
                            </div>
                            {{/if}}
                        </div>
                    </div>
                {{/each}}
            {{/if}}
        </div>
    {LT}/div{GT}


    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("swiper", "${moduleid}","carousel")
    </script>

</div>
