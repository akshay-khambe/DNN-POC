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
                              <div class="form-group" style="width: 100px;display: inline-block;">
                                    <label class="control-label">Month:</label>
                                    <div class="control-cont">
                                        <input name="month" type="text" class="dynamicOptions" />
                                    </div>
                                </div>
                                <div class="form-group" style="width: 100px;display: inline-block;">
                                    <label class="control-label">Day:</label>
                                    <div class="control-cont">
                                        <input name="day" type="text" class="dynamicOptions" />
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
                <label class="control-label">InitialSlide:</label>
                <div class="control-cont">
                    <input name="initialslide" type="number" class="dnnOptions required" value="${initialslide}" data-default="3"  style="width: 100px;"/>
                    <span class="pl-10">   Index number of initial slide.</span>
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
    
    <style class="build-css" data-class="${style}">
        .swiper-container{
            display: none;
        }
        .timeline-carousel-style01 .swiper-wrapper-overflow{
            overflow: hidden;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination{
            margin: 0 auto;
            padding: 0px 35px!important;
            max-width: 1200px;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination{
            display: none;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide{
            justify-content: center;
            color: #ffffff;
            font-size: 18px;
            background: none;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide::after,
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide::before,
        .timeline-carousel-style01 .swiper-thumbnail-pagination::after,
        .timeline-carousel-style01 .swiper-thumbnail-pagination::before{
            content: "";
            border-bottom: 2px solid #FFF;
            position: absolute;
            bottom: 9px;
            transition: all 300ms ease-in;

        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide::after{
            left: 0;
            right: calc(50% + 10px);
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide::before{
            right: 0;
            left: calc(50% + 10px);
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide:first-child::after{
            left: -1000px;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide:last-child::before{
            right: -1000px;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide-active.swiper-slide::after{
            right: calc(50% + 15px);
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide-active.swiper-slide::before{
            left: calc(50% + 15px);
        }

        .timeline-carousel-style01 .swiper-thumbnail-pagination::after{
            left: 0;
            width: 35px;
            border-bottom-style: dotted;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination::before{
            right:  0;
            width: 35px;
            border-bottom-style: dotted;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .subtitle{
            background-color: transparent;
            padding: 5px 24px;
            margin: 0 0 42px;
            border-radius: 4px;
            position: relative;
            transform: translateY(12px);
            transition: all 300ms ease-in;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide-active .subtitle{
            background-color:var(--accent-color3);
            transform: translateY(0);
        }

        .timeline-carousel-style01 .swiper-thumbnail-pagination .subtitle::after{
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
        .timeline-carousel-style01 .swiper-thumbnail-pagination .l-dot{
            width: 12px;
            height: 12px;
            background-color: #FFF;
            position: absolute;
            border-radius: 50%;
            bottom: 4px;
            left: 50%;
            margin-left: -6px;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .l-dot::after{
            content: "";
            top:0px;
            left: 0px;
            bottom: 0px;
            right: 0px;
            border: 2px solid rgba(255,255,255,.3);
            position: absolute;
            border-radius: 50%;
            transition: all 300ms ease-in;
        }
        .timeline-carousel-style01 .swiper-thumbnail-pagination .swiper-slide-active .l-dot::after{
            top:-4px;
            left: -4px;
            bottom: -4px;
            right: -4px;	
        }
        .timeline-carousel-style01 .swiper-container-main:not([data-navigation="false"]) {
            padding: 0px 0px 60px;
        }
        .timeline-carousel-style01 .swiper-container-main .swiper-slide{
            padding: 0px 15px;
            height: auto;
        }

        .timeline-carousel-style01 .swiper-container-main .swiper-item{	
            background-color:var(--accent-color2);
            width: 100%;
            display: flex;
            align-items: start;
            justify-content: center;
            padding:40px 50px;
            border-radius: 4px;
            position: relative;
            margin-top: 20px;
            transition: all 300ms ease-in;
            opacity: 0.3;
        }
        .timeline-carousel-style01 .swiper-container-main .swiper-item::before{	
            content: "";
            position: absolute;
            width: 16px;
            height: 16px;
            background-color: inherit;
            top: -8px;
            left: 50%;
            margin-left: -8px;
            transform: rotate(45deg);
        }
        .timeline-carousel-style01 .swiper-container-main .swiper-slide-active .swiper-item{	
            background-color:var(--accent-color3);
            opacity: 1;
        }
        .timeline-carousel-style01 .swiper-container-main .date{
            width: 80px;
            height: 80px;
            background-color:var(--accent-color2);
            border-radius: 50%;
            flex: 0 0 80px;
        }
        .timeline-carousel-style01 .swiper-container-main .date .day{
            display: inline-block;
            color: #ffffff;
            font-size: 30px;
            font-weight: bold;
            line-height: 1.2;
            padding-top: 8px;
            border-bottom: 1px dashed rgba(255,255,255,0.2);
        }
        .timeline-carousel-style01 .swiper-container-main .date .month{
            display: block;
        }
        .timeline-carousel-style01 .swiper-container-main .cont{
            text-align: left;
            padding: 0px 0px 0px 30px;
        }
        .timeline-carousel-style01 .swiper-container-main .title{
            font-size: 20px;
            color: #ffffff;
            margin: 0 0 30px;
        }
        .timeline-carousel-style01 .swiper-container-main .title::after{
            content: "";
            border-bottom: 1px solid rgba(255,255,255,0.3);
            display: block;
            width: 50px;
            margin: 15px 0px 0px;
        }
        .timeline-carousel-style01 .swiper-container-main .more{
            margin-top: 15px;
            display: inline-block;
        }
        .timeline-carousel-style01 .swiper-container-main .more,
        .timeline-carousel-style01 .swiper-container-main .more:link{
            color: #fff;
        }
        .timeline-carousel-style01 .swiper-container-main .more:hover{
            color:var(--accent-color2);
        }
        .timeline-carousel-style01 .swiper-container-main .more::after{
            content: "+";
            font-family: "Times New Roman",Georgia,sans-serif;
            font-size: 20px;
            line-height: 1;
            display: inline-block;
            vertical-align: middle;
            margin:0 0 5px 3px;
        }

        .timeline-carousel-style01 .swiper-container-main .swiper-button-next,
        .timeline-carousel-style01 .swiper-container-main .swiper-button-prev{
            width: 42px;
            height: 42px;
            border: 2px solid #FFF;
            border-radius: 50%;
            top: auto;
            bottom: 0;
            left: 50%;
        }
        .timeline-carousel-style01 .swiper-container-main .swiper-button-next{
            margin-right: 12px;
        }
        .timeline-carousel-style01 .swiper-container-main .swiper-button-prev{
            margin-left: -53px;
        }
        .timeline-carousel-style01 .swiper-container-main .swiper-button-next span, 
        .timeline-carousel-style01 .swiper-container-main .swiper-button-prev span{
            width: 10px;
            height: 10px;
            border-width: 2px;
            margin: -5px 0 0 -5px;
        }
        
        
        @media only screen and (max-width: 991px) {
           .timeline-carousel-style01 .swiper-container-main .swiper-item{
               padding:30px 20px;
           }
        }
    </style>
  
   <div class="timeline-carousel-style01">
    {LT}div class="swiper-container swiper-thumbnail-pagination loading" loop="false"{{if initialslide}} data-initialSlide="${initialslide-1}"{{/if}} data-effect="timelinetilte" data-slidesperview="[${subdisplayxxl},${subdisplayxl},${subdisplayl},${subdisplaym},${subdisplays},${subdisplayxs}]" data-navigation="false"{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
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
        {LT}div class="swiper-container swiper-container-main loading" loop="false"{{if initialslide}} data-initialSlide="${initialslide-1}"{{/if}} data-effect="timelinemain" data-slidesperview="[${displayxxl},${displayxl},${displayl},${displaym},${displays},${displayxs}]" {{if !$data.navigation}} data-navigation="false"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
            <div class="swiper-wrapper">
                {{if $data.items}}
                {{each(prop, val) $data.items }}
                    <div class="swiper-slide"> 
                        <div class="swiper-item">
                            <div class="date">
                                <span class="day">${val.day}</span>
                                <span class="month">${val.month}</span>
                            </div> 
                            <div class="cont">
                                <h3 class="title">
                                    ${val.title}
                                </h3>
                                <div class="description">
                                    ${val.description}
                                </div>
                                {{if val.link}}
                                <a href="<%= SkinPath %>${val.link}" class="more">${val.linktext}</a>
                                {{/if}}
                            </div> 
                        </div>
                    </div>
                {{/each}}
                {{/if}}
            </div>
            {LT}/div{GT}
    </div>

    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("swiper", "${moduleid}","carousel")
    </script>

</div>
