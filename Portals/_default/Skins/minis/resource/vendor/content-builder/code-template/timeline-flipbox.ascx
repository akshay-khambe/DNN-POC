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
                            <div class="copy" title="Copy"><svg>
                                    <use xlink:href="#lnr-copy"></use>
                                </svg></div>
                            <div class="sortdown" title="Down"><svg>
                                    <use xlink:href="#lnr-arrow-down"></use>
                                </svg></div>
                            <div class="sortup" title="Up"><svg>
                                    <use xlink:href="#lnr-arrow-up"></use>
                                </svg></div>
                            <div class="delete" title="Delete"><svg>
                                    <use xlink:href="#lnr-close"></use>
                                </svg></div>
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
                                <label class="control-label"><small>picture:</small></label>
                                <div class="control-cont">
                                    <div class="slideform singleImage">
                                        <div class="img"></div>
                                        <div class="filebuttom">
                                            <button class="fileImage"></button>
                                        </div>
                                        <input name="picture" type="hidden" class="dynamicOptions"/>
                                    </div>
                                    <input name="picturewidth" type="hidden" class="dynamicOptions imgwidth" value="${picturewidth}" />
                                    <input name="pictureheight" type="hidden" class="dynamicOptions imgheight" value="${pictureheight}" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Description:</label>
                                <div class="control-cont">
                                    <textarea rows="5" name="description" class="dynamicOptions"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">Link:</label>
                                <div class="control-cont">
                                    <input name="link" type="text" class="dynamicOptions extend-url" value="${link}" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Link Text:</label>
                                <div class="control-cont">
                                    <input name="linktext" type="text" class="dynamicOptions" value="${linktext}" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">Icon:</label>
                                <div class="control-cont">
                                    <select class="form-control dynamicOptions" name="icontype" id="icontype{id}" style=" width:300px">
                                        <option value="font">Font Icon</option>
                                        <option value="image">Image Icon</option>
                                    </select>
                                </div>
                            </div>   
                            <div style="padding-left:10px">                   
                                <div class="form-group conditional" data-condition="#icontype{id} == 'font'">
                                    <label class="control-label"> <small>Select Icon:</small></label>
                                    <div class="control-cont">
                                        <input name="icon" type="text" class="dynamicOptions iconSetting" />
                                    </div>
                                </div>
                                <div class="form-group conditional" data-condition="#icontype{id} == 'image'">
                                    <label class="control-label"><small>Select Icon:</small></label>
                                    <div class="control-cont">
                                        <div class="slideform singleImage">
                                            <div class="img"></div>
                                            <div class="filebuttom">
                                                <button class="fileImage"></button>
                                            </div>
                                            <input name="single" type="hidden" class="dynamicOptions"/>
                                        </div>
                                        <input name="singlewidth" type="hidden" class="dynamicOptions imgwidth" value="${singlewidth}" />
                                        <input name="singleheight" type="hidden" class="dynamicOptions imgheight" value="${singleheight}" />
                                    </div>
                                </div>
                            </div>  

                            <div class="form-group">
                                <label class="control-label">Background Color:</label>
                                <div class="control-cont" style="width: 150px;">
                                    <input name="bgcolor" type="text" class="dynamicOptions sample-selector"/>
                                    <i style="width: 42px;height: 42px;display: inline-block;position: absolute;margin-left: -1px;"></i>
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
            <label class="control-label">Navigation:</label>
            <div class="control-cont">
                <input name="navigation" type="checkbox" class="dnnOptions" ${navigation} data-default="checked" />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label">Auto play :</label>
            <div class="control-cont">
                <input name="autoplay" type="checkbox" class="dnnOptions" ${autoplay} data-default="checked" id="autoplay" />
                <input name="delay" type="number" class="dnnOptions conditional" data-condition="#autoplay" value="${delay}" data-default="5000" style="width: 100px" placeholder="ms" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">InitialSlide:</label>
            <div class="control-cont">
                <input name="initialslide" type="number" class="dnnOptions required" value="${initialslide}" data-default="3" style="width: 100px;" />
                <span class="pl-10"> Index number of initial slide.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Lazy load :</label>
            <div class="control-cont">
                <input name="lazy" type="checkbox" class="dnnOptions" ${lazy} />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Sub Title Item:</label>
            <div class="control-cont">
                <ul class="responsive-control-list">
                    <li><span>XS</span><input name="subdisplayxs" type="number" class="dnnOptions required" value="${subdisplayxs}" data-default="1" /></li>
                    <li><span>S</span><input name="subdisplays" type="number" class="dnnOptions required" value="${subdisplays}" data-default="2" /></li>
                    <li><span>M</span><input name="subdisplaym" type="number" class="dnnOptions required" value="${subdisplaym}" data-default="3" /></li>
                    <li><span>L</span><input name="subdisplayl" type="number" class="dnnOptions required" value="${subdisplayl}" data-default="4" /></li>
                    <li><span>XL</span><input name="subdisplayxl" type="number" class="dnnOptions required" value="${subdisplayxl}" data-default="5" /></li>
                    <li><span>XXL</span><input name="subdisplayxxl" type="number" class="dnnOptions required" value="${subdisplayxxl}" data-default="5" /></li>
                </ul>

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

    <style class="build-css" data-class="timeline-flipbox">
        
.timeline-flipbox .swiper-wrapper-overflow {
    overflow: hidden;
}

.timeline-flipbox .swiper-thumbnail-pagination {
    margin: 0 auto;
    padding: 0px 35px !important;
    max-width: 1200px;
}

.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide {
    justify-content: center;
    color: #ffffff;
    font-size: 18px;
    background: none;
}

.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide::after,
.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide::before,
.timeline-flipbox .swiper-thumbnail-pagination::after,
.timeline-flipbox .swiper-thumbnail-pagination::before {
    content: "";
    border-bottom: 2px solid #FFF;
    position: absolute;
    bottom: 9px;
    transition: all 300ms ease-in;

}

.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide::after {
    left: 0;
    right: calc(50% + 10px);
}

.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide::before {
    right: 0;
    left: calc(50% + 10px);
}

.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide:first-child::after {
    left: -1000px;
}

.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide:last-child::before {
    right: -1000px;
}

.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide-active.swiper-slide::after {
    right: calc(50% + 15px);
}

.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide-active.swiper-slide::before {
    left: calc(50% + 15px);
}

.timeline-flipbox .swiper-thumbnail-pagination::after {
    left: 0;
    width: 35px;
    border-bottom-style: dotted;
}

.timeline-flipbox .swiper-thumbnail-pagination::before {
    right: 0;
    width: 35px;
    border-bottom-style: dotted;
}

.timeline-flipbox .swiper-thumbnail-pagination .subtitle {
    background-color: transparent;
    padding: 5px 24px;
    margin: 0 0 42px;
    border-radius: 4px;
    position: relative;
    transform: translateY(12px);
    transition: all 300ms ease-in;
}

.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide-active .subtitle {
    background-color: var(--accent-color3);
    transform: translateY(0);
}

.timeline-flipbox .swiper-thumbnail-pagination .subtitle::after {
    content: "";
    position: absolute;
    width: 10px;
    height: 10px;
    background-color: inherit;
    bottom: -5px;
    left: 50%;
    margin-left: -5px;
    transform: rotate(45deg);
}

.timeline-flipbox .swiper-thumbnail-pagination .l-dot {
    width: 12px;
    height: 12px;
    background-color: #FFF;
    position: absolute;
    border-radius: 50%;
    bottom: 4px;
    left: 50%;
    margin-left: -6px;
}

.timeline-flipbox .swiper-thumbnail-pagination .l-dot::after {
    content: "";
    top: 0px;
    left: 0px;
    bottom: 0px;
    right: 0px;
    border: 2px solid rgba(255, 255, 255, .3);
    position: absolute;
    border-radius: 50%;
    transition: all 300ms ease-in;
}

.timeline-flipbox .swiper-thumbnail-pagination .swiper-slide-active .l-dot::after {
    top: -4px;
    left: -4px;
    bottom: -4px;
    right: -4px;
}

.timeline-flipbox .swiper-container-main:not([data-navigation="false"]) {
    padding: 0px 0px 60px;
}

.timeline-flipbox {
    overflow: hidden;
}
.timeline-flipbox .swiper-container-main .swiper-wrapper-overflow{
    overflow: visible;
}

.timeline-flipbox .swiper-container-main .swiper-slide {
    padding: 0px 15px;
    height: auto;
}

.timeline-flipbox .swiper-container-main .swiper-item {
    background-color: var(--accent-color2);
    width: 100%;
    display: flex;
    align-items: start;
    justify-content: center;
    padding: 40px 50px;
    border-radius: 4px;
    position: relative;
    margin-top: 20px;
    transition: all 300ms ease-in;
    opacity: 0.3;
}

.timeline-flipbox .swiper-container-main .swiper-button-next,
.timeline-flipbox .swiper-container-main .swiper-button-prev {
    width: 42px;
    height: 42px;
    border: 2px solid #FFF;
    border-radius: 50%;
    top: auto;
    bottom: 0;
    left: 50%;
}

.timeline-flipbox .swiper-container-main .swiper-button-next {
    margin-right: 12px;
}

.timeline-flipbox .swiper-container-main .swiper-button-prev {
    margin-left: -53px;
}

.timeline-flipbox .swiper-container-main .swiper-button-next span,
.timeline-flipbox .swiper-container-main .swiper-button-prev span {
    width: 10px;
    height: 10px;
    border-width: 2px;
    margin: -5px 0 0 -5px;
}

@media only screen and (max-width: 991px) {
    .timeline-flipbox .swiper-container-main .swiper-item {
        padding: 30px 20px;
    }
}
    </style>

    <div class="timeline-flipbox">
        {LT}div class="swiper-container swiper-thumbnail-pagination" loop="false"{{if initialslide}} data-initialSlide="${initialslide-1}"{{/if}} data-effect="timelinetilte" data-slidesperview="[${subdisplayxxl},${subdisplayxl},${subdisplayl},${subdisplaym},${subdisplays},${subdisplayxs}]" data-navigation="false"{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{{if $data.lazy}} data-lazy="true"{{/if}}{GT}
        <div class="swiper-wrapper ">
            {{if $data.items}}
            {{each(prop, val) $data.items }}
            <div class="swiper-slide">
                <div class="subtitle">${val.subtitle}</div>
                <span class="l-dot"></span>
            </div>
            {{/each}}
            {{/if}}
        </div>
        {LT}/div{GT}
        {LT}div class="swiper-container swiper-container-main" loop="false"{{if initialslide}} data-initialSlide="${initialslide-1}"{{/if}} data-effect="timelinemain" data-slidesperview="[${displayxxl},${displayxl},${displayl},${displaym},${displays},${displayxs}]" {{if !$data.navigation}} data-navigation="false"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{{if $data.lazy}} data-lazy="true"{{/if}}{GT}
        <div class="swiper-wrapper">
            {{if $data.items}}
            {{each(prop, val) $data.items }}
            <div class="swiper-slide">
                <div class="flipbox-02 flipbox-notedit">
                    <div class="front">
                        <div class="box">
                            <div class="image"> 
                            {{if $data.lazy}}
                            {LT}img alt="${val.title}" data-src="${val.picture}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${picturewidth} ${pictureheight}' wdith='${picturewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${picturewidth}" class="swiper-lazy"{GT}
                                <div class="swiper-lazy-preloader"></div>
                            {{else}}
                            {LT}img alt="${val.title}" src="${val.picture}" /{GT}
                            {{/if}}
                            </div>



                            <h6 class="title color-accent2">${val.title}</h6>
                        </div>
                    </div>
                    <div class="back bg-accent2" style="background-color: ${val.bgcolor};">
                        <div class="box">

                            <div class="icon color-accent2" style="color: ${val.bgcolor};">
                                {{if val.icontype =="font"}}    

                                {{if val.icon}}
                                {{if val.icon.indexOf("sico")!=-1}}
                                <i class="${val.icon} mod-icon"><svg>{LT}use xlink:href="#${val.icon.split(" ")[1]}"{GT}{LT}/use{GT}</svg> </i>
                                {{else val.icon.indexOf("icon-svg")!=-1}}
                                <i class="${val.icon}"> {LT}svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="${val.icon.split("icon-svg icon-")[1]}"{GT}{LT}/svg{GT}</i>
                                {{/if}}
                                {{/if}}
                                {{else}}
                                {{if $data.lazy}}
                                {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' wdith='${singlewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                    <div class="swiper-lazy-preloader"></div>
                                {{else}}
                                {LT}img alt="${val.title}" src="${val.single}" /{GT}
                                {{/if}}
                                {{/if}}
                            </div>
                            <h6 class="title">${val.title}</h6>
                            <div class="description">
                                {{html val.description}}
                            </div>
                            {{if val.link}}
                            <div class="flip_link"><a href="<%= SkinPath %>${val.link}"><span> {{html val.linktext}} <i class="sico lnr-arrow-right"><svg>
                                                <use xlink:href="#lnr-arrow-right"></use>
                                            </svg></i></span></a></div>
                            {{/if}}

                        </div>
                    </div>
                </div>
            </div>
            {{/each}}
            {{/if}}
        </div>
        {LT}/div{GT}
    </div>

    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("swiper", "${moduleid}", "carousel")
    </script>

</div>
