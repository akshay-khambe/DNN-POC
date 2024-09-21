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
                                <label class="control-label">Sub Title:</label>
                                <div class="control-cont">
                                    <input name="subtitle" type="text" class="dynamicOptions" />
                                </div>
                            </div>                             

                            <div class="form-group">
                                <label class="control-label">Tag:</label>
                                <div class="control-cont">
                                    <input name="Tag" type="text" class="dynamicOptions" />
                                </div>
                            </div>    

                            <div class="form-group">
                                <label class="control-label">Description:</label>
                                <div class="control-cont">
                                    <textarea rows="5" name="description" class="dynamicOptions"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">Button Text:</label>
                                <div class="control-cont">
                                    <input name="buttontext" type="text" class="dynamicOptions" />
                                </div>
                            </div>  
                            <div class="form-group">
                                <label class="control-label">Button Link:</label>
                                <div class="control-cont">
                                    <input name="link" type="text" class="dynamicOptions extend-url" value="${link}" />
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

                           <!--  <div class="form-group">
                                <label class="control-label">Apply To Background:</label>
                                <div class="control-cont">
                                    <input name="Applybg" type="checkbox" class="dynamicOptions" ${Applybg} />
                                </div>
                            </div> -->




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
    <style class="build-css" data-class="slider-banner-main">
.slider-banner-main .swiper-slide{
    height: auto;
}

.slider-banner-main .item{
    display: flex;
    align-items: center;
    text-align: left;
    border-radius: 25px;
    box-shadow: 0px 0px 40px 0px rgba(0,0,0,0.2);
    overflow: hidden;
    margin: 30px 70px;
    position: relative;
    background-color: #FFF;
}

.slider-banner-main .swiper-slide{
    cursor: pointer;
}
.slider-banner-main .swiper-slide.swiper-slide-active{
    cursor: auto;
} 

.slider-banner-main .content{
    padding:60px 30px 60px 60px;
    flex: 0 0 50%;
}
.slider-banner-main .tag span{
    background: #df2a63;
    opacity: 1;
    padding: 4px 14px 2px 14px;
    border-radius: 8px;
    display: inline-block;
    font-size: 18px;
    margin: 0 8px 8px 0;
    color: #FFF;
    font-weight: bold;
}

.slider-banner-main .title{
    font-size: 32px;
}

.slider-banner-main .subtitle{
    font-size: 16px;
    font-weight: 600;
    font-style: italic;
}
.slider-banner-main .description::before{
    content: "";
    width: 60px;
    height: 6px;
    display: block;
    background-color: var(--accent-color2);
    margin: 20px 0;
}
.slider-banner-main .description{
    margin-bottom: 30px;
}

.slider-banner-main .more,
.slider-banner-main .more:link,
.slider-banner-main .more:active,
.slider-banner-main .more:visited{
    position: relative;
    font-size: 16px;
    color: #fff;
    line-height: 41px;
    height: 41px;
    text-align: center;
    white-space: nowrap;
    border-radius: 21px;
    display: inline-block;
    padding: 0 30px;
    background-color: var(--button-color);
    transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
}
.slider-banner-main .more:hover {
    background-color: var(--button-hover-color);
}
.slider-banner-main .pic{
    position: relative;
}
.slider-banner-main .bg{
    position: absolute;
    left: 50%;
    right: 0;
    bottom: 0;
    top: 0;
    background-position: center center;
    background-size: cover;
    background-clip: content-box;
}
.slider-banner-main img{
    max-width: 100%;
}
.slider-banner-main .swiper-pagination .swiper-pagination-bullet-active{
    width: 12px;
}

.slider-banner-main .swiper-pagination{
    margin-top: -27px;
}

.slider-banner-main,
.slider-banner-main .swiper-slide,
.slider-banner-main .item,
.slider-banner-main .bg{
    transform: translate3d(0,0,0);
}




@media only screen and (max-width:991px) {
    .slider-banner-main .item{
        margin: 30px;
        box-shadow: 0px 0px 28px 0px rgba(0,0,0,0.2);
    }
    .slider-banner-main .content{
        padding:30px
    }
}
.slider-banner-main.swiper-container .swiper-button-prev,
.slider-banner-main.swiper-container .swiper-button-next{
	width: 52px;
	height: 52px;
	background: #FFF;
    border-radius: 50%;
    margin-top: -26px;
    color:var(--accent-color);
    transition: background-color ease-in 300ms,color ease-in 300ms;
}
.slider-banner-main.swiper-container .swiper-button-prev{
    box-shadow:-2px 0 8px rgba(0,0,0,.1);
    left: 30px;
}
.slider-banner-main.swiper-container .swiper-button-next{
    box-shadow:2px 0 8px rgba(0,0,0,.1);
    right: 30px;
}


.slider-banner-main.swiper-container .swiper-button-next span{
    width: 13px;
    height: 13px;
	margin: -7px 0 0 -12px;	
}
.slider-banner-main.swiper-container .swiper-button-prev span{
    width: 13px;
    height: 13px;
	margin: -7px 0 0 -3px;
}

.slider-banner-main.swiper-container .swiper-button-prev:hover,
.slider-banner-main.swiper-container .swiper-button-next:hover{
    background-color: var(--accent-color);
    color: #FFF;
}


@media only screen and (max-width:767px) {
    .slider-banner-main .item{
        margin:0 15px;
        border-radius: 15px;
        box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.2);
        text-align: center;
        flex-direction: column;
    }
    .slider-banner-main .content{
        padding: 30px;
    }
    .slider-banner-main .bg{
        height: 268px;
        top: auto;
        left: 0;
    }
    
    .slider-banner-main .bg::before{
        content: "";
        position: absolute;
        width: 100%;
        height: 30%;
        top: 0;
        left: 0;
        background-image: linear-gradient(rgba(255,255,255,1), rgba(255,255,255,0));
    }

    
    .slider-banner-main .title{
        font-size: 28px;
    }
    .slider-banner-main .description::before{
        margin-left: auto;
        margin-right: auto;
    }
    .slider-banner-main .pic{
        padding:30px 40px 0;
        order: -1;
    }
    .slider-banner-main .tag span{
        font-size: 14px;
    }
    .slider-banner-main .swiper-pagination{
        margin-top: -10px;
    }
}
    </style>


    {LT}div class="swiper-container carousel-swiper slider-banner-main loading" data-slideToClickedSlide="true" data-centeredSlides="true" data-speed="1000" {{if !$data.pagination}}data-pagination="false"{{/if}}{{if !$data.navigation}} data-navigation="false"{{/if}} data-loopedSlides="2" data-slidesperview="[${displayxxl},${displayxl},${displayl},${displaym},${displays},${displayxs}]"{{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}

        <div class="swiper-wrapper">      
            {{if $data.items}}
                {{each(prop, val) $data.items }}
                <div class="swiper-slide">
                    <div class="item">
                        
                        <div class="content is-inherit-root-text">
                            {{if val.Tag}}
                            <div class="tag">{{each(p, t) val.Tag.split(",") }}<span>${t}</span>{{/each}}</div>
                            {{/if}}
                            <h3 class="title">
                                ${val.title}
                            </h3>
                            {{if val.subtitle}}
                            <h4 class="subtitle">
                                ${val.subtitle}
                            </h4>
                            {{/if}}
                            <div class="description">
                                {{html val.description}}
                            </div>
                            {{if val.link && val.buttontext}}
                            <a class="more button-01" href="<%= SkinPath %>${val.link}">${val.buttontext}</a>
                            {{/if}}
                        </div>
                        {{if !val.Applybg && val.single }}
                        <div class="pic">
                            {{if $data.lazy}}
                            {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' wdith='${singlewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                <div class="swiper-lazy-preloader"></div>
                            {{else}}
                            {LT}img alt="${val.title}" src="${val.single}" /{GT}
                            {{/if}}
                        </div>
                        {{/if}}     
                        
                        {{if val.Applybg && val.single }}
                        <div class="bg" style='background-image: url("${val.single}");'></div>
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
