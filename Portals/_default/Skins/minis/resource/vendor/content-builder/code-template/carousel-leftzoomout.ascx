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
                                    <label class="control-label">Position:</label>
                                    <div class="control-cont">
                                        <input name="job" type="text" class="dynamicOptions" />
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
                                    <label class="control-label">Icon 1:</label>
                                    <div class="control-cont">
                                        <input name="icon" type="text" class="dynamicOptions iconSetting" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Icon 1 Color:</label>
                                    <div class="control-cont">
                                        <input name="iconcolor" type="text" class="dynamicOptions sample-selector" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Icon 1 Link:</label>
                                    <div class="control-cont">
                                        <input name="iconlink" type="text" class="dynamicOptions extend-url" />
                                    </div>
                                </div>
    
                                <div class="form-group">
                                    <label class="control-label">Icon 2:</label>
                                    <div class="control-cont">
                                        <input name="icon2" type="text" class="dynamicOptions iconSetting" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Icon 2 Color:</label>
                                    <div class="control-cont">
                                        <input name="iconcolor2" type="text" class="dynamicOptions sample-selector" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Icon 2 Link:</label>
                                    <div class="control-cont">
                                        <input name="iconlink2" type="text" class="dynamicOptions extend-url" />
                                    </div>
                                </div>
    
                                <div class="form-group">
                                    <label class="control-label">Icon 3:</label>
                                    <div class="control-cont">
                                        <input name="icon3" type="text" class="dynamicOptions iconSetting" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Icon 3 Color:</label>
                                    <div class="control-cont">
                                        <input name="iconcolor3" type="text" class="dynamicOptions sample-selector" />
                                    </div>
                                </div>
                               <div class="form-group">
                                    <label class="control-label">Icon 3 Link:</label>
                                    <div class="control-cont">
                                        <input name="iconlink3" type="text" class="dynamicOptions extend-url" />
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
            <label class="control-label">Pagination:</label>
            <div class="control-cont">
                <input name="pagination" type="checkbox" class="dnnOptions" ${pagination} />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Lazy load:</label>
            <div class="control-cont">
                <input name="lazy" type="checkbox" class="dnnOptions" ${lazy} />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label">Auto play:</label>
            <div class="control-cont">
                <input name="autoplay" type="checkbox" class="dnnOptions" ${autoplay} data-default="checked" id="autoplay" />
                <input name="delay" type="number" class="dnnOptions conditional" data-condition="#autoplay" value="${delay}" data-default="5000" style="width: 100px" placeholder="ms" />
            </div>
        </div>
     
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
       

    </div>

</div>


<!--build HTML-->

<div class="buildHTML">
    {{if $data.style == "carousel-leftzoomout01"}}
    <style class="build-css" data-class="carousel-leftzoomout01">
        

.carousel-leftzoomout01 .item {
	padding: 0px 15px;
}

.carousel-leftzoomout01 .item .pic {
	position: relative;
}

.carousel-leftzoomout01 .item img {
	vertical-align: middle;
}
.carousel-leftzoomout01 .item{
	-webkit-perspective: 1200px;
    -moz-perspective: 1200px;
    -o-perspective: 1200px;
	perspective: 1200px;
	-webkit-transition: all ease-in 300ms;
	transition: all ease-in 300ms;
}
.carousel-leftzoomout01 .pic{
	position: relative;
	z-index: 5;
}
.carousel-leftzoomout01 .content {
	margin:-48px 30px 0;
	background-color: #FFF;
	box-shadow:0 0 10px rgba(0,0,0,0.15);
	border-radius: 5px;
	position: relative;
	padding: 20px 20px 15px;
    -webkit-transform: rotateX(-180deg) translateY(100px);
    transform: rotateX(-180deg) translateY(100px); 
	opacity: 0;
	-webkit-transition: all ease-in 300ms;
	transition: all ease-in 300ms;
	z-index: 0;

}
.carousel-leftzoomout01 .title{
	margin: 0 0 16px;
	line-height: 1;
}
.carousel-leftzoomout01 .title small{
	font-size: 16px;
	color: #787878;
}
.carousel-leftzoomout01 .title small::before{
	content: "";
	width: 5px;
	display: inline-block;
	border-bottom: 1px solid currentColor;
	vertical-align: middle;
    margin: 0 6px;
}
.carousel-leftzoomout01 .social a{
	margin: 0px 10px 5px;
	display: inline-block;
}
.carousel-leftzoomout01 .swiper-slide:not(.swiper-slide-active) .item{
	opacity: 0.6;
}
.carousel-leftzoomout01 .swiper-slide-active .content {
	-webkit-transform: rotateX(0deg) translateY(0);
    transform: rotateX(0deg) translateY(0);
	opacity: 1;
	z-index: 10;
}
.carousel-leftzoomout01 .swiper-wrapper-overflow{
	padding: 0 0 20px; margin-left:-15px;
}
.carousel-leftzoomout01 .swiper-pagination{
	margin:0 ;
	text-align: left;
}

.carousel-leftzoomout01 .swiper-pagination .swiper-pagination-bullet{
	width: 50px;
	height: 1px;
	background-color: var(--accent-color2);
	opacity: 1;
	position: relative;
}
.carousel-leftzoomout01 .swiper-pagination .swiper-pagination-bullet::after{
	content: "";
	position: absolute;
	top: -1px;
	height: 3px;
	border-top: 1px solid var(--accent-color2);
	border-bottom: 1px solid var(--accent-color2);
	width: 0;
	left: 0;
	-webkit-transition: all ease-in 300ms;
	transition: all ease-in 300ms;
}
.carousel-leftzoomout01 .swiper-pagination .swiper-pagination-bullet.swiper-pagination-bullet-active::after{
	width: 100%;
}
.carousel-leftzoomout01 .swiper-pagination .swiper-pagination-bullet::before{
	content: "";
	position: absolute;
	top: -4px;
	bottom: -4px;
	left: 0;
	right: 0;
}
@media only screen and (max-width: 991px) {
    .carousel-leftzoomout01 .content{
        margin-left:10px;
        margin-right:10px;
        padding-left:10px;
        padding-right:10px;
    }
    .carousel-leftzoomout01 .title{
        font-size: 16px;
    }
    .carousel-leftzoomout01 .title small{
        font-size: 14px;
    }

}
    </style>
    {{/if}}

    {LT}div class="swiper-container carousel-swiper ${style} loading" data-effect="leftzoomout" data-navigation="false" {{if !$data.pagination}}data-pagination="false"{{/if}} data-slidesperview="[${displayxxl},${displayxl},${displayl},${displaym},${displays},${displayxs}]"{{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}

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

                                {{if $data.style == "carousel02" || $data.style == "carousel03"}}
                                    {{if val.linktype == "linkurl"}}     
                                    <a class="link" href="<%= SkinPath %>${val.link}" title="${val.title}"><span></span></a>
                                    {{else val.linktype == "image"}}
                                    <a class="link is-lightbox" data-ilightbox="image" href="<%= SkinPath %>${val.singlebig}" title="${val.title}"><span></span></a>
                                    {{/if}}
                                {{/if}}
                            </div>
                            {{/if}}
                           
                            <div class="content">
                                <h5 class="title">${val.title}{{if val.job}}<small>${val.job}</small>{{/if}}</h5>
                                <div class="social">
                                        {{if val.iconlink}} <a href="<%= SkinPath %>${val.iconlink}" target="${linktarget}">{{/if}}
                                        {{if val.icon}}
                                            {{if val.icon.indexOf("sico")!=-1}}
                                            <i class="${val.icon} mod-icon" style="color:${val.iconcolor};"><svg>{LT}use xlink:href="#${val.icon.split(" ")[1]}"{GT}{LT}/use{GT}</svg> </i>
                                            {{else val.icon.indexOf("icon-svg")!=-1}}
                                            <i class="${val.icon}" style="color:${val.iconcolor};"> {LT}svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="${val.icon.split("icon-svg icon-")[1]}"{GT}{LT}/svg{GT}</i>
                                            {{/if}}
                                        {{/if}}                              
                                        {{if val.iconlink}}</a>{{/if}}
                                        {{if val.iconlink2}} <a href="<%= SkinPath %>${val.iconlink2}" target="${linktarget}">{{/if}}
                                        {{if val.icon2}}
                                            {{if val.icon2.indexOf("sico")!=-1}}
                                            <i class="${val.icon2} mod-icon" style="color:${val.iconcolor2};"><svg>{LT}use xlink:href="#${val.icon2.split(" ")[1]}"{GT}{LT}/use{GT}</svg> </i>
                                            {{else val.icon2.indexOf("icon-svg")!=-1}}
                                            <i class="${val.icon2}" style="color:${val.iconcolor2};"> {LT}svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="${val.icon2.split("icon-svg icon-")[1]}"{GT}{LT}/svg{GT}</i>
                                            {{/if}}
                                        {{/if}} 
                                        {{if val.iconlink2}}</a>{{/if}}
                                        {{if val.iconlink3}}<a href="<%= SkinPath %>${val.iconlink3}" target="${linktarget}">{{/if}}
                                        {{if val.icon3}}
                                            {{if val.icon3.indexOf("sico")!=-1}}
                                            <i class="${val.icon3} mod-icon" style="color:${val.iconcolor3};"><svg>{LT}use xlink:href="#${val.icon3.split(" ")[1]}"{GT}{LT}/use{GT}</svg> </i>
                                            {{else val.icon3.indexOf("icon-svg")!=-1}}
                                            <i class="${val.icon3}" style="color:${val.iconcolor3};"> {LT}svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="${val.icon3.split("icon-svg icon-")[1]}"{GT}{LT}/svg{GT}</i>
                                            {{/if}}
                                        {{/if}} 
                                        {{if val.iconlink3}}</a>{{/if}}
                                        </div>
                                        




                            </div>
                           

                        </div>
                    </div>
                {{/each}}
            {{/if}}
        </div>



    {LT}/div{GT}

  

    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("swiper", "${moduleid}", "carousel")
    </script>

</div>
