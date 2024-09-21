<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
        <li class="active"><a href="<%= SkinPath %>#">Masonry Item</a></li>
        <li><a href="<%= SkinPath %>#">Masonry Options</a></li>
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
                                <div class="form-group">
                                    <label class="control-label">Link Type:</label>
                                    <div class="control-cont">
                                        <select class="form-control dynamicOptions" name="linktype" data-default="image" id="linktype{id}">
                                            <option value="none">None</option>
                                            <option value="linkurl">Link</option>
                                            <option value="image">Image</option>
                                        </select>
                                    </div>
                                </div>               
                                <div class="form-group conditional"  data-condition="#linktype{id} == 'linkurl'">
                                    <label class="control-label">Link:</label>
                                    <div class="control-cont">
                                        <input name="link" type="text" class="dynamicOptions extend-url" value="${link}" />
                                    </div>
                                </div>
    
                                <div class="form-group conditional"  data-condition="#linktype{id} == 'image'">
                                    <label class="control-label">Large Picture:</label>
                                    <div class="control-cont">
                                        <div class="slideform singleImage">
                                            <div class="img"></div>
                                            <div class="filebuttom">
                                                <button class="fileImage"></button>
                                            </div>
                                            <input name="singlebig" type="hidden" class="dynamicOptions" value="${singlebig}" />
                                        </div>
                                    </div>
                                </div>
                               
                                <div class="form-group">
                                    <label class="control-label">Description:</label>
                                    <div class="control-cont">
                                        <textarea rows="5" name="description" class="dynamicOptions"></textarea>
                                    </div>
                                </div>


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
                <label class="control-label">Lazy load :</label>
                <div class="control-cont">
                    <input name="lazy" type="checkbox" class="dnnOptions" ${lazy} />
                </div>
            </div>
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
                <label class="control-label">Auto play :</label>
                <div class="control-cont">
                    <input name="autoplay" type="checkbox" class="dnnOptions" ${autoplay} data-default="checked" id="autoplay" />
                    <input name="delay" type="number" class="dnnOptions conditional"  data-condition="#autoplay" value="${delay}" data-default="5000" style="width: 100px" placeholder="ms"  /> 
                </div>
            </div>


    
            <div class="form-group">
                <label class="control-label">Item:</label>
                <div class="control-cont">
                <ul class="responsive-control-list">
                    <li><span>XS</span><input name="displayxs" type="number" class="dnnOptions required" min="1" value="${displayxs}"/></li>
                     <li><span>S</span><input name="displays" type="number" class="dnnOptions required" min="1" value="${displays}"/></li>
                    <li><span>M</span><input name="displaym" type="number" class="dnnOptions required" min="1" value="${displaym}"/></li>
                    <li><span>L</span><input name="displayl" type="number" class="dnnOptions required" min="1" value="${displayl}"/></li>
                    <li><span>XL</span><input name="displayxl" type="number" class="dnnOptions required" min="1" value="${displayxl}"/></li>
                    <li><span>XXL</span><input name="displayxxl" type="number" class="dnnOptions required" min="1" value="${displayxxl}"/></li>
               </ul>                    
                </div>
            </div>
    
        </div>
    
    </div>
    
    
    <!--build HTML-->
             
<div class="buildHTML">
        {{if $data.style == "portfolio-carousel2-style01"}}
        <style class="build-css" data-class="${style}">


.portfolio-carousel2-style01.swiper-container{
	margin-right: -2px;
	width: auto;
}
.portfolio-carousel2-style01 .swiper-wrapper-overflow{
	padding: 0;
}
.portfolio-carousel2-style01 .content{
	text-align: left;
	bottom: 0;
	position: absolute;
	left: 0;
	width: 100%;
	padding:40px 48px;
	pointer-events: none;
}
.portfolio-carousel2-style01 .content *{
	color: #fff;
}
.portfolio-carousel2-style01 .content p{
	margin: 0;
	max-height: 0;
	overflow: hidden;
	opacity: 0;
	transition: all ease-in 300ms;
}
.portfolio-carousel2-style01 .swiper-slide:hover .content p{
	max-height:170px;
	opacity: 1;
}

.portfolio-carousel2-style01 .content .title{
	margin: 0px 0px 22px;
}
.portfolio-carousel2-style01 .swiper-pagination-bullets{
	margin:30px 0;

}
.portfolio-carousel2-style01 .swiper-pagination-bullet{
	width: 12px;
	height: 12px;
	border-radius: 12px;
	-webkit-transition: width ease-in 200ms;
	transition: 		width ease-in 200ms;
}
.portfolio-carousel2-style01 .swiper-pagination-bullet-active{
	width: 24px;
}
.portfolio-carousel2-style01.swiper-container .swiper-button-prev,
.portfolio-carousel2-style01.swiper-container .swiper-button-next{
	width: 60px;
	height: 60px;
	background: #FFF;
	border-radius: 50%;
}
.portfolio-carousel2-style01.swiper-container .swiper-button-next span{
	margin: -7px 0 0 -12px;	
}
.portfolio-carousel2-style01.swiper-container .swiper-button-prev span{
	margin: -7px 0 0 -3px;
}
        </style>
        {{/if}}

    {LT}div class="swiper-container carousel-swiper ${style} loading" {{if !$data.pagination}}data-pagination="false"{{/if}}{{if !$data.navigation}} data-navigation="false"{{/if}} data-slidesperview="[${displayxxl},${displayxl},${displayl},${displaym},${displays},${displayxs}]"{{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
    <div class="swiper-wrapper">      
        {{if $data.items}}
        {{each(prop, val) $data.items }} 
        <div class="swiper-slide">
                <article class="item">
                    <div class="pic">
                        {{if val.linktype == "linkurl"}}{LT}a class="link" href="${val.link}"{GT}{{else val.linktype == "image"}}{LT}a class="link is-lightbox" data-ilightbox="image" href="${val.singlebig}"{GT}{{/if}} {{if $data.lazy}}{LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' wdith='${singlewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}<div class="swiper-lazy-preloader"></div>{{else}}{LT}img alt="${val.title}" src="${val.single}" /{GT}{{/if}}{{if val.linktype != "none"}}{LT}/a{GT}{{/if}}
                    </div>
                    <div class="content">
                        <h5 class="title">${val.title}</h5>
                        <p>${val.description}</p>
                    </div>
            </article>
            </div>
        {{/each}}
        {{/if}}
    </div>
    {LT}/div{GT}

    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("swiper", "${moduleid}","carousel")
    </script>
</div>
