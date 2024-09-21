<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
        <li class="active"><a href="<%= SkinPath %>#">Progress Bar Item</a></li>
        <li><a href="<%= SkinPath %>#">Progress Bar Options</a></li>
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
                                    <label class="control-label">Progress:</label>
                                    <div class="control-cont">
                                        <input name="progress" type="number" class="dynamicOptions" min="0" max="100" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Color:</label>
                                    <div class="control-cont">
                                        <input name="color" type="text" class="dynamicOptions sample-selector" />
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
            {{if $data.style == "progressbar01"}}
            <div class="form-group">
                <label class="control-label">Stripes:</label>
                <div class="control-cont">
                    <input name="stripes" ${stripes} type="checkbox" class="dnnOptions" />
                </div>
            </div>   
            {{/if}}
        </div>
    
    </div>
    
    
    <!--build HTML-->
    <div class="buildHTML">

            {{if $data.style == "progressbar01"}}
            <style class="build-css" data-class="progressbar01">
            .progressbar01 .loadlist .progress{
                position: relative;
                margin: -2px 0 33px 0;
                color:var(--accent-color);
                background-color: transparent;
                overflow: initial;
                box-shadow: none;
    
                padding: 4px;
                height: 12px;
    
                border-radius: 40px;
            }
            .progressbar01 .loadlist:last-child .progress{
                margin-bottom: 0;
            }
            .progressbar01 .loadlist .progress::before{
                position: absolute;
                content: '';
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                background-color: currentColor;
                opacity: 0.1;
    
                border-radius: 40px;
            }
            .progressbar01 .loadlist .bar{
                position: relative;
                height: 100%;
                width: 0;
                background-color: currentColor;
    
                -webkit-transition: width ease-in 400ms;
                transition: width ease-in 400ms;
    
                border-radius: 40px;
            }
            .progressbar01 .loadlist .bar span{
                position: absolute;
                left: 100%;
                margin-left: -5px;
                top: -32px;
                border-bottom: none;
    
                font-size: 13px;
                color: #FFF;
                line-height: 21px;
                height: 21px;
                line-height: 24px;
                padding: 0 5px;
                border-radius: 3px;
                -webkit-transform: translateX(-50%);
                transform: translateX(-50%);
                opacity: 0;
            }
            .progressbar01 .loadlist .bar span:after{
                content: "";
                border: 4px solid transparent;
                border-right-color: transparent!important;
                border-left-color: transparent!important;
                border-bottom-color: transparent!important;
                border-top-color: inherit;
                position: absolute;
                top: 100%;
                left: 50%;
                margin-left: -3px;
            }
            .progressbar01 .loadlist .bar.animated span{
                opacity: 1;
            }
            
            @-webkit-keyframes progress-bar-stripes {
                from {
                    background-position: 40px 0 
                }
                to {
                    background-position: 0 0 
                }
            }
            @keyframes progress-bar-stripes {
                from {
                    background-position: 40px 0 
                }
                to {
                    background-position: 0 0 
                }
            }
            .progressbar01.stripes .loadlist .bar{
                background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, .3) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .3) 50%, rgba(255, 255, 255, .3) 75%, transparent 75%, transparent);
                background-image: linear-gradient(-45deg, rgba(255, 255, 255, .3) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .3) 50%, rgba(255, 255, 255, .3) 75%, transparent 75%, transparent);
                -webkit-animation: progress-bar-stripes 2s linear infinite;
                animation: progress-bar-stripes 2s linear infinite;
                background-size: 40px 40px;
            }

            </style>
            {{else $data.style == "progressbar02"}}
            <style class="build-css" data-class="progressbar02">
                .progressbar02 .loadlist .progress{
                    position: relative;
                    margin: -2px 0 31px 0;
                    background-color: transparent;
                    overflow: initial;
                    box-shadow: none;
        
                    padding: 4px;
                    height: 14px;

                    border: 1px solid #dddddd;
                    border-radius: 40px;
                }
                .progressbar02 .loadlist .progress{
                    background-color: #ffffff;
                }
                .progressbar02 .loadlist:last-child .progress{
                    margin-bottom: 0;
                }
                .progressbar02 .loadlist .bar{
                    position: absolute;
                    top: -1px;
                    bottom: -1px;
                    left: -1px;
                    width: 0;
                    height: auto;
                    background-color:var(--accent-color);

                    -webkit-transition: width ease-in 400ms;
                    transition: width ease-in 400ms;
        
                    border-radius: 40px;
                }
                .progressbar02 .loadlist .bar span{
                    position: absolute;
                    left: 100%;
                    margin-left: -5px;
                    top: -29px;
                    font-size: 14px;
                    line-height: 1;
                    padding: 3px 6px;
                    -webkit-transform: translateX(-50%);
                    transform: translateX(-50%);
                    opacity: 0;
                }

                .progressbar02 .loadlist .bar:after{
                    content: "";
                    position: absolute;
                    top: 2px;
                    right: 2px;
                    width: 10px;
                    height: 10px;
                    background: #FFF;
                    border-radius: 40px;
                    opacity: 0;
               }
                .progressbar02 .loadlist .bar.animated span,
                .progressbar02 .loadlist .bar.animated:after{
                    opacity: 1;
                }
            </style>
            {{else $data.style == "progressbar03"}}
            <style class="build-css" data-class="progressbar03">
                
                .progressbar03 .loadlist .progress{
                    position: relative;
                    margin: -2px 0 31px 0;
                    background-color: #ffffff;
                    overflow: initial;
                    box-shadow: none;
                    height: 10px;
                    border-radius: 40px;
                }

                .progressbar03 .loadlist:last-child .progress{
                    margin-bottom: 0;
                }
                @-webkit-keyframes progress-bar-stripes {
                    from {
                        background-position: 40px 0
                    }

                    to {
                        background-position: 0 0
                    }
                }
                @keyframes progress-bar-stripes {
                    from {
                        background-position: 40px 0
                    }

                    to {
                        background-position: 0 0
                    }
                }
                .progressbar03 .loadlist .bar{
                    position: absolute;
                    width: 0;
                    height: 100%;
                    background-color:var(--accent-color);
                    -webkit-transition: width ease-in 400ms;
                    transition: width ease-in 400ms;
                    border-radius: 40px;
                    background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, .3) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .3) 50%, rgba(255, 255, 255, .3) 75%, transparent 75%, transparent);
                    background-image: linear-gradient(-45deg, rgba(255, 255, 255, .3) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .3) 50%, rgba(255, 255, 255, .3) 75%, transparent 75%, transparent);
                    -webkit-animation: progress-bar-stripes 2s linear infinite;
                    animation: progress-bar-stripes 2s linear infinite;
                    background-size: 40px 40px;
                }
                .progressbar03 .loadlist .bar span{
                    position: absolute;
                    left: 100%;
                    margin-left: -5px;
                    top: -29px;
                    font-size: 13px;
                    line-height: 1;
                    padding: 4px 5px 1px;
                    -webkit-transform: translateX(-50%);
                    transform: translateX(-50%);
                    opacity: 0;
                    color: #666666;
                    border-radius: 3px;
                    border:1px solid currentColor;
                    border-bottom-color: transparent;
                }
                .progressbar03 .loadlist .bar::after{
                    content: "";
                    position: absolute;
                    bottom: 100%;
                    left: 100%;
                    width: 5px;
                    height: 5px;
                    border-right:1px solid currentColor;
                    border-bottom:1px solid currentColor;
                    -webkit-transform: rotate(45deg);
                    transform: rotate(45deg);
                    margin: 0px 0px 6px -7px;
                    opacity: 0;
                }

                .progressbar03 .loadlist .bar span::before,
                .progressbar03 .loadlist .bar span::after{
                    content: "";
                    position: absolute;
                    top: -1px;
                    left: -1px;
                    right: calc(50% + 3px);
                    bottom: -1px;
                    border-radius:0 0 0 4px;
                    border-bottom:1px solid currentColor;
                }
                .progressbar03 .loadlist .bar span::after{
                    right: -1px;
                    left: calc(50% + 3px);
                    border-radius:0 0 4px 0;
                }
                .progressbar03 .loadlist .bar.animated span,
                .progressbar03 .loadlist .bar.animated::after{
                    opacity: 1;
                }
            </style>
            {{/if}}
                        
        <div class="progressbar ${style}{{if $data.stripes}} stripes{{/if}}">
            {{if $data.items}}
            {{each(prop, val) $data.items }}
           
            <div class="loadlist">
                <h6 class="size-16">${val.title}</h6>
                {{if $data.style == "progressbar01"}}
                    {LT}div {{if !val.color }}class="progress color-accent" {{else}} class="progress" style="color: ${val.color};" {{/if}} {GT}
                    <div class="bar animation animationwidth" data-width="${val.progress}%">{LT}span {{if !val.color }} class="bg-accent border-accent" {{else}} style="background: ${val.color}; border-color: ${val.color};"{{/if}}{GT}0%{LT}/span{GT}</div>
                    {LT}/div{GT}
                {{else $data.style == "progressbar02" || $data.style == "progressbar03"}}
                    <div class="progress">
                        {LT}div {{if !val.color }}class="bar animation animationwidth bg-accent" {{else}} class="bar animation animationwidth" style="background-color: ${val.color};" {{/if}} data-width="${val.progress}%" {GT}<span>0%</span>{LT}/div{GT}
                    </div>
                {{/if}}

            </div>
    
            {{/each}}
            {{/if}}
    
        </div>
    
        <script class="edit-mode-js" id="js-${moduleid}">
            moduleEditModeJs("visible", "${moduleid}", "visible")
        </script>
    
    </div>
