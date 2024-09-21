<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="<%= SkinPath %>#">Hots</a></li>
    <li><a href="<%= SkinPath %>#">Options</a></li>
</ul>
<div class="tab-content">
    <div class="tab-pane active">
        <div class="form-group">
            <label class="control-label">Picture:</label>
            <div class="control-cont">
                <div class="slideform singleImage">
                    <div class="img"></div>
                    <div class="filebuttom">
                        <button class="fileImage"></button>
                    </div>
                    <input name="single" type="hidden" class="dnnOptions" value="${single}" id="hotsimages" />
                </div>
                <input name="singlewidth" type="hidden" class="dnnOptions imgwidth" value="${singlewidth}" />
                <input name="singleheight" type="hidden" class="dnnOptions imgheight" value="${singleheight}" />
            </div>
        </div>

        <div class="form-group conditional" data-condition="#hotsimages">

            <div class="control-label">Add Hot:</div>

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
                            <div class="form-group get-hots-position">
                                <label class="control-label">Position:</label>
                                <div class="hotsimagesBox">
                                    <img class="Position-images" ondragstart="return false;" />
                                    <span class="hotspot-dot" title="" style="top:0%;left:0%;"></span>
                                    <div class="control-cont">
                                        X:<input name="x" type="text" class="dynamicOptions position-x" />
                                        Y:<input name="y" type="text" class="dynamicOptions position-y" />
                                    </div>
                                </div>

                            </div>

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
                            {{if style =="hotspot01"}}
                            <div class="form-group">
                                <label class="control-label">Logo:</label>
                                <div class="control-cont">
                                    <div class="slideform singleImage">
                                        <div class="img"></div>
                                        <div class="filebuttom">
                                            <button class="fileImage"></button>
                                        </div>
                                        <input name="logo" type="hidden" class="dynamicOptions" value="" />
                                    </div>
                                    <input name="logowidth" type="hidden" class="dynamicOptions imgwidth" />
                                    <input name="logoheight" type="hidden" class="dynamicOptions imgheight" />
                                </div>
                            </div>
                            {{/if}}
                            {{if style =="hotspot02"}}
                            <div class="form-group">
                                <label class="control-label">Icon Color:</label>
                                <div class="control-cont">
                                    <input name="icolor" type="text" class="dynamicOptions sample-selector" />
                                </div>
                            </div> 
                            {{/if}}
                            <div class="form-group">
                                <label class="control-label">Tooltip Position:</label>
                                <div class="control-cont">
                                    <select name="position" class="dynamicOptions">
                                        <option value="top" selected="selected">Top</option>
                                        <option value="right">Right</option>
                                        <option value="bottom">Bottom</option>
                                        <option value="left">Left</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Default Display:</label>
                                <div class="control-cont">
                                    <input name="display" type="checkbox" class="dynamicOptions"/>
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
                <label class="control-label">Trigger On:</label>
                <div class="control-cont">
                        <select name="trigger" class="dnnOptions" data-value="${trigger}">
                            <option value="hover">Hover</option>
                            <option value="click">Click</option>
                        </select>
                </div>
            </div>
            <div class="form-group">
                    <label class="control-label">Lazy load :</label>
                    <div class="control-cont">
                        <input name="lazy" type="checkbox" class="dnnOptions" ${lazy} />
                    </div>
                </div>
        </div>
    


</div>



<!--build HTML-->

<div class="buildHTML">
    {{if style =="hotspot01"}}
    <style class="build-css" data-class="${style}">
        
        .hotspot01 .hotspot-item{
            position: absolute;
        }
        .hotspot01 .hotspot-content{
            position: absolute;
            bottom: 45px;
            left: -166px;
            display: none;
            z-index: 100;
        }
        .hotspot01 .hotspot-content .hotspot-info{
            background-color: #FFF;
            color: #FFF;
            border-radius: 3px;
            width: 332px;
            text-align: left;
            padding: 20px;
            box-shadow: 3px 4px 10px rgba(0,0,0,.15);
            display: -ms-flexbox;
            display: flex;
            max-width: calc(100vw - 20px);
        }
        .hotspot01 .hotspot-item.active .hotspot-content{
            display: block;
        }
        .hotspot01 .hotspot-content::after{
            content: '';
            position: absolute;
            top: 100%;
            left: 50%;
            border-top:9px solid #FFF;
            border-left:6px solid #FFF;
            border-right: 6px solid transparent;
            border-bottom: 9px solid transparent;
        }

        .hotspot01 .dir-bottom .hotspot-content{
            bottom: auto;
            top: 45px;
        }
        .hotspot01 .dir-bottom .hotspot-content::after{
            top: auto;
            bottom: 100%;
            -webkit-transform: scale(1,-1);
            transform: scale(1,-1);
        }


        .hotspot01 .hotspot-content .title{
            color: #333333;
            margin: 0 0 8px;
        }
        .hotspot01 .hotspot-content .description{
            color: #787878;
        }
        .hotspot01 .hotspot-content .icon{
            width: 64px;
            height: 64px;
            border-radius: 50%;
            flex: 0 0 auto;
            margin-top: 5px;
        }
        .hotspot01 .hotspot-content .cont{
            padding-left: 20px;
        }


        .hotspot01 .h-dot{
            width: 18px;
            height: 18px;
            position: absolute;
            top: -9px;
            left: -9px;
            border:1px solid #FFF;
            border-radius: 50%;
            cursor: pointer;
            transition: all 200ms ease-in;
        }

        .hotspot01 .h-dot::after{
            content: "";
            width: 8px;
            height: 8px;
            background-color: #FFF;
            border-radius: 50%;
            position: absolute;
            top: 4px;
            left: 4px;
            transition: all 200ms ease-in;
        }
        .hotspot01 .hotspot-item.active .h-dot{
            width: 26px;
            height: 26px;
            top: -13px;
            left: -13px;
            box-shadow: 0 0 0 5px rgba(255,255,255,.14);
        }
        .hotspot01 .hotspot-item.active .h-dot::after{
            top: 7px;
            left: 7px;
            width: 10px;
            height: 10px;
        }
        .hotspot .hotspot-content .hotspot-close{
            color: #787878;
            position: absolute;
            right: 5px;
            top: 5px;
            font-weight: 100;
            font-size: 19px;
            cursor: pointer;
            line-height: 1;
            top: 3px;
            right: 6px;
        }
        .hotspot .hotspot-content .hotspot-close::after{
            content: "✕";
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
        }
        .hotspot .hotspot-content .hotspot-close:hover{
            color: #000;
        }

        @media only screen and (min-width: 992px) {

            .hotspot01 .dir-right .hotspot-content{
                left: 45px;
                top: -40px;
                bottom: auto;
            }
            .hotspot01 .dir-right .hotspot-content::after{
                top: 37px;
                right: 100%;
                left: auto;
                -webkit-transform: rotate(90deg);
                transform: rotate(90deg);
            }
            .hotspot01 .dir-left .hotspot-content{
                left:auto;
                right: 45px;
                top: -40px;
                bottom: auto;
            }
            .hotspot01 .dir-left .hotspot-content::after{
                top: 26px;
                left: 100%;
                -webkit-transform: rotate(-90deg);
                transform: rotate(-90deg);
            }
        }

    </style>
     {{else style =="hotspot02"}}
    <style class="build-css" data-class="${style}">
    .hotspot02 .hotspot-item{
        position: absolute;
    }
    .hotspot02 .hotspot-content{
        position: absolute;
        bottom: 45px;
        left: -166px;
        display: none;
        z-index: 100;
    }
    .hotspot02 .hotspot-content .hotspot-info{
        background-color: #FFF;
        color: #FFF;
        border-radius: 3px;
        width: 360px;
        text-align: left;
        padding: 35px;
        box-shadow: 0 0 15px rgba(0,0,0,.15);
        display: -ms-flexbox;
        display: flex;
        max-width: calc(100vw - 20px);
    }
    .hotspot02 .hotspot-item.active .hotspot-content{
        display: block;
    }
    .hotspot02 .hotspot-content::after{
        content: '';
        position: absolute;
        top: 100%;
        left: calc(50% - 18px);
        border-top:6px solid #FFF;
        border-left:6px solid transparent;
        border-right: 6px solid transparent;
        border-bottom: 6px solid transparent;
    }

    .hotspot02 .dir-bottom .hotspot-content{
        bottom: auto;
        top: 45px;
    }
    .hotspot02 .dir-bottom .hotspot-content::after{
        top: auto;
        bottom: 100%;
        -webkit-transform: scale(1,-1);
        transform: scale(1,-1);
    }


    .hotspot02 .hotspot-content .title{
        color: #333333;
        margin: 0 0 10px;
    }
    .hotspot02 .hotspot-content .description{
        color: #787878;
    }

    .hotspot02 .hotspot-content p{
        margin: 0;
        color: #787878;
    }
    .hotspot02 .hotspot-content span{
        font-weight: 600;
        color: #333333;
    }

    .hotspot02 .h-dot{
        width: 30px;
        height: 30px;
        position: absolute;
        top: -15px;
        left: -15px;
        border-radius: 50%;
        cursor: pointer;
        transition: all 200ms ease-in;
    }

    .hotspot02 .h-dot::after{
        content: "";
        width: 16px;
        height: 16px;
        background: url('data:image/svg+xml;utf8,<svg width="400" height="400" xmlns="http://www.w3.org/2000/svg"><path d="M199.987,399.707c-3.056,0-5.956-1.394-7.859-3.811c-1.142-1.461-28.352-36.201-55.922-87.517   c-16.236-30.189-29.191-59.852-38.495-88.131c-11.735-35.656-17.671-69.285-17.671-99.941c0-66.021,53.823-119.743,119.967-119.743   c66.144,0,119.967,53.723,119.967,119.743c0,30.656-5.956,64.266-17.671,99.941c-9.304,28.279-22.26,57.941-38.495,88.131   c-27.59,51.315-54.78,86.056-55.922,87.517c-1.903,2.417-4.793,3.811-7.859,3.811H199.987z M199.987,20.522   c-55.122,0-99.972,44.767-99.972,99.786c0,64.938,29.25,132.995,53.803,178.64c18.032,33.541,36.172,60.144,46.169,74.04   c10.036-13.954,28.293-40.714,46.345-74.362c24.456-45.565,53.627-113.496,53.627-178.317   C299.959,65.289,255.108,20.522,199.987,20.522z" fill="%23ffffff" ></path><path d="M199.987,180.179c-33.067,0-59.983-26.866-59.983-59.871c0-33.006,26.917-59.872,59.983-59.872   s59.983,26.866,59.983,59.872C259.97,153.313,233.054,180.179,199.987,180.179z M199.987,80.394   c-22.055,0-39.989,17.9-39.989,39.914c0,22.013,17.934,39.914,39.989,39.914c22.054,0,39.989-17.901,39.989-39.914   C239.976,98.294,222.041,80.394,199.987,80.394z"  fill="%23ffffff" ></path></svg>');
        background-size: 16px 16px;
        border-radius: 50%;
        position: absolute;
        top: 6px;
        left: 7px;
        transition: all 200ms ease-in;
    }

    @-webkit-keyframes hotspot02dot {
    0% {
        transform: scale(1);
		opacity: 1;
    }
	50% {
		transform: scale(1.3);
		opacity: .2;
    }100% {
		-moz-transform: scale(1.3);
		opacity: 0;
    }
}
 
@keyframes hotspot02dot{
    0% {
        transform: scale(1);
		opacity: 1;
    }
	50% {
		transform: scale(1.3);
		opacity: .2;
    }100% {
		-moz-transform: scale(1.3);
		opacity: 0;
    }
}

.hotspot02 .h-dot::before{
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-color: inherit;
    border-radius: 50%;
	-webkit-animation: hotspot02dot 2s infinite;
	animation: hotspot02dot 2s infinite;
}

    .hotspot02 .hotspot-item.active .h-dot{
        width: 30px;
        height: 30px;
        top: -15px;
        left: -15px;
    }


    .hotspot02 .hotspot-content .hotspot-close{
        color: #787878;
        position: absolute;
        right: 5px;
        top: 5px;
        font-weight: 100;
        font-size: 19px;
        cursor: pointer;
        line-height: 1;
        top: 3px;
        right: 6px;
    }
    .hotspot02 .hotspot-content .hotspot-close::after{
        content: "✕";
        font-family: Arial, Helvetica, sans-serif;
        font-size: 13px;
    }
    .hotspot02 .hotspot-content .hotspot-close:hover{
        color: #000;
    }

    @media only screen and (min-width: 992px) {

        .hotspot02 .dir-right .hotspot-content{
            left: 45px;
            top: -40px;
            bottom: auto;
        }
        .hotspot02 .dir-right .hotspot-content::after{
            top: 37px;
            right: 100%;
            left: auto;
            -webkit-transform: rotate(90deg);
            transform: rotate(90deg);
        }
        .hotspot02 .dir-left .hotspot-content{
            left:auto;
            right: 45px;
            top: -40px;
            bottom: auto;
        }
        .hotspot02 .dir-left .hotspot-content::after{
            top: 34px;
            left: 100%;
            -webkit-transform: rotate(-90deg);
            transform: rotate(-90deg);
        }
    }

    </style>
    {{/if}}



    <div class="hotspot ${style}" data-trigger="${trigger}">
        <div class="hotspot-img-box">
            {LT}img src="${single}" alt="" {{if $data.lazy}}class="img-Lazy"{{/if}} /{GT}
            {{if $data.items}}
            {{each(prop, val) $data.items }}
            {LT}div class="hotspot-item dir-${val.position} type-tooltip{{if val.display}} active{{/if}}" data-position="${val.position}" style="top:${val.y?val.y:"50%"};left:${val.x?val.x:"50%"};"{GT}
            {{if style =="hotspot02"}}
            <div class="h-dot" style="background-color: ${val.icolor};"><i class="plus"></i></div>
            {{else}}
            <div class="h-dot"><i class="plus"></i></div>
            {{/if}}
                <div class="hotspot-content">
                   
                    <div class="hotspot-info">
                    {{if val.logo}}
                    <div class="icon">
                        <img src="<%= SkinPath %>${val.logo}" alt="${val.title}" {{if $data.lazy}}class="img-Lazy"{{/if}}/>
                    </div>
                    {{/if}}
                    <div class="cont">
                            <div class="hotspot-close"></div>
                        <h6 class="title">${val.title}</h6>
                        <div class="description">
                            {{html val.description}}  
                        </div>
                     </div>
                    </div>
                </div>
             {LT}/div{GT}
            {{/each}}
            {{/if}}

        </div>
    </div>




    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("hotspot", "${moduleid}", "hotspot")
    </script>
</div>
