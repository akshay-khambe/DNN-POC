<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="<%= SkinPath %>#">Item</a></li>
    <li><a href="<%= SkinPath %>#">Options</a></li>
</ul>
<div class="tab-content">
    <div class="tab-pane active">

        
        {{if $data.style == "swiper01"}}
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
                                    <label class="control-label">Icon:</label>
                                    <div class="control-cont">
                                        <input name="icon" type="text" class="dynamicOptions iconSetting" />
                                    </div>
                                </div>
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
                            </div>
                        </div>
                        <div class="dynamic-footer">
                            <div class="dynamic-add">+</div>
                            <input name="items" type="text" class="dnnOptions json" value="${ $data.items && JSON.stringify(items)}" />
                        </div>
                    </div>
                </div>
            </div>
        {{/if}}
    </div>
    <div class="tab-pane">
            
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
           
    </div>

</div>


<!--build HTML-->
         
<div class="buildHTML">
    
    {{if $data.style == "swiper01"}}
     <style class="build-css" data-class="swiper01">
         .swiper01 .swiper-pagination{
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin: 20px 0 15px;
        }
        .swiper01 .swiper-pagination .button-tab{
            display: inline-flex;
            justify-content: space-between;
            align-items: center;
            font-size: 20px;
            padding: 0 30px;
            background-color: transparent;
            transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
            box-shadow: none;
            margin: 5px;
            width: auto;
            height: 50px;
            border-radius: 50px;
            opacity: 1;
            outline: none;
        }
        .swiper01 .swiper-pagination .button-tab>i{
            margin-right: 8px;
        }
        .swiper01 .swiper-pagination .button-tab:hover,
        .swiper01 .swiper-pagination .button-tab.swiper-pagination-bullet-active{
            color: #fff;
            background-color: var(--accent-color3);
            box-shadow:-3px 4px 16px rgba(0,0,0,.3);
        }

        .swiper01 .swiper-wrapper .swiper-slide .item{
            position: relative;
            margin: 0 auto;
            border: 5px solid #ffffff;
            border-radius: 40px;
            max-width: 92%;
        }
        .swiper01 .swiper-wrapper .swiper-slide .item::before{
            content: '';
            position: absolute;
            top: -5px;
            right: -5px;
            bottom: -5px;
            left: -5px;
            -webkit-box-shadow: -5px 7px 40px var(--accent-color2);
            box-shadow: -5px 7px 40px var(--accent-color2);
            opacity: 0.2;
            border-radius: 30px;
        }
        .swiper01 .swiper-wrapper .swiper-slide .item::after{
            content: '';
            position: absolute;
            top: -5px;
            right: -5px;
            bottom: -5px;
            left: -5px;
            border: 5px solid #ffffff;
            border-radius: 30px;
        }
        .swiper01 .swiper-wrapper .swiper-slide .item img{
            border-radius: 30px;
            vertical-align: bottom;
        }
        .swiper01 .swiper-wrapper-overflow{
            padding-bottom: 48px;
        }
     </style>
    {{/if}}

    {{if $data.style == "swiper01"}}
            {LT}div id="swiper-${moduleid}" class="swiper-container carousel-swiper ${style} loading" data-effect="coverflow" data-navigation="false" data-slidesperview="1" {{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
                <div class="swiper-pagination">
                    {{if $data.items}}
                        {{each(prop, val) $data.items }}
                        <span class="swiper-pagination-bullet button-tab">
                        {{if val.icon}}
                            {{if val.icon.indexOf("sico")!=-1}}
                            <i class="${val.icon} mod-icon"><svg>{LT}use xlink:href="#${val.icon.split(" ")[1]}"{GT}{LT}/use{GT}</svg> </i>
                            {{else val.icon.indexOf("icon-svg")!=-1}}
                            <i class="${val.icon}"> {LT}svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="${val.icon.split("icon-svg icon-")[1]}"{GT}{LT}/svg{GT}</i>
                            {{/if}}
                        {{/if}}
                        ${val.title}
                        </span>
                        {{/each}}
                    {{/if}}
                </div>
                <div class="swiper-wrapper">
                        {{if $data.items}}
                            {{each(prop, val) $data.items }}
                                <div class="swiper-slide">
                                    {{if val.single }}
                                    <div class="item">
                                        {{if $data.lazy}}
                                            {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' wdith='${singlewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                                <div class="swiper-lazy-preloader"></div>
                                        {{else}}
                                            {LT}img alt="${val.title}" src="${val.single}" /{GT}
                                        {{/if}}
                                    </div>
                                    {{/if}}
                                </div>
                            {{/each}}
                    {{/if}}
                </div>
            {LT}/div{GT}
    {{/if}}

    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("swiper", "${moduleid}","carousel")
    </script>

</div>
