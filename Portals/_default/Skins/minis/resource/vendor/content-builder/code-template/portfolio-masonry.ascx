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
                                <label class="control-label">Description:</label>
                                <div class="control-cont">
                                    <textarea rows="5" name="description" class="dynamicOptions"></textarea>
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
                            <div class="form-group conditional" data-condition="#linktype{id} == 'linkurl'">
                                <label class="control-label">Link:</label>
                                <div class="control-cont">
                                    <input name="link" type="text" class="dynamicOptions extend-url" value="${link}" />
                                </div>
                            </div>
                            <div class="form-group conditional" data-condition="#linktype{id} == 'linkurl'">
                                <label class="control-label">Open New Window :</label>
                                <div class="control-cont">
                                    <input type="checkbox" value='${val}' class="form-control dynamicOptions" name="linktarget"/>
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
                            {{if $data.categorys}}
                            <div class="form-group">
                                <label class="control-label">Category:</label>
                                <div class="control-cont checkbox-group">
                                        {{each(prop, val) $data.categorys.split(",") }} 
                                       <label> <input type="checkbox" value='${val}' />${val}</label>
                                        {{/each}}
                                        <input type="text" class="dynamicOptions" name="category" value="${category}"/>
                                </div>            
                            </div>    
                            {{/if}}


                            <div class="form-group">
                                <label class="control-label">Item Scale:</label>
                                <div class="control-cont">
                                    <select class="form-control dynamicOptions" name="scale">
                                        <option value="">None</option>
                                        <option value="item-width2">2x</option>
                                        <option value="item-width3">3x</option>
                                    </select>
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

        <div class="form-group ">
            <label class="control-label">Category:</label>
            <div class="control-cont">
                <textarea name="categorys" id="categorystext" class="dnnOptions">{{if categorys}}${categorys}{{/if}}</textarea>
                <p>Use comma to separate categories, categories will be updated after saving.</p>
            </div>
        </div>  
        <div class="form-group conditional" data-condition="#categorystext != ''">
            <label class="control-label">ALL Text:</label>
            <div class="control-cont">
                <input name="alltext" type="text" class="dnnOptions" value="${alltext}" data-default="ALL" />
            </div>
        </div>            
        <div class="form-group">
            <label class="control-label">Lazy load:</label>
            <div class="control-cont">
                <input name="lazy" type="checkbox" class="dnnOptions" ${lazy} />
            </div>
        </div>

        
        <div class="form-group">
            <label class="control-label">Equal Height:</label>
            <div class="control-cont">
                <input name="contour" type="checkbox" class="dnnOptions" ${contour} />
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
        <div class="form-group">
                <label class="control-label">Item Spacing(px):</label>
                <div class="control-cont">
                <ul class="responsive-control-list">
                    <li><span>XS</span><input name="spacingxs" type="number" class="dnnOptions required" min="1" value="${spacingxs}" /></li>
                    <li><span>S</span><input name="spacings" type="number" class="dnnOptions required" min="1" value="${spacings}" /></li>
                    <li><span>M</span><input name="spacingm" type="number" class="dnnOptions required" min="1" value="${spacingm}" /></li>
                    <li><span>L</span><input name="spacingl" type="number" class="dnnOptions required" min="1" value="${spacingl}"/></li>
                    <li><span>XL</span><input name="spacingxl" type="number" class="dnnOptions required" min="1" value="${spacingxl}" /></li>
                    <li><span>XXL</span><input name="spacingxxl" type="number" class="dnnOptions required" min="1" value="${spacingxxl}" /></li>
                </ul>                    
                </div>
            </div>  
            
          
            <div class="form-group">
                <label class="control-label">First Screen Number:</label>
                <div class="control-cont">
                    <input name="firstscreen" type="number" class="dnnOptions" value="${firstscreen}" data-default="6" style="width: 150px;" />
                </div>
            </div> 
            <div class="form-group">
                <label class="control-label">Load Display Number:</label>
                <div class="control-cont">
                    <input name="loaddisplay" type="number" class="dnnOptions" value="${loaddisplay}" data-default="3" style="width: 150px;"/>
                </div>
            </div> 
            <div class="form-group conditional" data-condition="!#infinitescroll">
                <label class="control-label">More Text:</label>
                <div class="control-cont">
                    <input name="moretext" type="text" class="dnnOptions" value="${moretext}" data-default="MORE" style="width: 150px;"/>
                </div>
            </div> 
            <div class="form-group">
                <label class="control-label">Infinite scroll:</label>
                <div class="control-cont">
                    <input name="infinite" type="checkbox" class="dnnOptions" ${infinite} id="infinitescroll" />
                </div>
            </div>
        

    </div>

</div>


<!--build HTML-->
         
<div class="buildHTML">
    {{if $data.style == "portfolio-masonry-style01"}}
    <style class="build-css" data-class="${style}">
        .portfolio-masonry-style01 .box{
            position: relative;
        }
        .portfolio-masonry-style01 .content{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: -ms-flexbox;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 2;
            opacity: 0;
            transition: opacity ease-in 300ms;
            pointer-events: none;
            flex-direction:column;
        }
        .portfolio-masonry-style01 .content::after{
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: var(--accent-color);
            z-index: -1;
            opacity: 0;
            transition: opacity ease-in 300ms;
        }
        .portfolio-masonry-style01 .box:hover .content{
            opacity: 1;
        }
        .portfolio-masonry-style01 .box:hover .content::after{
            opacity: .8;
        }
        .portfolio-masonry-style01 .content .title{
            color: #fff;
            margin: 0;
        }
        .portfolio-masonry-style01 .pic img{
            width: 100%;
        }
        .portfolio-masonry-style01 .content .icon{
            width: 40px;
            height: 40px;
            background-color: #FFF;
            border-radius: 50%;
            margin: 17px auto;
            display: block;
            color:var(--accent-color);
            position: relative;
            cursor: pointer;
            pointer-events: none;
        }
        .portfolio-masonry-style01 .content .icon::before {
            content: "";
            width: 17px;
            position: absolute;
            border-bottom: 1px solid currentColor;
            left: 50%;
            top: 50%;
            margin: -1px 0 0 -9px;
        }
        .portfolio-masonry-style01 .content .icon::after {
            content: "";
            height: 17px;
            position: absolute;
            border-left: 1px solid currentColor;
            left: 50%;
            top: 50%;
            margin: -9px 0 0 -1px;
        }
    </style>
     {{else $data.style == "portfolio-masonry-style02"}}
     <style class="build-css" data-class="${style}">
            .portfolio-masonry-style02 .pic{
                position: relative;
            }
            .portfolio-masonry-style02 .pic img{
                width: 100%;
            }
            .portfolio-masonry-style02 .content{
                text-align: center;
                padding: 23px 0 23px;
            }

            .portfolio-masonry-style02 .content .title{
                color: #424242;
                margin: 0;
                font-weight: 600;
                
            }
            .portfolio-masonry-style02 .content .category{
                font-weight: 600;
            }
            .portfolio-masonry-style02 .pic .icon{
                width: 40px;
                height: 40px;
                background-color: #FFF;
                border-radius: 50%;
                display: block;
                color:var(--accent-color);
                position: absolute;
                cursor: pointer;
                top: 50%;
                left: 50%;
                margin: -20px 0 0 -20px;
                pointer-events: none;
                opacity: 0;
                transition: opacity ease 300ms;
                z-index: 3;
           }
            .portfolio-masonry-style02 .pic .icon::before {
                content: "";
                width: 17px;
                position: absolute;
                border-bottom: 1px solid currentColor;
                left: 50%;
                top: 50%;
                margin: -1px 0 0 -9px;
            }
            .portfolio-masonry-style02 .pic .icon::after {
                content: "";
                height: 17px;
                position: absolute;
                border-left: 1px solid currentColor;
                left: 50%;
                top: 50%;
                margin: -9px 0 0 -1px;
            }
            .portfolio-masonry-style02 .pic::after{
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background-color: var(--accent-color);
                opacity: 0;
                transition: opacity ease 300ms;
                pointer-events: none;
                z-index: 2;
           }
            .portfolio-masonry-style02 .isotope-item:hover .pic .icon{
                opacity: 1;
            }
            .portfolio-masonry-style02 .isotope-item:hover .pic::after{
                opacity: .8;
            }
     </style>
     {{else $data.style == "portfolio-masonry-style03"}}
     <style class="build-css" data-class="${style}">
        .portfolio-masonry-style03 .content{
            position: absolute;
            top: 0;
            left: 0;
            pointer-events: none;
            opacity: 0;
            -webkit-transition: opacity 300ms cubic-bezier(0.420, 0.000, 1.000, 1.000);
            transition:opacity 300ms cubic-bezier(0.420, 0.000, 1.000, 1.000);
            z-index: 11;
            padding:15px;
        }
        .portfolio-masonry-style03 .content .info{
            border: 1px solid rgba(0, 0, 0, 0.75);
            padding: 3px;
            white-space:nowrap;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translateY(-50%);
            margin-left: 32px;
        }
        .portfolio-masonry-style03 .box:hover .content{
            opacity: 1;
        }
        .portfolio-masonry-style03 .content.reverse .info{
            left: auto;
            right: 50%;
            margin-left: 0;
            margin-right: 32px;
        }
        .portfolio-masonry-style03 .content .info::before, 
        .portfolio-masonry-style03 .content .info::after{
            content: '';
            display: block;
            position: absolute;
            left: 0;
            top: 50%;
            height: 1px;
            transform: translateX(-100%);
            background: rgba(0, 0, 0, 0.75);
            z-index: 11;
        }
        .portfolio-masonry-style03 .content .info::before{
            width: 33px;
            margin-top: -2px;
        }
        .portfolio-masonry-style03 .content .info::after{
            width: 13px;
            margin-top: 2px;
        }
        .portfolio-masonry-style03 .content.reverse .info::before, 
        .portfolio-masonry-style03 .content.reverse .info::after{
            left: 100%;
            transform: translateX(0%);
        }
        .portfolio-masonry-style03 .content .title{
            margin: 0;
            font-size: 20px;
            color: #ffffff;
            font-weight: 600;
            line-height: 24px;
            padding: 7px 19px;
            background-color: rgba(0, 0, 0, 0.75);
        }
    </style>
     {{else $data.style == "portfolio-masonry-style05"}}
     <style class="build-css" data-class="${style}">
        .portfolio-masonry-style05 img{
            width: 100%;
        }
        .portfolio-masonry-style05 .content{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
            display: flex;
            backface-visibility: hidden;
            justify-content: center;
            align-items: center;
            flex-flow: column;
            opacity: 0;
            -webkit-transition: opacity ease-in 300ms;
            transition: opacity ease-in 300ms;
            pointer-events: none;
        }
        .portfolio-masonry-style05 .content .title{
            background-color: rgba(0,0,0,.7);
            color: #fff;
            padding: 18px 40px;
            margin: 0;
            font-size: 18px;
            position: relative;
        }
        .portfolio-masonry-style05 .content .title::after{
            content: "";
            border:1px solid  rgba(0,0,0,.7);
            top: -7px;
            right: -7px;
            bottom: -7px;
            left: -7px;
            position: absolute;
        }
        .portfolio-masonry-style05 .isotope-item:hover .content{
            opacity: 1;
        }


        </style>

     {{/if}}


    {{if $data.spacingxs || $data.spacings || $data.spacingm || $data.spacingl || $data.spacingxl || $data.spacingxxl}}
    <style>
        {{if $data.spacingxs}}.portfolio-masonry${moduleid}.isotope-grid  .box{margin:${spacingxs/2}px;}.portfolio-masonry${moduleid}.isotope-grid .isotope-main{margin:0 -${spacingxs/2}px;}
        {{/if}}
        {{if $data.spacings}}
        @media (min-width: 576px){.portfolio-masonry${moduleid}.isotope-grid  .box{margin:${spacings/2}px;}.portfolio-masonry${moduleid}.isotope-grid .isotope-main{margin:0 -${spacings/2}px;}}
        {{/if}}
        {{if $data.spacingm}}
        @media (min-width: 768px){.portfolio-masonry${moduleid}.isotope-grid  .box{margin:${spacingm/2}px;}.portfolio-masonry${moduleid}.isotope-grid .isotope-main{margin: 0 -${spacingm/2}px;}}
        {{/if}}
        {{if $data.spacingl}}
        @media (min-width: 992px){.portfolio-masonry${moduleid}.isotope-grid .box{margin:${spacingl/2}px;}.portfolio-masonry${moduleid}.isotope-grid .isotope-main{margin: 0 -${spacingl/2}px;}}
        {{/if}}
        {{if $data.spacingxl}}
        @media (min-width: 1200px){.portfolio-masonry${moduleid}.isotope-grid .box{margin:${spacingxl/2}px;}.portfolio-masonry${moduleid}.isotope-grid .isotope-main{margin: 0 -${spacingxl/2}px;}}
        {{/if}}
        {{if $data.spacingxxl}}
         @media (min-width: 1600px){.portfolio-masonry${moduleid}.isotope-grid .box{margin:${spacingxxl/2}px;}.portfolio-masonry${moduleid}.isotope-grid .isotope-main{margin: 0 -${spacingxxl/2}px;}}
         {{/if}}
    </style>
    {{/if}}


    
    {LT}div class="${style} isotope-grid loading isotope-default isotope-effect-fade-in portfolio-masonry${moduleid}"
        {{if $data.displayxxl }}
            data-item="${displayxxl}"
        {{/if}}
        {{if $data.displayxl }}
            data-desktop="${displayxl}"
        {{/if}}
        {{if $data.displayl }}
            data-desktopsmall="${displayl}"
        {{/if}}
        {{if $data.displaym }}
            data-tablet="${displaym}"
        {{/if}}
        {{if $data.displays }}
            data-mobile="${displays}"
        {{/if}}
        {{if $data.displayxs }}
            data-smallmobile="${displayxs}"
        {{/if}}
        {{if $data.contour }}
            data-contour="true"
        {{/if}}
        {{if $data.firstscreen}} 
            data-firstscreen="${firstscreen}"
        {{/if}}
        {{if $data.loaddisplay}} 
            data-loaddisplay="${loaddisplay}"
        {{/if}}
        {{if $data.moretext}} 
            data-moretext="${moretext}"
        {{/if}}
        {{if infinite}} 
            data-infinite="true"
        {{/if}}
    {GT}


    {{if $data.categorys}}

    <div class="isotope-console color-dark">
        <div class="isotope-group style_default d-lg-block d-none">
            <a class="active " data-filter="*" href="javascript:;">${alltext}</a>
            
            {{each(prop, val) $data.categorys.split(",") }} 
            {LT}a data-filter=".c-${val.toLowerCase().replace(RegExp("\W", "g"),"-")}" href="javascript:;"{GT}${val}{LT}/a{GT}
            {{/each}}
           
        </div>
        <select class="isotope-group-select d-lg-none">
            <option selected="selected" value="*">${alltext}</option>
            {{each(prop, val) $data.categorys.split(",") }} 
            {LT}option value=".c-${val.toLowerCase().replace(RegExp("\W", "g"),"-")}"{GT}${val}{LT}/option{GT} 
            {{/each}}             
        </select>
    </div>
    {{/if}}

        <div class="loading"></div>

        
        <div class="isotope-main">
            {{if $data.items}}
            {{each(prop, val) $data.items }} 
                {LT}article class="isotope-item{{if val.category}} ${val.category.toLowerCase().replace(RegExp("(?![,])[\W]", "g"),"-").replace(RegExp(",", "g")," ")}{{/if}}{{if $data.firstscreen && parseInt(prop)+1 > firstscreen}} hidden{{/if}}" {{if scale}} data-scale="${scale}"{{/if}} {{if $data.style == "portfolio-masonry-style02"}}tabindex="0"{{/if}}{GT}
                    <div class="box">
                        <div class="pic">
                            {{if val.linktype == "linkurl"}}{LT}a class="link" href="${val.link}"{{if val.linktarget}} target="_blank"{{/if}} {GT}{{else val.linktype == "image"}}{LT}a class="link is-lightbox" data-ilightbox="image" data-group="${moduleid}" title="${val.title}" href="${val.singlebig}"{GT}{{/if}}{{if $data.lazy}}{LT}img class="img-Lazy" alt="${title}" src="${single}" /{GT}{{else}}{LT}img alt="${title}" src="${single}" /{GT}{{/if}}{{if val.linktype != "none"}}{LT}/a{GT}{{/if}}
                            {{if $data.style == "portfolio-masonry-style02"}}<span class="icon"></span>{{/if}}
                        </div>
                        {{if $data.style == "portfolio-masonry-style01"}}
                        <div class="content">{{if val.linktype != "none"}}<span class="icon"></span>{{/if}}<h6 class="title">${val.title}</h6></div>
                        {{else $data.style == "portfolio-masonry-style02"}}
                        <div class="content"><h6 class="title">${val.title}</h6>
                        {{if category}} 
                        <div class="category">${category.replace(RegExp(",", "g"),", ")}</div></div>
                        {{/if}}
                        {{else $data.style == "portfolio-masonry-style03"}}
                        <div class="content"><div class="info"><h6 class="title">${val.title}</h6></div></div>
                        {{else $data.style == "portfolio-masonry-style05"}}
                        <div class="content">
                            <h6 class="title">${val.title}</h6>
                            <div class="description" style="display: none;">${val.description}</div>
                        </div>
                        {{/if}}
                        
                    </div>
                {LT}/article{GT}
            {{/each}}
            {{/if}}
        </div>
        <div class="clearfix"></div>

        {{if $data.firstscreen}}
        {{if $data.infinite}}
        <div class="more-infinite-scroll"></div>
        {{else}}
        <div class="more-position hidden"><button class="load-more" role="button">${moretext}</button></div>
        {{/if}}
        {{/if}}


    {LT}/div{GT}

    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("Masonry", "${moduleid}","masonry")
    </script>
</div>



