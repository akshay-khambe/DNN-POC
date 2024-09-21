<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="<%= SkinPath %>#">Testimonials Item</a></li>
    <li><a href="<%= SkinPath %>#">Testimonials Options</a></li>
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
                                <label class="control-label">Name:</label>
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

                            {{if !(style == "testimonials07" || style == "testimonials08") }}
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
                            {{/if}}

                            <div class="form-group">
                                <label class="control-label">Description:</label>
                                <div class="control-cont">
                                    <textarea name="description" type="text" class="dynamicOptions"></textarea>
                                </div>
                            </div>
                            {{if style != "testimonials04" && style != "testimonials06" && style != "testimonials10"}}
                            <div class="form-group">
                                <label class="control-label">Rating:</label>
                                <div class="control-cont">
                                    <input name="rating" type="number" class="dynamicOptions" min="0" max="5" />
                                </div>
                            </div>
                            {{/if}}
                            {{if style == "testimonials06"}}
                            <div class="form-group">
                                    <label class="control-label">Date:</label>
                                    <div class="control-cont">
                                        <input name="date" type="text" class="dynamicOptions" />
                                    </div>
                                </div>
                            {{/if}}
                            {{if style == "testimonials10"}}

                            <div class="form-group">
                                <label class="control-label">Icon 1:</label>
                                <div class="control-cont">
                                    <input name="icon" type="text" class="dynamicOptions iconSetting" />
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
                                <label class="control-label">Icon 3 Link:</label>
                                <div class="control-cont">
                                    <input name="iconlink3" type="text" class="dynamicOptions extend-url" />
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
            {{if $data.style == "testimonials02" || $data.style == "testimonials06"}}
            <div class="form-group">
                <label class="control-label">Item:</label>
                <div class="control-cont">
                <ul class="responsive-control-list">
                    <li><span>XXL</span><input name="displayxxl" type="number" class="dnnOptions required" value="${displayxxl}" data-default="2" /></li>
                    <li><span>XL</span><input name="displayxl" type="number" class="dnnOptions required" value="${displayxl}" data-default="2" /></li>
                    <li><span>L</span><input name="displayl" type="number" class="dnnOptions required" value="${displayl}" data-default="2" /></li>
                    <li><span>M</span><input name="displaym" type="number" class="dnnOptions required" value="${displaym}" data-default="2" /></li>
                    <li><span>S</span><input name="displays" type="number" class="dnnOptions required" value="${displays}" data-default="1" /></li>
                    <li><span>XS</span><input name="displayxs" type="number" class="dnnOptions required" value="${displayxs}" data-default="1" /></li>
                </ul>
                    
                </div>
            </div>
            {{/if}}



            <div class="form-group">
                <label class="control-label">Auto play :</label>
                <div class="control-cont">
                    <input name="autoplay" type="checkbox" class="dnnOptions" ${autoplay} data-default="checked" id="autoplay" />
                    <input name="delay" type="number" class="dnnOptions conditional"  data-condition="#autoplay" value="${delay}" data-default="5000" style="width: 100px" placeholder="ms"  /> 
                </div>
            </div>
            {{if $data.style != "testimonials08"}}
            <div class="form-group">
                <label class="control-label">Lazy load :</label>
                <div class="control-cont">
                    <input name="lazy" type="checkbox" class="dnnOptions" ${lazy} />
                </div>
            </div>
            {{/if}}

            {{if $data.style == "testimonials06"}}
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
            {{/if}}

            {{if style == "testimonials10"}}
            <div class="form-group">
                <label class="control-label">Target:</label>
                <div class="control-cont">
                    <select class="form-control dnnOptions" name="linktarget">
                        <option value="_self">_self</option>
                        <option value="_blank">_blank</option>
                    </select>
                </div>
            </div>    
            {{/if}}
    </div>

</div>


<!--build HTML-->
<div class="buildHTML">
        {{if $data.style == "testimonials01"}}
            <style class="build-css" data-class="swiper-${$data.style}">
            .swiper-testimonials01 .swiper-thumbnail-pagination{
                max-width: 356px;
                margin:0 auto;
            }
            .swiper-testimonials01 .swiper-thumbnail-pagination .swiper-slide{
                justify-content: center;
            }
            .swiper-testimonials01 .swiper-thumbnail-pagination .pic{
                width: 100px;
                overflow: hidden;
                border-radius: 50%;
                border:2px solid #ff6e2f;
                padding: 2px;
                display: inline-block;
            }
            .swiper-testimonials01 .swiper-thumbnail-pagination .pic img{
                border-radius: 50%;
            }
            .swiper-testimonials01 .swiper-thumbnail-pagination .swiper-slide-active .pic{
                border-color:var(--accent-color);
            }
            .swiper-testimonials01 .swiper-container-main blockquote{
                border: none;
                font-style: normal;
                margin: 0 auto;
                position: relative;
                z-index: 2;
            }
            .swiper-testimonials01 blockquote p{
                font-style: normal;
                font-size: 32px;
                color: #272727;
                line-height: 1.5;
            }
            .swiper-testimonials01 .info{
                display: block;
                padding-top: 20px;
                background-size: 80px;
                background-repeat: no-repeat;
                background-position: center center;
            }
    
            .swiper-testimonials01 .comma{
                width: 80px;
                height: 80px;
                pointer-events: none;
                position: absolute;
                bottom: 0;
                left: 50%;
                margin-left: -40px;
                opacity: .15;
                z-index: -1;
           }
            .swiper-testimonials01 .comma svg{
                fill:var(--accent-color);
                width: 80px;
                height: 80px;
           }

            .swiper-testimonials01 .info strong{
                display: block;
                font-size: 22px;
                color: #424242;
                margin: 0 0 10px;
            }
            .swiper-testimonials01 .info span{
                display: block;
                font-size: 16px;
                color: #787878;
            }
            .swiper-testimonials01 .testimonials-rating{
                width: 130px;
                height: 16px;
                margin: 20px auto 30px;
                background: url('data:image/svg+xml;utf8,<svg width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="%23ff6e2f" fill="none" ></path></svg>');
                background-size: 26px 16px;
            }
            .swiper-testimonials01 .testimonials-rating span{
                display: block;
                height: 100%;
                background: url('data:image/svg+xml;utf8,<svg width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="rgba(231,113,27)" fill="%23ff6e2f" ></path></svg>');
                background-size: 26px 16px;
            }
            .swiper-testimonials01 .swiper-button-next, 
            .swiper-testimonials01 .swiper-button-prev{
                color: #666666;
            }
            .swiper-testimonials01 .swiper-container .swiper-button-next span, 
            .swiper-testimonials01 .swiper-container .swiper-button-prev span{
                width: 18px;
                height: 18px;
            }
            @media only screen and (max-width:1400px) {
                .swiper-testimonials01 .swiper-container .swiper-button-next{
                    right:-25px;
                } 
                .swiper-testimonials01 .swiper-container .swiper-button-prev{
                    left:-25px;
                }
            }
            @media only screen and (max-width:767px) {
                .swiper-testimonials01 blockquote p{
                    font-size: 22px;
                }
                .swiper-testimonials01 .info strong{
                    font-size: 16px;
                    margin: 0 0 2px;
                }
                .swiper-testimonials01 .info span{
                    font-size: 14px;
                }
                .swiper-testimonials01 .swiper-button-next, 
                .swiper-testimonials01 .swiper-button-prev{
                    display: none;
                }
            }

            </style>
            <div class="swiper-${$data.style}">
                    {LT}div class="swiper-container swiper-thumbnail-pagination loading" data-effect="thumbnail" data-mousewheel="false" data-slidesperview="3" {{if $data.lazy}} data-lazy="true"{{/if}}{GT}
                    <div class="swiper-wrapper">
                        {{if $data.items}}
                        {{each(prop, val) $data.items }}
                        <div class="swiper-slide">
                        <div class="pic">
                            
                                {{if $data.lazy}}
                                {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                    <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
                                {{else}}
                                {LT}img alt="${val.title}" src="${val.single}" /{GT}
                                {{/if}}

                        </div>
                        </div>
                        {{/each}}
                        {{/if}}
                    </div>
                    {LT}/div{GT}
                    {LT}div class="swiper-container swiper-container-main loading" data-effect="fade" data-mousewheel="false" data-navigation="false" data-pagination="false" data-slidesperview="1"{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
                    <div class="swiper-wrapper">
                        {{if $data.items}}
                        {{each(prop, val) $data.items }}
                        <div class="swiper-slide">
                            <blockquote>
                            <div class="testimonials-rating"><span style="width:${parseInt(val.rating)*26 + (val.rating - parseInt(val.rating))*16}px"></span></div>
                                <p>
                                    {{html val.description}}
                                </p>
                                <footer>
                                    <span class="info">
                                        <strong>${val.title}</strong>
                                        <span>${val.job}</span>
                                    </span>
                                    <span class="comma"><svg width="200" height="200" viewBox='0 0 200 200' xmlns="http://www.w3.org/2000/svg"><path d="M68.377,14.109c7.473,9.407,11.214,23.516,11.214,42.327c0,38.111-12.3,70.187-36.902,96.233 c-4.828,4.827-10.129,7.236-15.918,7.236c-5.313,0-9.891-1.809-13.747-5.427c-3.866-3.618-5.788-7.835-5.788-12.662 c0-5.304,1.921-9.882,5.788-13.747c12.538-12.538,20.498-28.457,23.878-47.755c-10.616-0.961-19.424-5.065-26.411-12.3 C3.495,60.778,0,51.621,0,40.519c0-12.051,3.73-21.818,11.214-29.304C18.689,3.742,27.971,0,39.073,0 C51.124,0,60.891,4.704,68.377,14.109z M188.486,14.109c7.473,9.407,11.215,23.516,11.215,42.327 c0,38.111-12.3,70.187-36.902,96.233c-4.827,4.827-10.129,7.236-15.918,7.236c-5.313,0-9.891-1.809-13.747-5.427 c-3.866-3.618-5.787-7.835-5.787-12.662c0-5.304,1.921-9.882,5.787-13.747c12.538-12.538,20.498-28.457,23.878-47.755 c-10.616-0.961-19.424-5.065-26.411-12.3c-6.996-7.237-10.491-16.395-10.491-27.497c0-12.051,3.731-21.818,11.215-29.304 C138.799,3.742,148.08,0,159.183,0C171.233,0,181.003,4.704,188.486,14.109z"></path></svg></span>
                                </footer>
                            </blockquote>
                        </div>
                        {{/each}}
                        {{/if}}

                    </div>
                    {LT}/div{GT}

            </div>
        {{else $data.style == "testimonials02"}}
            <style class="build-css" data-class="swiper-${$data.style}" data-editor="true">
                .swiper-testimonials02.swiper-container {
                    margin: 0 -15px;
                    width: auto;
                }
                .swiper-testimonials02 .swiper-wrapper{
                    align-items: stretch;
                }
                .swiper-testimonials02 .swiper-slide{
                    flex-direction: column;
                    height: auto;
                }
                .swiper-testimonials02 .pic{
                    width: 100px;
                    height: 100px;
                    border: 2px solidvar(--accent-color);
                    padding: 2px;
                    border-radius: 50%;
                    margin: 0 45px -50px auto;
                    box-shadow: 0 0 10px rgba(0,0,0,.1);
                    z-index: 1;
                    position: relative;
                }
                .swiper-testimonials02 .pic img{
                    border-radius: 50%;
                    max-width: 100%;
                }
                .swiper-testimonials02 blockquote{
                    box-shadow: 0 0 10px rgba(0,0,0,.1);
                    border:none;
                    margin: 0px 15px;
                    padding: 50px 30px;
                    border-radius: 3px;
                    text-align: left;
                    font-style: normal;
                    height: calc( 100% - 50px);
                }
                .swiper-testimonials02 .comma{
                    width: 160px;
                    height: 90px;
                    pointer-events: none;
                    position: absolute;
                    bottom: 0;
                    right: 9%;
                    opacity: .1;
                    z-index: -1;
                    overflow: hidden;
                }
                .swiper-testimonials02 .comma svg{
                        fill:var(--accent-color);
                        width: 160px;
                        height: 160px;
                }

                .swiper-testimonials02 .info{
                    margin-bottom: 32px;
                    
                }
                .swiper-testimonials02 .info strong{
                    display: block;
                    font-size: 22px;
                    color: #333333;
                    font-style: normal;
                    margin-bottom: 8px;
                    font-weight: 700!important;
                }
                .swiper-testimonials02 .info span{
                    display: block;
                    font-size: 16px;
                    color: #787878;
                    font-weight: 600;
                    font-style: normal;
                }
                .swiper-testimonials02 blockquote p{
                    font-size: 18px;
                    line-height: 1.8;
                    color: #787878;
                }
                .swiper-testimonials02 .testimonials-rating{
                    width: 130px;
                    height: 16px;
                    margin: 30px 0 0px;
                    background: url('data:image/svg+xml;utf8,<svg width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="%23ff6e2f" fill="none" ></path></svg>');
                    background-size: 26px 16px;
                }
                .swiper-testimonials02 .testimonials-rating span{
                    display: block;
                    height: 100%;
                    background: url('data:image/svg+xml;utf8,<svg width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="rgba(231,113,27)" fill="%23ff6e2f" ></path></svg>');
                    background-size: 26px 16px;
                }
                .swiper-testimonials02 .swiper-pagination{
                    text-align: center;
                    padding: 13px 0 0;
                }
                .swiper-testimonials02 .swiper-pagination-bullet{
                    opacity: 1;
                    background: #e5e5e5;
                    backface-visibility: hidden;
                }
                .swiper-testimonials02.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet{
                    width: 14px;
                    height: 14px;
                    margin: 0 6px;
                    transition: 300ms all linear;
                }
                .swiper-testimonials02.swiper-container-horizontal .swiper-pagination-bullet.swiper-pagination-bullet-active{
                    width: 27px;
                    border-radius:14px;
                    background:var(--accent-color);
                }

            </style>        
            {LT}div class="swiper-container swiper-${$data.style} loading" data-navigation="false" data-slidesperview="[${displayxxl},${displayxl},${displayl},${displaym},${displays},${displayxs}]" {{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
                <div class="swiper-wrapper">
                    {{if $data.items}}
                    {{each(prop, val) $data.items }}
                    <div class="swiper-slide">
                        <div class="pic">
                                {{if $data.lazy}}
                                {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' wdith='${singlewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                    <div class="swiper-lazy-preloader swiper-lazy-preloader-black"></div>
                                {{else}}
                                {LT}img alt="${val.title}" src="${val.single}" /{GT}
                                {{/if}}

                        </div>
                        <blockquote>
                            <div class="info">
                                <strong>${val.title}</strong>
                                <span>${val.job}</span>
                            </div>
                            <p>
                                {{html val.description}}
                            </p>       
                            <div class="testimonials-rating"><span style="width:${parseInt(val.rating)*26 + (val.rating - parseInt(val.rating))*16}px"></span></div>

                            <span class="comma"><svg width="200" height="200" viewBox='0 0 200 200' xmlns="http://www.w3.org/2000/svg"><path d="M68.377,14.109c7.473,9.407,11.214,23.516,11.214,42.327c0,38.111-12.3,70.187-36.902,96.233 c-4.828,4.827-10.129,7.236-15.918,7.236c-5.313,0-9.891-1.809-13.747-5.427c-3.866-3.618-5.788-7.835-5.788-12.662 c0-5.304,1.921-9.882,5.788-13.747c12.538-12.538,20.498-28.457,23.878-47.755c-10.616-0.961-19.424-5.065-26.411-12.3 C3.495,60.778,0,51.621,0,40.519c0-12.051,3.73-21.818,11.214-29.304C18.689,3.742,27.971,0,39.073,0 C51.124,0,60.891,4.704,68.377,14.109z M188.486,14.109c7.473,9.407,11.215,23.516,11.215,42.327 c0,38.111-12.3,70.187-36.902,96.233c-4.827,4.827-10.129,7.236-15.918,7.236c-5.313,0-9.891-1.809-13.747-5.427 c-3.866-3.618-5.787-7.835-5.787-12.662c0-5.304,1.921-9.882,5.787-13.747c12.538-12.538,20.498-28.457,23.878-47.755 c-10.616-0.961-19.424-5.065-26.411-12.3c-6.996-7.237-10.491-16.395-10.491-27.497c0-12.051,3.731-21.818,11.215-29.304 C138.799,3.742,148.08,0,159.183,0C171.233,0,181.003,4.704,188.486,14.109z"></path></svg></span>


                        </blockquote>
                    </div>
                    {{/each}}
                    {{/if}}

                </div>
            {LT}/div{GT}
        {{else $data.style == "testimonials03"}}
            <style class="build-css" data-class="swiper-${$data.style}" data-editor="true">
                .swiper-testimonials03{
                    max-width: 970px;
                    margin: auto;
                }
                .swiper-testimonials03 p,
                .swiper-testimonials03 .swiper-wrapper-overflow *{
                    color: #272727;
                }
                .swiper-testimonials03 p{
                    margin: 0 auto;
                    max-width: 680px;
                    font-size: 24px;
                    line-height: 36px;
                    font-style: normal;
                    font-weight: 600;
                }
                .swiper-testimonials03 .swiper-slide{
                    flex-direction: column;

                    height: auto;
                }
                .swiper-testimonials03 .pic{
                    width: 100px;
                    height: 100px;
                    border: 2px solidvar(--accent-color);
                    background: #ffffff;
                    padding: 2px;
                    border-radius: 50%;
                    margin: 0 auto -50px auto;
                    -webkit-box-shadow: 0 0 25px rgba(0,0,0,0.3);
                    box-shadow: 0 0 25px rgba(0,0,0,0.3);
                    z-index: 1;
                }
                .swiper-testimonials03 .pic img {
                    border-radius: 50%;
                    max-width: 100%;
                }
                .swiper-testimonials03 .info{
                    position: relative;
                    padding: 44px 0 33px;
                }
                .swiper-testimonials03 .info::before{
                    content: '“';
                    position: absolute;
                    display: block;
                    top: 50%;
                    left: 50%;
                    color: var(--accent-color);
                    opacity: 0.2;
                    -webkit-transform: translate3d(-50%,-50%,0);
                    transform: translate3d(-50%,-50%,0);
                    font-size: 200px;
                    line-height: 1;
                    margin-top: 55px;
                    pointer-events: none;
                }
                .swiper-testimonials03 .info strong{
                    font-size: 18px;
                    color: #333333;
                }
                .swiper-testimonials03 .info span{
                    font-size: 16px;
                    color: #787878;
                }
                .swiper-testimonials03 .info span.sep{
                    margin: 0 4px;
                }
                .swiper-testimonials03 blockquote{
                    -webkit-box-shadow: 0 0 10px rgba(0,0,0,.1);
                    box-shadow: 0 0 10px rgba(0,0,0,.1);
                    border:none;
                    margin: 0px 10px;
                    padding: 50px 30px 70px;
                    text-align: center;
                    background:#fff;
                    font-style: normal;
                   
                    height: 100%;
                }
                .cell-active .swiper-testimonials03 blockquote.elm-active{
                    background:#fff;
                }
                .swiper-testimonials03 .testimonials-rating{
                    width: 130px;
                    height: 16px;
                    margin: 40px auto 0px;
                    background: url('data:image/svg+xml;utf8,<svg width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="%23ff6e2f" fill="none" ></path></svg>');
                    background-size: 26px 16px;
                }
                .swiper-testimonials03 .testimonials-rating span{
                    display: block;
                    height: 100%;
                    background: url('data:image/svg+xml;utf8,<svg width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="rgba(231,113,27)" fill="%23ff6e2f" ></path></svg>');
                    background-size: 26px 16px;
                }

                .swiper-testimonials03 .swiper-button-prev,
                .swiper-testimonials03 .swiper-button-next{
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    width: 52px;
                    height: 52px;
                    margin-top: -1px;
                    border-radius: 50%;
                    color:var(--accent-color);
                    background: #ffffff;
                    -webkit-box-shadow: 0 0 10px rgba(0,0,0,.1);
                    box-shadow: 0 0 10px rgba(0,0,0,.1);

                    -webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                    transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                }

                .swiper-testimonials03 .swiper-button-prev{
                    left: 0;
                    margin-left: -16px;
                }
                .swiper-testimonials03 .swiper-button-next{
                    right: 0;
                    margin-right: -16px;
                }
                .swiper-testimonials03 .swiper-button-prev span,
                .swiper-testimonials03 .swiper-button-next span{
                    margin: 0;
                    top: auto;
                    left: auto;
                    width: 11px;
                    height: 11px;
                    border-color:var(--accent-color);
                    -webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                    transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                }
                .swiper-testimonials03 .swiper-button-prev span{
                    -webkit-transform: rotate(-45deg) translate3d(25%,25%,0);
                    transform: rotate(-45deg) translate3d(25%,25%,0);
                }
                .swiper-testimonials03 .swiper-button-next span{
                    -webkit-transform: rotate(135deg) translate3d(25%,25%,0);
                    transform: rotate(135deg) translate3d(25%,25%,0);
                }

                .swiper-testimonials03 .swiper-button-next:hover,
                .swiper-testimonials03 .swiper-button-prev:hover{
                    color: #ffffff;
                    background:var(--accent-color);
                }
                .swiper-testimonials03 .swiper-button-prev:hover span,
                .swiper-testimonials03 .swiper-button-next:hover span{
                    border-color: #ffffff;
                }
                @media only screen and (max-width:767px) {
                    .swiper-testimonials03 p{
                        font-size: 16px;
                        line-height: 26px;
                    }
                    .swiper-testimonials03 .info strong{
                        font-size: 16px;
                    }
                    .swiper-testimonials03 .info span{
                        font-size: 14px;
                    }
                }
            </style>        
            {LT}div class="swiper-container swiper-${$data.style} loading" data-pagination="false" data-slidesperview="1" data-spaceBetween="[30,30,20,20,15]" {{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
                <div class="swiper-wrapper">
                    {{if $data.items}}
                    {{each(prop, val) $data.items }}
                    <div class="swiper-slide">
                        <div class="pic">
                                {{if $data.lazy}}
                                {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' wdith='${singlewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                    <div class="swiper-lazy-preloader swiper-lazy-preloader-black"></div>
                                {{else}}
                                {LT}img alt="${val.title}" src="${val.single}" /{GT}
                                {{/if}}
                        </div>
                        <blockquote>
                            <div class="info">
                                <strong>${val.title}</strong><span class="sep">-</span><span>${val.job}</span>
                            </div>
                            <p>
                                {{html val.description}}
                            </p>       
                            <div class="testimonials-rating"><span style="width:${parseInt(val.rating)*26 + (val.rating - parseInt(val.rating))*16}px"></span></div>
                        </blockquote>
                    </div>
                    {{/each}}
                    {{/if}}

                </div>
            {LT}/div{GT}
        {{else $data.style == "testimonials04"}}
            <style class="build-css" data-class="swiper-${$data.style}" data-editor="true">
                .swiper-testimonials04 .swiper-slide{
                    display: block;
                }

                .swiper-testimonials04 blockquote{
                    margin: 0;
                    padding: 0;
                    border: none;
                    max-width: 870px;
                    margin: auto;
                }
                .swiper-testimonials04 .pic{
                    width: 110px;
                    height: 110px;
                    border-radius: 50%;
                    padding: 3px;
                    background-color: #FFF;
                    border:1px solid #d5d5d5;
                    overflow: hidden;
                    position: relative;
                    margin:0 auto 35px;
                }
                .swiper-testimonials04 .pic img{
                    max-width: 100%;
                    border-radius: 50%;
                }

                .swiper-testimonials04 blockquote p{
                    font-size: 16px;
                    line-height: 28px;
                    color: #787878;
                    font-style: italic;
                }
                .swiper-testimonials04 .info{
                    font-style: normal;
                }
                .swiper-testimonials04 .info strong{
                    display: block;
                    color: #333333;
                    font-weight: bold;
                    margin-bottom: 8px;
                }
                .swiper-testimonials04 .info span{
                    font-style: italic;
                    font-size: 16px;
                }
                .swiper-testimonials04.swiper-container .swiper-button-next{
                    right: 0;
                    width: 25px;
                }
                .swiper-testimonials04.swiper-container .swiper-button-prev{
                    left: 0;
                    width: 25px;
                }
                .swiper-testimonials04.swiper-container .swiper-button-next span, 
                .swiper-testimonials04.swiper-container .swiper-button-prev span{
                    width: 17px;
                    height: 17px;
                }
                .swiper-testimonials04 .swiper-pagination-bullet{
                    opacity: 1;
                    background: #e5e5e5;
                    backface-visibility: hidden;
                }
                .swiper-testimonials04.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet{
                    width: 12px;
                    height: 12px;
                    margin: 0 5px;
                    transition: 300ms all linear;
                }
                .swiper-testimonials04.swiper-container-horizontal .swiper-pagination-bullet.swiper-pagination-bullet-active{
                    width: 24px;
                    border-radius:14px;
                    background:var(--accent-color);
                }
            </style>        
            {LT}div class="swiper-container swiper-${$data.style} loading" data-slidesperview="1" {{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
                <div class="swiper-wrapper">
                    {{if $data.items}}
                    {{each(prop, val) $data.items }}
                    <div class="swiper-slide">
                        <div class="pic">
                                {{if $data.lazy}}
                                {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' wdith='${singlewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                    <div class="swiper-lazy-preloader swiper-lazy-preloader-black"></div>
                                {{else}}
                                {LT}img alt="${val.title}" src="${val.single}" /{GT}
                                {{/if}}
                        </div>
                        <blockquote>
                            <p>
                                {{html val.description}}
                            </p>
                              <div class="info">
                                <strong>${val.title}</strong>
                                <span>${val.job}</span>
                            </div>
                                 
                        </blockquote>
                    </div>
                    {{/each}}
                    {{/if}}

                </div>
            {LT}/div{GT}
        {{else $data.style == "testimonials05"}}
        <style class="build-css" data-class="swiper-${$data.style}">
            .swiper-testimonials05{
                position: relative;
            }

            .swiper-testimonials05 .swiper-thumbnail-pagination{
                max-width: 430px;
                margin:0 auto 10px;

            }
            .swiper-testimonials05 .swiper-thumbnail-pagination .swiper-wrapper-overflow{
                padding: 30px 0
            }

            .swiper-testimonials05 .swiper-thumbnail-pagination .swiper-slide{
                justify-content: center;
            }
            .swiper-testimonials05 .swiper-thumbnail-pagination .pic{
                width: 100px;
                height: 100px;
                overflow: hidden;
                border-radius: 50%;
                border:2px solid #ff6e2f;
                padding: 2px;
                display: inline-block;
                transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
                background-color: #FFF;
                
            }
            .swiper-testimonials05 .swiper-thumbnail-pagination .pic img{
                border-radius: 50%;
            }
            .swiper-testimonials05 .swiper-thumbnail-pagination .swiper-slide-active {
                z-index: 1000;
            }
            .swiper-testimonials05 .swiper-thumbnail-pagination .swiper-slide-active .pic{
                border-color:var(--accent-color);
                -webkit-transform: scale(1.5);
                transform: scale(1.5);
            }
            .swiper-testimonials05 .swiper-container-main blockquote{
                border: none;
                font-style: normal;
                max-width: 570px;
                margin:0 auto;
                padding: 0;
            }
            .swiper-testimonials05 .swiper-container-main .swiper-wrapper-overflow{
                padding:  0
            }

            .swiper-testimonials05 blockquote p{
                font-size: 24px;
                color: #272727;
                line-height: 1.5;
                font-weight: 600;
            }
            .swiper-testimonials05 .info{
                display: block;
                margin-top: 38px;
            }
            .swiper-testimonials05 .info strong{
                display: block;
                font-size: 20px;
                color: #424242;
                margin: 0 0 7px;
            }
            .swiper-testimonials05 .info span{
                display: block;
                font-size: 16px;
                color: #787878;
            }
            .swiper-testimonials05 .testimonials-rating{
                width: 130px;
                height: 16px;
                margin: 32px auto 40px;
                background: url('data:image/svg+xml;utf8,<svg _tmplitem="3" width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path _tmplitem="3" d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="%23ff6e2f" fill="none" ></path></svg>');
                background-size: 26px 16px;
            }
            .swiper-testimonials05 .testimonials-rating span{
                display: block;
                height: 100%;
                background: url('data:image/svg+xml;utf8,<svg _tmplitem="3" width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path _tmplitem="3" d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="rgba(231,113,27)" fill="%23ff6e2f" ></path></svg>');
                background-size: 26px 16px;
            }
            .swiper-testimonials05 .swiper-button-next,
            .swiper-testimonials05 .swiper-button-prev{
                color: #444444;
                width: 27px;
                height: 43px;
            }
            .swiper-testimonials05 .swiper-button-next{
                right: 0;
            }
            .swiper-testimonials05 .swiper-button-prev{
                left: 0;
            }
            .swiper-testimonials05 .swiper-container .swiper-button-next span, 
            .swiper-testimonials05 .swiper-container .swiper-button-prev span{
                width: 25px;
                height: 25px;
            }

            @media only screen and (max-width:767px) {

                .swiper-testimonials05 .swiper-thumbnail-pagination .swiper-slide-active .pic{
                -webkit-transform: scale(1.2);
                transform: scale(1.2);
                 }

            }


            </style>
            <div class="swiper-${$data.style}">
                    
                    {LT}div class="swiper-container swiper-container-main loading" data-effect="fade" data-mousewheel="false" data-pagination="false" data-slidesperview="1"{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
                    <div class="swiper-wrapper">
                        {{if $data.items}}
                        {{each(prop, val) $data.items }}
                        <div class="swiper-slide">
                            <blockquote>
                                <p>
                                    {{html val.description}}
                                </p>
                                <footer>
                                    <span class="info">
                                        <strong>${val.title}</strong>
                                        <span>${val.job}</span></span>
                                </footer>
                                <div class="testimonials-rating"><span style="width:${parseInt(val.rating)*26 + (val.rating - parseInt(val.rating))*16}px"></span></div>
                            </blockquote>
                        </div>
                        {{/each}}
                        {{/if}}

                    </div>
                    {LT}/div{GT}

                    {LT}div class="swiper-container swiper-thumbnail-pagination loading" data-effect="thumbnail" data-mousewheel="false" data-slidesperview="3" data-navigation="false" data-pagination="false" {{if $data.lazy}} data-lazy="true"{{/if}}{GT}
                    <div class="swiper-wrapper">
                        {{if $data.items}}
                        {{each(prop, val) $data.items }}
                        <div class="swiper-slide">
                        <div class="pic">
                        
                            {{if $data.lazy}}
                            {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
                            {{else}}
                            {LT}img alt="${val.title}" src="${val.single}" /{GT}
                            {{/if}}

                        </div>
                        </div>
                        {{/each}}
                        {{/if}}
                    </div>
                    {LT}/div{GT}


            </div>
        {{else $data.style == "testimonials06"}}
        <style class="build-css" data-class="swiper-${$data.style}" data-editor="true">
            .swiper-testimonials06.swiper-container {
                margin: 0 -15px;
                width: auto;
            }
            .swiper-testimonials06 .swiper-wrapper{
                align-items: stretch;
            }
            .swiper-testimonials06 .swiper-slide{
                flex-direction: column;
                height: auto;
            }
            .swiper-testimonials06 .content{
                background-color: #1e2049;
                padding: 40px 30px 30px;
                text-align: center;
                line-height: inherit;
                position: relative;
                margin-top: 18px;
                color: #d5d6df;
                transition: background-color ease-in 300ms,color ease-in 300ms;
            }
            .swiper-testimonials06 .content::before{
                content: '“';
                top: -36px;
                left: 50%;
                position: absolute;
                margin-left: -32px;
                transition: color ease-in 300ms;
                font-size: 160px;
                line-height: 1;
                pointer-events: none;
                color:var(--accent-color);
            }
            .swiper-testimonials06 .content::after{
                content: "";
                border:10px solid transparent;
                border-top-color:#1e2049;
                top: 100%;
                left: 50%;
                position: absolute;
                margin-left: -10px;
                transition: border-color ease-in 300ms;

            }
            .swiper-testimonials06 blockquote:hover .content{
                background-color:var(--accent-color);
                color:#ffffff;
            }
            .swiper-testimonials06 blockquote:hover .content::after{
                border-top-color:var(--accent-color);
            }
            .swiper-testimonials06 blockquote:hover .content::before{
                color:#ffffff;
            }

            .swiper-testimonials06 .swiper-wrapper-overflow{
                padding: 0;
            }

            .swiper-testimonials06 .pic{
                width: 68px;
                height: 68px;
                border-radius: 50%;
                margin: 35px auto 15px;
                z-index: 1;
                position: relative;
            }
            .swiper-testimonials06 .pic img{
                border-radius: 50%;
                max-width: 100%;
            }

            .swiper-testimonials06 .info{
                margin: 0;
            }
            .swiper-testimonials06 .info strong{
                display: block;
                font-size: 18px;
                color:var(--accent-color);
                font-style: normal;
                margin-bottom: 8px;
                font-weight: 700!important;
            }
            .swiper-testimonials06 .info span{
                display: block;
                font-size: 16px;
                color: #d5d6df;
                font-weight: 600;
                font-style: normal;
            }
            .swiper-testimonials06 blockquote{
                padding: 0 15px;
                border: none;
                font-style: normal;
                line-height: inherit;
            }
            .swiper-testimonials06 blockquote, 
            .swiper-testimonials06 blockquote p,
            .swiper-testimonials06 blockquote .content *{
                font-size: inherit;
                line-height: inherit;
                color:inherit;
                font-style: inherit;
                margin: 0;
            }
            .swiper-testimonials06 blockquote .content .date{
                margin-top:12px;
            }
            .swiper-testimonials06 .date i{
                vertical-align: middle;
                margin: 0 8px 4px 0;
                font-size: 1.2em;
            }
            .swiper-testimonials06 .swiper-button-prev,
            .swiper-testimonials06 .swiper-button-next{

                width: 42px;
                height: 42px;
                margin-top: -21px;
                border-radius: 50%;
                color: #5b5f86;
                background: transparent;
                border:2px solid #5b5f86;
                -webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
            }
            .swiper-testimonials06 .swiper-button-prev{
                left: 0;
                margin-left: -60px;
            }
            .swiper-testimonials06 .swiper-button-next{
                right: 0;
                margin-right: -60px;
            }
            .swiper-testimonials06 .swiper-button-prev span,
            .swiper-testimonials06 .swiper-button-next span{
                margin: 0;
                top: 12px;
                left: 12px;
                width: 13px;
                height: 13px;
                border-color: #5b5f86;
                border-width: 2px;
                -webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                position: absolute;
            }
            .swiper-testimonials06 .swiper-button-prev span{
                -webkit-transform: rotate(-45deg);
                transform: rotate(-45deg);
                margin-left: 4px;
            }
            .swiper-testimonials06 .swiper-button-next span{
                -webkit-transform: rotate(135deg);
                transform: rotate(135deg);
                margin-left: -2px;
            }

            .swiper-testimonials06 .swiper-button-next:hover,
            .swiper-testimonials06 .swiper-button-prev:hover{
                color: #ffffff;
                background:var(--accent-color);
                border-color:var(--accent-color);
                box-shadow: 0 0 10pxvar(--accent-color);
            }
            .swiper-testimonials06 .swiper-button-prev:hover span,
            .swiper-testimonials06 .swiper-button-next:hover span{
                border-color: #ffffff;
            }
        </style>        
        {LT}div class="swiper-container swiper-${$data.style} loading"{{if !$data.pagination}} data-pagination="false"{{/if}}{{if !$data.navigation}} data-navigation="false"{{/if}} data-slidesperview="[${displayxxl},${displayxl},${displayl},${displaym},${displays},${displayxs}]" {{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
            <div class="swiper-wrapper">
                {{if $data.items}}
                {{each(prop, val) $data.items }}
                <div class="swiper-slide">
                    <blockquote>
                        <div class="content">
                            <p>{{html val.description}}</p>
                            {{if val.date}} <div class="date"><i class="sico lnr-calendar-full">{LT}use xlink:href="#lnr-calendar-full"{GT}{LT}/use{GT}</i> ${val.date}</div> {{/if}}
                            
                        </div>    
                        <div class="pic">
                            {{if $data.lazy}}
                            {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' wdith='${singlewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                <div class="swiper-lazy-preloader swiper-lazy-preloader-black"></div>
                            {{else}}
                            {LT}img alt="${val.title}" src="${val.single}" /{GT}
                            {{/if}}
                            </div>                         
                        <div class="info">
                            <strong>${val.title}</strong>
                            <span>${val.job}</span>
                        </div>
                    </blockquote>
                </div>
                {{/each}}
                {{/if}}

            </div>
        {LT}/div{GT}

        {{else $data.style == "testimonials07"}}
        <style class="build-css" data-class="swiper-${$data.style}" data-editor="true">
            .swiper-testimonials07 .swiper-wrapper-overflow{
                padding-top: 0;
                padding-bottom: 0;
            }
            .swiper-testimonials07 .swiper-slide{
                text-align: left;
            }
            .swiper-testimonials07 blockquote{
                border:none;
                padding: 32px 0 0;
                border-radius: 3px;
                text-align: left;
                background: url('data:image/svg+xml;utf8,<svg width="75" height="62" xmlns="http://www.w3.org/2000/svg"><path fill="rgba(210,227,252,0.5)" d="M29.994,36.304c1.666,2.6,2.5,5.7,2.5,9.3c0,4.8-1.534,8.734-4.6,11.8c-3.068,3.069-6.869,4.6-11.4,4.6   c-4.8,0-8.734-1.531-11.8-4.6c-3.069-3.065-4.6-7-4.6-11.8c0-2.4,0.3-4.731,0.9-7c0.6-2.266,1.766-5.666,3.5-10.2l10.6-28.4h16   l-8,30.6C26.025,31.804,28.325,33.704,29.994,36.304z M72.394,36.304c1.666,2.6,2.5,5.7,2.5,9.3c0,4.8-1.534,8.734-4.6,11.8   c-3.069,3.069-6.869,4.6-11.4,4.6c-4.8,0-8.734-1.531-11.8-4.6c-3.069-3.065-4.6-7-4.6-11.8c0-2.4,0.3-4.731,0.9-7   c0.6-2.266,1.766-5.666,3.5-10.2l10.6-28.4h16l-8,30.6C68.425,31.804,70.725,33.704,72.394,36.304z"></path></svg>')  no-repeat;
                font-style: normal;
                color: currentColor;
            }
            .swiper-testimonials07 blockquote p{
                font-style: normal;
                line-height: 28px;
                color: currentColor;
                font-size: 16px;
                margin-bottom: 24px;
            }

            .swiper-testimonials07 .testimonials-rating{
                width: 130px;
                height: 16px;
                margin: 0 0 27px;
            }
            .swiper-testimonials07 .testimonials-rating span{
                display: block;
                height: 100%;
                background: url('data:image/svg+xml;utf8,<svg width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="rgba(231,113,27)" fill="%23ff6e2f" ></path></svg>');
                background-size: 26px 16px;
            }


            .swiper-testimonials07 .info strong{
                font-size: 18px;
                font-weight: 600;
                color: #333;
            }
            .swiper-testimonials07 .info span{
                font-size: 14px;
            }
            .swiper-testimonials07 .swiper-pagination{
                padding: 0;
                text-align: left;
            }
            .swiper-testimonials07 .swiper-pagination-bullet{
                opacity: 1;
                background: #e5e5e5;
                backface-visibility: hidden;
            }
            .swiper-testimonials07.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet{
                width: 14px;
                height: 14px;
                margin: 0 6px;
                transition: 300ms all linear;
            }
            .swiper-testimonials07.swiper-container-horizontal .swiper-pagination-bullet.swiper-pagination-bullet-active{
                width: 27px;
                border-radius:14px;
                background:var(--accent-color);
            }
        </style>        
        {LT}div class="swiper-container swiper-${$data.style} loading" data-navigation="false" data-slidesperview="1" {{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
            <div class="swiper-wrapper">
                {{if $data.items}}
                {{each(prop, val) $data.items }}
                <div class="swiper-slide">
                    <blockquote>
                        <p>
                            {{html val.description}}
                        </p>
                        <div class="testimonials-rating"><span style="width:${parseInt(val.rating)*26 + (val.rating - parseInt(val.rating))*16}px"></span></div>
                        <div class="info">
                            <strong>${val.title}</strong>
                            {{if val.title !='' || val.job !='' }}
                            <span class="sep">-</span>
                            {{/if}}
                            <span>${val.job}</span>
                        </div>
                    </blockquote>
                </div>
                {{/each}}
                {{/if}}

            </div>
        {LT}/div{GT}
        {{else $data.style == "testimonials08"}}
        <style class="build-css" data-class="swiper-${$data.style}" data-editor="true">
            .swiper-testimonials08{
                max-width: 882px;
                margin: auto;
            }
            .swiper-testimonials08 p,
            .swiper-testimonials08 .swiper-wrapper-overflow *{
                color: #272727;
            }
            .swiper-testimonials08 p{
                margin: 0 auto;
                max-width: 690px;
                font-size: 24px;
                line-height: 36px;
                font-style: normal;
                font-weight: 600;
            }
            .swiper-testimonials08 .swiper-slide{
                flex-direction: column;
                padding: 0 26px;
                height: auto;
            }
            .swiper-testimonials08 .info{
                position: relative;
                padding: 44px 0 33px;
            }
            .swiper-testimonials08 .info::before{
                content: '“';
                position: absolute;
                display: block;
                top: 50%;
                left: 50%;
                color: var(--accent-color);
                opacity: 0.2;
                -webkit-transform: translate3d(-50%,-50%,0);
                transform: translate3d(-50%,-50%,0);
                font-size: 200px;
                line-height: 1;
                margin-top: 55px;
                pointer-events: none;
            }
            .swiper-testimonials08 .info strong{
                font-size: 18px;
                color: #333333;
            }
            .swiper-testimonials08 .info span{
                font-size: 16px;
                color: #787878;
            }
            .swiper-testimonials08 .info span.sep{
                margin: 0 4px;
            }
            .swiper-testimonials08 blockquote{
                -webkit-box-shadow: 0 0 10px rgba(0,0,0,.1);
                box-shadow: 0 0 10px rgba(0,0,0,.1);
                border:none;
                margin: 0px auto;
                padding: 28px 30px 60px;
                text-align: center;
                background:#fff;
                font-style: normal;
                width: 100%;
                height: 100%;
            }
            .cell-active .swiper-testimonials08 blockquote.elm-active{
                background:#fff;
            }
            .swiper-testimonials08 .testimonials-rating{
                width: 130px;
                height: 16px;
                margin: 40px auto 0px;
                background: url('data:image/svg+xml;utf8,<svg width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="%23ff6e2f" fill="none" ></path></svg>');
                background-size: 26px 16px;
            }
            .swiper-testimonials08 .testimonials-rating span{
                display: block;
                height: 100%;
                background: url('data:image/svg+xml;utf8,<svg width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="rgba(231,113,27)" fill="%23ff6e2f" ></path></svg>');
                background-size: 26px 16px;
            }

            .swiper-testimonials08 .swiper-button-prev,
            .swiper-testimonials08 .swiper-button-next{
                display: flex;
                justify-content: center;
                align-items: center;
                width: 52px;
                height: 52px;
                margin-top: -26px;
                border-radius: 50%;
                color:var(--accent-color);
                background: #ffffff;
                -webkit-box-shadow: 0 0 10px rgba(0,0,0,.1);
                box-shadow: 0 0 10px rgba(0,0,0,.1);

                -webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
            }
            .swiper-testimonials08 .swiper-button-prev{
                left: 26px;
                margin-left: -26px;
            }
            .swiper-testimonials08 .swiper-button-next{
                right: 26px;
                margin-right: -26px;
            }
            .swiper-testimonials08 .swiper-button-prev span,
            .swiper-testimonials08 .swiper-button-next span{
                margin: 0;
                top: auto;
                left: auto;
                width: 11px;
                height: 11px;
                border-color:var(--accent-color);
                -webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
            }
            .swiper-testimonials08 .swiper-button-prev span{
                -webkit-transform: rotate(-45deg) translate3d(25%,25%,0);
                transform: rotate(-45deg) translate3d(25%,25%,0);
            }
            .swiper-testimonials08 .swiper-button-next span{
                -webkit-transform: rotate(135deg) translate3d(25%,25%,0);
                transform: rotate(135deg) translate3d(25%,25%,0);
            }

            .swiper-testimonials08 .swiper-button-next:hover,
            .swiper-testimonials08 .swiper-button-prev:hover{
                color: #ffffff;
                background:var(--accent-color);
            }
            .swiper-testimonials08 .swiper-button-prev:hover span,
            .swiper-testimonials08 .swiper-button-next:hover span{
                border-color: #ffffff;
            }
            @media only screen and (max-width: 575px) {
                .swiper-testimonials08 .swiper-slide{
                    padding: 0 10px;
                }
                .swiper-testimonials08 .info{
                    padding: 30px 0 22px;
                }
                .swiper-testimonials08 p{
                    font-size: 16px;
                    line-height: 24px;
                }
                .swiper-testimonials08 .testimonials-rating{
                    margin-top: 36px;
                }
                .swiper-testimonials08 .swiper-button-prev,
                .swiper-testimonials08 .swiper-button-next {
                    display: none;
                }
            }
        
        </style>        
        {LT}div class="swiper-container swiper-${$data.style} loading" data-pagination="false" data-slidesperview="1" data-spaceBetween="0" {{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
            <div class="swiper-wrapper">
                {{if $data.items}}
                {{each(prop, val) $data.items }}
                <div class="swiper-slide">

                    <blockquote>
                        <div class="info">
                            <strong>${val.title}</strong><span class="sep">-</span><span>${val.job}</span>
                        </div>
                        <p>
                            {{html val.description}}
                        </p>       
                        <div class="testimonials-rating"><span style="width:${parseInt(val.rating)*26 + (val.rating - parseInt(val.rating))*16}px"></span></div>
                    </blockquote>
                </div>
                {{/each}}
                {{/if}}

            </div>
        {LT}/div{GT}

        {{else $data.style == "testimonials09"}}
            <style class="build-css" data-class="swiper-${$data.style}">
            
.swiper-testimonials09 .swiper-thumbnail-pagination{
    max-width:380px;
    margin:0 auto;
}
.swiper-testimonials09 .swiper-thumbnail-pagination .swiper-slide{
    justify-content: center;
}
.swiper-testimonials09 .swiper-thumbnail-pagination .pic{
    overflow: hidden;
    border-radius: 50%;
    border:2px solid #FFF;
    display: inline-block;
}
.swiper-testimonials09 .swiper-thumbnail-pagination .pic img{
    border-radius: 50%;
}

.swiper-testimonials09 .swiper-container-main blockquote{
    border: none;
    font-style: normal;
    margin: 0;
    position: relative;
    z-index: 2;
}
.swiper-testimonials09 blockquote p{
    font-style: normal;
    font-size: 32px;
    color: inherit;
    line-height: 1.5;
}
.swiper-testimonials09 .info{
    display: block;
    padding-top: 20px;
    background-size: 80px;
    background-repeat: no-repeat;
    background-position: center center;
}
.swiper-testimonials09 .comma{
    width: 80px;
    height: 80px;
    pointer-events: none;
    position: absolute;
    bottom: 0;
    left: 50%;
    margin-left: -40px;
    opacity: .1;
    z-index: -1;
}
.swiper-testimonials09 .comma svg{
    fill:currentColor;
    width: 80px;
    height: 80px;
}
.swiper-testimonials09 .info strong{
    display: block;
    font-size: 22px;
    color: inherit;
    margin: 0 0 10px;
    font-weight: 400;
}
.swiper-testimonials09 .info span{
    display: block;
    font-size: 16px;
    color: inherit;
}
.swiper-testimonials09 .testimonials-rating{
    width: 130px;
    height: 16px;
    margin: 20px auto 30px;
    background: url('data:image/svg+xml;utf8,<svg _tmplitem="2" width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path _tmplitem="2" d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="%23ffd841" fill="none" ></path></svg>');
    background-size: 26px 16px;
}
.swiper-testimonials09 .testimonials-rating span{
    display: block;
    height: 100%;
    background: url('data:image/svg+xml;utf8,<svg _tmplitem="2" width="162" height="100" xmlns="http://www.w3.org/2000/svg"><path _tmplitem="2" d="M50,5 67,32 98,40 77,64 80,96 50,84 20,96 23,64 2,40 33,32 50,5" stroke-width="2" stroke="%23ffd841" fill="%23ffd841" ></path></svg>');
    background-size: 26px 16px;
}
.swiper-testimonials09 .swiper-button-next, .swiper-testimonials09 .swiper-button-prev{
    color: inherit;
}
.swiper-testimonials09 .swiper-container .swiper-button-next span, .swiper-testimonials09 .swiper-container .swiper-button-prev span{
    width: 18px;
    height: 18px;
}
@media only screen and (max-width:1400px) {
    .swiper-testimonials09 .swiper-container .swiper-button-next{
        right:-25px;
    }
    .swiper-testimonials09 .swiper-container .swiper-button-prev{
        left:-25px;
    }
}
@media only screen and (max-width:767px) {
    .swiper-testimonials09 blockquote p{
        font-size: 22px;
    }
    .swiper-testimonials09 .info strong{
        font-size: 16px;
        margin: 0 0 2px;
    }
    .swiper-testimonials09 .info span{
        font-size: 14px;
    }
}

            </style>
            <div class="swiper-${$data.style}">
                    {LT}div class="swiper-container swiper-thumbnail-pagination loading" data-effect="thumbnail" data-mousewheel="false" data-slidesperview="3" {{if $data.lazy}} data-lazy="true"{{/if}}{GT}
                    <div class="swiper-wrapper">
                        {{if $data.items}}
                        {{each(prop, val) $data.items }}
                        <div class="swiper-slide">
                        <div class="pic">
                            
                                {{if $data.lazy}}
                                {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                    <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
                                {{else}}
                                {LT}img alt="${val.title}" src="${val.single}" /{GT}
                                {{/if}}

                        </div>
                        </div>
                        {{/each}}
                        {{/if}}
                    </div>
                    {LT}/div{GT}
                    {LT}div class="swiper-container swiper-container-main loading" data-effect="fade" data-mousewheel="false" data-navigation="false" data-pagination="false" data-slidesperview="1"{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
                    <div class="swiper-wrapper">
                        {{if $data.items}}
                        {{each(prop, val) $data.items }}
                        <div class="swiper-slide">
                            <blockquote>
                            <div class="testimonials-rating"><span style="width:${parseInt(val.rating)*26 + (val.rating - parseInt(val.rating))*16}px"></span></div>
                                <p>
                                    {{html val.description}}
                                </p>
                                <footer>
                                    <span class="info">
                                        <strong>${val.title}</strong>
                                        <span>${val.job}</span>
                                    </span>
                                    <span class="comma"><svg width="200" height="200" viewBox='0 0 200 200' xmlns="http://www.w3.org/2000/svg"><path d="M68.377,14.109c7.473,9.407,11.214,23.516,11.214,42.327c0,38.111-12.3,70.187-36.902,96.233 c-4.828,4.827-10.129,7.236-15.918,7.236c-5.313,0-9.891-1.809-13.747-5.427c-3.866-3.618-5.788-7.835-5.788-12.662 c0-5.304,1.921-9.882,5.788-13.747c12.538-12.538,20.498-28.457,23.878-47.755c-10.616-0.961-19.424-5.065-26.411-12.3 C3.495,60.778,0,51.621,0,40.519c0-12.051,3.73-21.818,11.214-29.304C18.689,3.742,27.971,0,39.073,0 C51.124,0,60.891,4.704,68.377,14.109z M188.486,14.109c7.473,9.407,11.215,23.516,11.215,42.327 c0,38.111-12.3,70.187-36.902,96.233c-4.827,4.827-10.129,7.236-15.918,7.236c-5.313,0-9.891-1.809-13.747-5.427 c-3.866-3.618-5.787-7.835-5.787-12.662c0-5.304,1.921-9.882,5.787-13.747c12.538-12.538,20.498-28.457,23.878-47.755 c-10.616-0.961-19.424-5.065-26.411-12.3c-6.996-7.237-10.491-16.395-10.491-27.497c0-12.051,3.731-21.818,11.215-29.304 C138.799,3.742,148.08,0,159.183,0C171.233,0,181.003,4.704,188.486,14.109z"></path></svg></span>
                                </footer>
                            </blockquote>
                        </div>
                        {{/each}}
                        {{/if}}

                    </div>
                    {LT}/div{GT}

            </div>
            {{else $data.style == "testimonials10"}}
            <style class="build-css" data-class="swiper-${$data.style}" data-editor="true">
            .swiper-testimonials10{
                margin: auto;
            }
            .swiper-testimonials10 p{
                margin: 0 auto;
                font-style: normal;
                line-height: inherit;
                font-size: inherit;
            }
            .swiper-testimonials10 .swiper-slide{
                flex-direction: column;
                height: auto;
            }
            .swiper-testimonials10 .swiper-wrapper-overflow{
                padding-top: 0;
                padding-bottom: 0;
            }
            .swiper-testimonials10 .pic{
                width: 100px;
                height: 100px;
                border: 2px solid var(--accent-color);
                background: #ffffff;
                padding: 2px;
                border-radius: 50%;
                margin: 0 auto -50px auto;
                -webkit-box-shadow: 0px 4px 14px rgba(0,0,0,0.2);
                box-shadow: 0px 4px 14px rgba(0,0,0,0.2);
                z-index: 1;
                position: relative;
            }
            .swiper-testimonials10 .pic img {
                border-radius: 50%;
                max-width: 100%;
            }
            .swiper-testimonials10 .info{
                position: relative;
                padding: 50px 0 10px;
            }
            .swiper-testimonials10 .info strong{
                font-size: 20px;
                color: #333333;
            }
            .swiper-testimonials10 .info span{
                font-size: 16px;
                color: #787878;
            }
            .swiper-testimonials10 .info span.sep{
                margin: 0 4px;
            }
            .swiper-testimonials10 blockquote{
                border:none;
                margin: 0px;
                padding: 20px 20px 30px;
                text-align: center;
                background:#f1f3ff;
                font-style: normal;
                height: 100%;
                line-height: inherit;
            }
            .cell-active .swiper-testimonials10 blockquote.elm-active{
                background:#fff;
            }
            .swiper-testimonials10 .swiper-button-prev, .swiper-testimonials10 .swiper-button-next{
                display: flex;
                justify-content: center;
                align-items: center;
                width: 52px;
                height: 52px;
                margin-top: -1px;
                border-radius: 50%;
                color:var(--accent-color);
                background: #ffffff;
                -webkit-box-shadow: 0 0 10px rgba(0,0,0,.1);
                box-shadow: 0 0 10px rgba(0,0,0,.1);
                -webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
            }
            .swiper-testimonials10 .swiper-button-prev{
                left: 0;
                margin-left: -16px;
            }
            .swiper-testimonials10 .swiper-button-next{
                right: 0;
                margin-right: -16px;
            }
            .swiper-testimonials10 .swiper-button-prev span, .swiper-testimonials10 .swiper-button-next span{
                margin: 0;
                top: auto;
                left: auto;
                width: 11px;
                height: 11px;
                border-color:var(--accent-color);
                -webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
            }
            .swiper-testimonials10 .swiper-button-prev span{
                -webkit-transform: rotate(-45deg) translate3d(25%,25%,0);
                transform: rotate(-45deg) translate3d(25%,25%,0);
            }
            .swiper-testimonials10 .swiper-button-next span{
                -webkit-transform: rotate(135deg) translate3d(25%,25%,0);
                transform: rotate(135deg) translate3d(25%,25%,0);
            }
            .swiper-testimonials10 .swiper-button-next:hover, .swiper-testimonials10 .swiper-button-prev:hover{
                color: #ffffff;
                background:var(--accent-color);
            }
            .swiper-testimonials10 .swiper-button-prev:hover span, .swiper-testimonials10 .swiper-button-next:hover span{
                border-color: #ffffff;
            }
            .swiper-testimonials10 .social{
            margin-top: 18px;
            }
            .swiper-testimonials10 .social > * {
                margin: 0px 7px 8px;

            }
            .swiper-testimonials10 .social,
            .swiper-testimonials10 .social a,
            .swiper-testimonials10 .social a:link{
                color:inherit
            }
            .swiper-testimonials10 .social a:hover{
                color:var(--accent-color);
            }
            .swiper-testimonials10 .swiper-pagination{
                margin-top:30px;
            }
            .swiper-testimonials10 .swiper-pagination-bullet{
                opacity: .1;
            }
            .swiper-testimonials10 .swiper-pagination-bullet.swiper-pagination-bullet-active{
                opacity: 1;
            }
            @media only screen and (max-width:767px) {
                .swiper-testimonials10 p{
                    font-size: 16px;
                    line-height: 26px;
                }
                .swiper-testimonials10 .info strong{
                    font-size: 16px;
                }
                .swiper-testimonials10 .info span{
                    font-size: 14px;
                }
            }
            </style>        
            {LT}div class="swiper-container swiper-${$data.style} loading" data-navigation="false" data-slidesperview="1" data-spaceBetween="0" {{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
                <div class="swiper-wrapper">
                    {{if $data.items}}
                    {{each(prop, val) $data.items }}
                    <div class="swiper-slide">
                        <div class="pic">
                                {{if $data.lazy}}
                                {LT}img alt="${val.title}" data-src="${val.single}" src="data:image/svg+xml,%3Csvg viewBox='0 0 ${singlewidth} ${singleheight}' wdith='${singlewidth}' xmlns='http://www.w3.org/2000/svg'/%3E" width="${singlewidth}" class="swiper-lazy"{GT}
                                    <div class="swiper-lazy-preloader swiper-lazy-preloader-black"></div>
                                {{else}}
                                {LT}img alt="${val.title}" src="${val.single}" /{GT}
                                {{/if}}
                        </div>
                        <blockquote>
                            <div class="info">
                                <strong>${val.title}</strong>
                            </div>
                            <p>
                                {{html val.description}}
                            </p>   
                            <div class="social">
                            {{if val.iconlink}} <a href="<%= SkinPath %>${val.iconlink}" target="${linktarget}">{{/if}}
                            {{if val.icon}}
                                {{if val.icon.indexOf("sico")!=-1}}
                                <i class="${val.icon} mod-icon"><svg>{LT}use xlink:href="#${val.icon.split(" ")[1]}"{GT}{LT}/use{GT}</svg> </i>
                                {{else val.icon.indexOf("icon-svg")!=-1}}
                                <i class="${val.icon}"> {LT}svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="${val.icon.split("icon-svg icon-")[1]}"{GT}{LT}/svg{GT}</i>
                                {{/if}}
                            {{/if}}                              
                            {{if val.iconlink}}</a>{{/if}}
                            {{if val.iconlink2}} <a href="<%= SkinPath %>${val.iconlink2}" target="${linktarget}">{{/if}}
                            {{if val.icon2}}
                                {{if val.icon2.indexOf("sico")!=-1}}
                                <i class="${val.icon2} mod-icon"><svg>{LT}use xlink:href="#${val.icon2.split(" ")[1]}"{GT}{LT}/use{GT}</svg> </i>
                                {{else val.icon2.indexOf("icon-svg")!=-1}}
                                <i class="${val.icon2}"> {LT}svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="${val.icon2.split("icon-svg icon-")[1]}"{GT}{LT}/svg{GT}</i>
                                {{/if}}
                            {{/if}} 
                            {{if val.iconlink2}}</a>{{/if}}
                            {{if val.iconlink3}}<a href="<%= SkinPath %>${val.iconlink3}" target="${linktarget}">{{/if}}
                            {{if val.icon3}}
                                {{if val.icon3.indexOf("sico")!=-1}}
                                <i class="${val.icon3} mod-icon"><svg>{LT}use xlink:href="#${val.icon3.split(" ")[1]}"{GT}{LT}/use{GT}</svg> </i>
                                {{else val.icon3.indexOf("icon-svg")!=-1}}
                                <i class="${val.icon3}"> {LT}svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="${val.icon3.split("icon-svg icon-")[1]}"{GT}{LT}/svg{GT}</i>
                                {{/if}}
                            {{/if}} 
                            {{if val.iconlink3}}</a>{{/if}}
                            </div>
                            

                        </blockquote>
                    </div>
                    {{/each}}
                    {{/if}}

                </div>
            {LT}/div{GT}

       {{/if}}

    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("swiper", "${moduleid}", "testimonials")
    </script>

</div>
