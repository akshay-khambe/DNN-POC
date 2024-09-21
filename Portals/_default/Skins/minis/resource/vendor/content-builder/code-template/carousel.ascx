<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="<%= SkinPath %>#">Carousel Item</a></li>
    <li><a href="<%= SkinPath %>#">Carousel Options</a></li>
</ul>
<div class="tab-content">
    <div class="tab-pane active">

        {{if $data.style == "carousel01" || $data.style == "carousel02" || $data.style == "carousel03" || $data.style == "carousel08"}}
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
                            {{if $data.style == "carousel08"}}
                            <div class="form-group">
                                <label class="control-label">Sub Title:</label>
                                <div class="control-cont">
                                    <input name="subtitle" type="text" class="dynamicOptions" />
                                </div>
                            </div>
                            {{/if}}
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


                            {{if $data.style == "carousel02"}}
                            <div class="form-group">
                                <label class="control-label">Subtitle:</label>
                                <div class="control-cont">
                                    <input name="subtitle" type="text" class="dynamicOptions" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Description:</label>
                                <div class="control-cont">
                                    <textarea rows="5" name="description" class="dynamicOptions"></textarea>
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
        {{else $data.style == "carousel04"}}
            <div class="form-group">
                <label class="control-label">Title 01</label>
                <div class="control-cont">
                    <input name="text01" type="text" class="dnnOptions" value="${text01}" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Description 01</label>
                <div class="control-cont">
                    <input name="description01" type="text" class="dnnOptions" value="${description01}" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Image 01</label>
                <div class="control-cont">
    
                    <div class="slideform singleImage">
                        <div class="img"></div>
                        <div class="filebuttom">
                            <button class="fileImage"></button>
                        </div>
                        <input name="single01" type="hidden" class="dnnOptions" value="${single01}" />
                        <div class="loading">
                            <div class="dot"></div>
                            <div class="dot"></div>
                            <div class="dot"></div>
                        </div>
                    </div>
    
                </div>
            </div>

            <div class="form-group">
                <label class="control-label">Title 02</label>
                <div class="control-cont">
                    <input name="text02" type="text" class="dnnOptions" value="${text02}" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Description 02</label>
                <div class="control-cont">
                    <input name="description02" type="text" class="dnnOptions" value="${description02}" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Image 02</label>
                <div class="control-cont">
    
                    <div class="slideform singleImage">
                        <div class="img"></div>
                        <div class="filebuttom">
                            <button class="fileImage"></button>
                        </div>
                        <input name="single02" type="hidden" class="dnnOptions" value="${single02}" />
                        <div class="loading">
                            <div class="dot"></div>
                            <div class="dot"></div>
                            <div class="dot"></div>
                        </div>
                    </div>
    
                </div>
            </div>

            <div class="form-group">
                <label class="control-label">Title 03</label>
                <div class="control-cont">
                    <input name="text03" type="text" class="dnnOptions" value="${text03}" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Description 03</label>
                <div class="control-cont">
                    <input name="description03" type="text" class="dnnOptions" value="${description03}" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Image 03</label>
                <div class="control-cont">
    
                    <div class="slideform singleImage">
                        <div class="img"></div>
                        <div class="filebuttom">
                            <button class="fileImage"></button>
                        </div>
                        <input name="single03" type="hidden" class="dnnOptions" value="${single03}" />
                        <div class="loading">
                            <div class="dot"></div>
                            <div class="dot"></div>
                            <div class="dot"></div>
                        </div>
                    </div>
    
                </div>
            </div>

            <div class="form-group">
                <label class="control-label">Title 04</label>
                <div class="control-cont">
                    <input name="text04" type="text" class="dnnOptions" value="${text04}" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Description 04</label>
                <div class="control-cont">
                    <input name="description04" type="text" class="dnnOptions" value="${description04}" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Image 04</label>
                <div class="control-cont">
    
                    <div class="slideform singleImage">
                        <div class="img"></div>
                        <div class="filebuttom">
                            <button class="fileImage"></button>
                        </div>
                        <input name="single04" type="hidden" class="dnnOptions" value="${single04}" />
                        <div class="loading">
                            <div class="dot"></div>
                            <div class="dot"></div>
                            <div class="dot"></div>
                        </div>
                    </div>
    
                </div>
            </div>
        {{else $data.style == "carousel05" || $data.style == "carousel07"}}
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
                            </div>
                        </div>
                        <div class="dynamic-footer">
                            <div class="dynamic-add">+</div>
                            <input name="items" type="text" class="dnnOptions json" value="${ $data.items && JSON.stringify(items)}" />
                        </div>
                    </div>
                </div>
            </div>
        {{else $data.style == "carousel06"}}
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
                                    <label class="control-label">Description:</label>
                                    <div class="control-cont">
                                        <textarea rows="5" name="description" class="dynamicOptions"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Pricing:</label>
                                    <div class="control-cont">
                                        <input name="pricing" type="text" class="dynamicOptions" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Button:</label>
                                    <div class="control-cont">
                                        <input name="butText" type="text" class="dynamicOptions" ${butText} data-default="MORE+" id="butText{id}" />
                                    </div>
                                </div>
                                <div class="form-group conditional"  data-condition="#butText{id}">
                                    <label class="control-label">Link:</label>
                                    <div class="control-cont">
                                        <input name="link" type="text" class="dynamicOptions extend-url" value="${link}" />
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
            {{if $data.style == "carousel01" || $data.style == "carousel02"  || $data.style == "carousel05" || $data.style == "carousel06" || $data.style == "carousel07" || $data.style == "carousel08"}}
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
            {{if $data.style == "carousel01" || $data.style == "carousel02" || $data.style == "carousel06" || $data.style == "carousel07" || $data.style == "carousel08"}}
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
            {{/if}}
           
    </div>

</div>


<!--build HTML-->
         
<div class="buildHTML">
    {{if $data.style == "carousel01"}}
    <style class="build-css" data-class="carousel01">

        .carousel01 .item{
            padding: 0px 15px;
        }
        .carousel01 .item .pic{
            position: relative;
        }
        .carousel01 .item img{
            vertical-align: middle;
        }
        .carousel01 .content{
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
        }
        .carousel01 .item .pic::after{
            content: "";
            position: absolute;
            top: 0;
            left:0;
            bottom: 0;
            right: 0;
            background-color:var(--accent-color);
            opacity: 0;
            -webkit-transition: opacity ease-in 300ms;
            transition: opacity ease-in 300ms;
        }
        .carousel01 .content .title{
            color: #FFF;
        }
        .carousel01 .icon{
            width: 40px;
            height: 40px;
            background-color: #FFF;
            border-radius: 50%;
            margin: 17px 0;
            display: inline-block;
            vertical-align: middle;
            color:var(--accent-color);
            position: relative;
            cursor: pointer;
            pointer-events: none;
        }
        .carousel01 .link-full{
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
        }
        .carousel01 .icon::after{
            content: "";
            height: 17px;
            position: absolute;
            border-left: 1px solid currentColor;
            left: 50%;
            top: 50%;
            margin: -9px 0 0 -1px;
        }
        .carousel01 .icon::before{
            content: "";
            width: 17px;
            position: absolute;
            border-bottom: 1px solid currentColor;
            left: 50%;
            top: 50%;
            margin: -1px 0 0 -9px;
        }
        .carousel01 .item:hover .content{
            opacity: 1;
        }
        .carousel01 .item:hover .pic::after{
            opacity: .8;
        }
    </style>
    {{else $data.style == "carousel02"}}
        <style class="build-css" data-class="carousel02">
            .carousel02{
                position: relative;
                margin-left: -15px;
                margin-right: -15px;
                width: calc(100% + 30px);
            }
            .carousel02 .item{
                padding: 0px 15px;
            }
            .carousel02 .pic{
                position: relative;
                text-align: left;
                margin-bottom: 32px;
            }
            .carousel02 .pic img{
                vertical-align: middle;
            }
            .carousel02 .pic .link{
                position: absolute;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
            }
            .carousel02 .content{
                text-align: left;
            }
            .carousel02 .title{
                margin: 0 0 18px;
                font-weight: bold;
            }
            .carousel02 .subtitle{
                display: inline-block;
                margin-bottom: 7px;
                font-size: 16px;
                line-height: 28px;
            }
            .carousel02 .title a{
                color: inherit;
            }
            .carousel02 .swiper-pagination{
                margin-top: -10px;
                padding: 0 15px;
                text-align: left;
            }
            .carousel02 .swiper-pagination-bullet{
                width: 12px;
                height: 12px;
                border-radius: 12px;
                -webkit-transition: width ease-in 200ms;
                transition: 		width ease-in 200ms;
            }
            .carousel02 .swiper-pagination-bullet-active{
                width: 24px;
            }
        </style>
    {{else $data.style == "carousel03"}}
    <style class="build-css" data-class="carousel03">
        .carousel03{
            position: relative;
        }
        .carousel03 .swiper-wrapper-overflow{
            padding-top: 0;
            padding-bottom: 50px;
            width: calc(100% - 40px );
        }
        .carousel03 .swiper-slide .item{
            width: 100%;
            text-align: left;
        }
        .carousel03 .swiper-slide .pic{
            position: relative;
            display: inline-block;
        }
        .carousel03 .swiper-slide .pic img{
            max-width: 100%;
        }
        .carousel03 .swiper-slide .link{
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
        }
        .carousel03 .swiper-pagination{
            width: 146px;
            height: 110px;
            background-color: #58ddc3;
            position: absolute;
            right: 0;
            bottom: 0;
            left: auto;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #ffffff;
            font-size: 22px;
            font-weight: 600;
        }
        .carousel03 .swiper-button-prev,
        .carousel03 .swiper-button-next{
            position: absolute;
            top: auto;
            bottom: 42px;
            z-index: 11;
            width: 30px;

            display: flex;
            justify-content: center;
            align-items: center;
        }
        .carousel03 .swiper-button-prev{
            left: auto;
            right: 106px;
        }
        .carousel03 .swiper-button-next{
            right: 10px;
        }
        .carousel03 .swiper-button-next span,
        .carousel03 .swiper-button-prev span{
            margin: 0;
            top: auto;
            left: auto;
            width: 11px;
            height: 11px;
            border-color: #ffffff;

            -webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
            transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
        }
        .carousel03 .swiper-button-next span::before,
        .carousel03 .swiper-button-prev span::before{
            content: '';
            display: block;
            width: 20px;
            height: 1px;
            background-color: #ffffff;
            transform: rotate(-135deg) translate3d(-3px,-7px,0);
        }
    </style>
    {{else $data.style == "carousel04"}}
    <style class="build-css" data-class="carousel04">
        .custom-module[data-style="carousel04"] {
            position: relative;
            max-width: 1170px;
            margin: 0 auto;
        }
        .carousel04{
            max-width: 352px;
            margin: 0 auto;
        }
        .carousel04 .carousel04-bg {
            text-align: center;
        }
        .carousel04 .carousel04-bg > div.bg_image{
            position: relative;
            display: inline-block;
            border-radius: 38px;
            overflow: hidden;
            vertical-align: bottom;
        }
        .carousel04 .swiper-wrapper-overflow{
            position: absolute;
            top: 6px;
            right: 6px;
            bottom: 6px;
            left: 6px;
            padding: 0;
            border-radius: 38px;
            overflow: hidden;
        }
        .carousel04.swiper-container .swiper-slide .item{
            max-width: 352px;
            width: 100%;
            background-position: center center;
            background-size: cover;
        }
        .carousel04.swiper-container .swiper-slide .item div{
            width: calc(100% - 12px);
            overflow: hidden;
            background-position: center center;
            background-size: cover;
            height: 100%;
        }

        .carousel04 + .carousel04-buttonBox{
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            top: 0;
            z-index: 1;
            pointer-events: none;
        }
        .custom-module[data-style="carousel04"] .carousel04_line{
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            text-align: center;
        }
        .custom-module[data-style="carousel04"] .carousel04_line > img{
            transform: translate(33px,12px);
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo{
            position: absolute;
            width: calc( (100% - 352px)/2 );
            max-width: 360px;
            height: 50%;
            pointer-events: all;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(1){
            top: 0;
            left: 0;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(2){
            top: 0;
            right: 0;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(3){
            bottom: 0;
            left: 0;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(4){
            bottom: 0;
            right: 0;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo > .box{
            position: relative;
            max-width: 370px;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(1) .box{
            padding-right: 60px;
            top: 40%;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(2) .box{
            margin-left: auto;
            padding-left: 60px;
            top: 60%;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(3) .box{
            padding-right: 60px;
            top: 25%;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(4) .box{
            margin-left: auto;
            padding-left: 60px;
            top: 30%;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo > .box .dot{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 26px;
            height: 26px;
            color: #ffffff;
            background: transparent;
            border-radius: 50%;
            position: absolute;
            margin: 0;
            animation: none;
            -webkit-animation: none;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo > .box .dot span{
            width: 14px;
            height: 14px;
            display: block;
            border-radius: 50%;
            background: #ffffff;
            -webkit-transition: all 0.2s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
            transition: all 0.2s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;

        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(1) .box .dot{
            right: 5px;
            top: 40px
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(2) .box .dot{
            left: 6px;
            top: 11px;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(3) .box .dot{
            right: 32px;
            top: 9px;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(4) .box .dot{
            left: -9px;
            top: 21px;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo.active > .box .dot{
            
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo.active > .box .dot span{
            width: 10px;
            height: 10px;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo > .box .title{
            color: #fff;
            margin-bottom: 18px;
        }
        @media only screen and (min-width: 768px) {
            .carousel04 + .carousel04-buttonBox > div.slideTo > .box .title{
                max-width: 200px;
            }  
        }

        .carousel04 + .carousel04-buttonBox > div.slideTo > .box .info{
            color: #fff;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo > .box .dot::before{
            content:"";
            position:absolute;
            top:8px;
            left:8px;
            right:8px;
            bottom:8px;
            border: 2px solid #fff;
            border-radius: 50%;
            -webkit-transition: all 0.3s cubic-bezier(0,0,0.58,1) 0s;
            transition: all 0.3s cubic-bezier(0,0,0.58,1) 0s;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo.active > .box .dot::before{
            top:0;
            left:0;
            right:0;
            bottom:0;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo.active > .box .dot::after,
        .carousel04 + .carousel04-buttonBox > div.slideTo.active > .box .dot span::before,
        .carousel04 + .carousel04-buttonBox > div.slideTo.active > .box .dot span::after{
            content:"";
            position:absolute;
            top:0;
            left:0;
            right:0;
            bottom:0;
            box-shadow: 0px 0px 2px 1px #ffffff;
            border-radius: 50%;
            opacity: 0.2;
            z-index: -1;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo.active > .box .dot::after{
            -webkit-animation: carousel04-dot 2s infinite 0.15s;
            animation: carousel04-dot 2s infinite 0.15s;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo.active > .box .dot span::before{
            -webkit-animation: carousel04-dot 2s infinite 0.25s;
            animation: carousel04-dot 2s infinite 0.25s;
        }
        .carousel04 + .carousel04-buttonBox > div.slideTo.active > .box .dot span::after{
            -webkit-animation: carousel04-dot 2s infinite 0.5s;
            animation: carousel04-dot 2s infinite 0.5s;
        }
        @-webkit-keyframes carousel04-dot {
            0% {
                opacity: .8;
                -webkit-transform: scale(1);
                transform: scale(1);
            }
            75% {
                opacity: 0;
                -webkit-transform: scale(1.5);
                transform: scale(1.5);
            }
            100% {
                opacity: 0;
                -webkit-transform: scale(1.5);
                transform: scale(1.5);
            } 
        }
        @keyframes carousel04-dot {
            0% {
                opacity:.8;
                -webkit-transform: scale(1);
                transform: scale(1);
            }
            75% {
                opacity: 0;
                -webkit-transform: scale(1.5);
                transform: scale(1.5);
            }
            100% {
                opacity: 0;
                -webkit-transform: scale(1.5);
                transform: scale(1.5);
            }
        }
        @media only screen and (max-width: 1199px) {
            .custom-module[data-style="carousel04"] .carousel04_line{
                display:none;
            }

            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(1) .box .dot,
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(3) .box .dot{
                right: 15px;
            }
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(2) .box .dot,
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(4) .box .dot{
                left: 15px;
            }
        }
        @media only screen and (max-width: 991px) {
            .carousel04 + .carousel04-buttonBox > div.slideTo > .box{
                top: 0 !important;
            }
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(1) .box,
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(3) .box{
                padding-right: 40px;
            }
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(2) .box,
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(4) .box{
                padding-left: 40px;
            }
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(1) .box .dot,
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(3) .box .dot{
                right: 14px;
            }
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(2) .box .dot,
            .carousel04 + .carousel04-buttonBox > div.slideTo:nth-child(4) .box .dot{
                left: 10px;
            }
        }
        @media only screen and (max-width: 767px) {
            .carousel04 + .carousel04-buttonBox{
                position: relative;
                margin-top: 30px;
            }
            .carousel04 + .carousel04-buttonBox > div.slideTo{
                position: absolute;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                width: 100%;
                max-width: initial;
                height: initial;
                opacity: 0;
                -webkit-transition: opacity 0.2s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
                transition: opacity 0.2s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
            }
            .carousel04 + .carousel04-buttonBox > div.slideTo.active{
                opacity: 1;
            }
            .carousel04 + .carousel04-buttonBox > div.slideTo > .box{
                max-width: 100%;
                padding-left: 0 !important;
                padding-right: 0px!important;
            }
            .carousel04 + .carousel04-buttonBox > div.slideTo > .box .dot{
                display: none;
            }

        }
    </style>
    {{else $data.style == "carousel05"}}
     <style class="build-css" data-class="carousel05">
         .carousel05 .item{
            padding: 0;
         }
         .carousel05 .swiper-pagination-bullet{
            width: 12px;
            height: 12px;
            border-radius: 12px;
            -webkit-transition: width ease-in 200ms;
            transition: 		width ease-in 200ms;
        }
        .carousel05 .swiper-pagination-bullet-active{
            width: 24px;
        }
        .carousel05 .swiper-pagination{
            margin:42px 0 30px
        }
        .is-light-text .carousel05 .swiper-pagination-bullet:not(.swiper-pagination-bullet-active){
            background-color: #e5e5e5;
            opacity: 1;    
        }
     </style>
    {{else $data.style == "carousel06"}}
     <style class="build-css" data-class="carousel06">
        .carousel06 .swiper-slide{
            padding: 0 15px;
            height: auto;
        }
        .carousel06 .swiper-slide .item{
            display: flex;
            flex-direction: column;
            margin-left: auto;
            margin-right: auto;
            background: #ffffff;
            border: 1px solid #ebebeb;
            border-radius: 3px;
            padding: 30px 30px 60px;
            transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
        }
        .carousel06 .swiper-slide .item .pic{
            position: relative;
            flex-shrink: 0;
        }
        .carousel06 .swiper-slide .item .content{
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }
        .carousel06 .swiper-slide .item .titleBox{
            font-size: 0;
            margin-bottom: 23px;
            flex-shrink: 0;
        }
        .carousel06 .swiper-slide .item .titleBox::after{
            content: '';
            display: inline-block;
            width: 20px;
            height: 1px;
            background:var(--accent-color);
        }
        .carousel06 .swiper-slide .item .title{
            color: #272727;
        }
        .carousel06 .swiper-slide .item .info{
            color: #787878;
            flex-shrink: 0;
            flex-grow: 1;
        }
        .carousel06 .swiper-slide .item .pricingBox{
            display: flex;
            flex-direction: row-reverse;
            justify-content: center;
            align-items: center;
            flex-shrink: 0;
        }
        .carousel06 .swiper-slide .item .pricingBox .pricing{
            font-size: 20px;
            font-weight: 700;
            color:var(--accent-color3);
        }
        .carousel06 .swiper-slide .item .pricingBox .link{
            font-size: 16px;
            line-height: 20px;
            height: 42px;
            color: #ffffff;
            background:var(--accent-color);
            text-decoration: none;
            padding: 11px 26px;
            border-radius: 1000px;
        }
        .carousel06 .swiper-slide .item .pricingBox .pricing + .link{
            margin-right: 10px;
        }
        .carousel06 .swiper-pagination{
            margin-top: 13px;
            margin-bottom: 10px;
        }
        .carousel06 .swiper-pagination-bullet-active{
            background:var(--accent-color);
        }
        .carousel06 .swiper-slide .item:hover{
            -webkit-box-shadow: 0px 0px 15px rgba(0,0,0,0.17);
            box-shadow: 0px 0px 15px rgba(0,0,0,0.17);
        }
         
        .carousel06 .swiper-pagination ~ .swiper-button-next,
        .carousel06 .swiper-pagination ~ .swiper-button-prev{
            margin-top: -33px;
        }
     </style>
    {{else $data.style == "carousel07"}}
    <style class="build-css" data-class="carousel07">
    .carousel07 .swiper-bg{
        width: 296px;
        position: absolute;
        top: 17px;
        left: 50%;
        height: 594px;
        margin-left: -148px;
        background: url("/Portals/_default/ContentBuilder/minis-page/app02/carousel07-bg.png") no-repeat center;
        background-size: contain;
        z-index: 10;
    }
    .carousel07 .swiper-slide{
        justify-content: center;
        min-width: 296px;
    }
    .carousel07 .pic{
        display: inline-block;
        border-radius: 25px;
        overflow: hidden;
        width: 265px;
        height: 568px;
        box-shadow: 0 20px 40px rgba(0,0,0,0.4);
    }
    .carousel07 .swiper-wrapper-overflow{
        padding-bottom: 60px;
    }
    .carousel07.swiper-container .swiper-button-next span, 
    .carousel07.swiper-container .swiper-button-prev span{
        width: 40px;
        height: 40px;
        border-width: 3px;
        margin: -20px 0 0 -20px;
        border-color: #787878;
        transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
    }
    .carousel07.swiper-container .swiper-button-next:hover span, 
    .carousel07.swiper-container .swiper-button-prev:hover span{
        border-color:var(--accent-color2);
   }
    .carousel07.swiper-container .swiper-button-next,
    .carousel07.swiper-container .swiper-button-prev{
        width: 60px;
        height: 60px;
        margin-top: -60px;
    }
    .carousel07.swiper-container .swiper-button-next{
        right: 50%;
       margin-right: -215px;
    }
    .carousel07.swiper-container .swiper-button-prev{
        left: 50%;
        margin-left: -215px;
    }
    </style>
     {{else $data.style == "carousel08"}}
     <style class="build-css" data-class="carousel08">
    .carousel08 .item{
        padding: 0px 15px;
    }
    .carousel08 .item .pic{
        position: relative;
    }
    .carousel08 .item img{
        vertical-align: middle;
    }
    .carousel08 .item .link{
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        z-index: 2;
    }
    .carousel08 .item .pic::after{
        content: "";
        position: absolute;
        top: 0;
        left:0;
        bottom: 0;
        right: 0;
        background-color:var(--accent-color);
        opacity: 0;
        -webkit-transition: opacity ease-in 300ms;
        transition: opacity ease-in 300ms;
    }

    .carousel08 .icon{
        width: 40px;
        height: 40px;
        top: 50%;
        left: 50%;
        background-color: #FFF;
        border-radius: 50%;
        margin:-20px 0 0 -20px;
        display: inline-block;
        vertical-align: middle;
        color:var(--accent-color);
        position: absolute;
        cursor: pointer;
        pointer-events: none;
        background-color: #ffffff;
        z-index: 1;
        opacity: 0;
        transition:all 300ms ease-in;
    }
    .carousel08 .icon::after{
        content: "";
        height: 17px;
        position: absolute;
        border-left: 1px solid currentColor;
        left: 50%;
        top: 50%;
        margin: -9px 0 0 -1px;
    }
    .carousel08 .icon::before{
        content: "";
        width: 17px;
        position: absolute;
        border-bottom: 1px solid currentColor;
        left: 50%;
        top: 50%;
        margin: -1px 0 0 -9px;
    }
    .carousel08 .item .pic:hover .icon{
        opacity: 1;
    }
    .carousel08 .item .pic:hover::after{
        opacity: .8;
    }
    .carousel08 .item .title{
        margin: 33px 0 12px;
    }
    .carousel08 .item .subtitle{
        font-size: 18px;
        color: #787878;
        font-style: italic;
        font-weight: 400;
        margin: 0;
    }

    .carousel08 .swiper-pagination .swiper-pagination-bullet{
	width: 15px;
	height: 15px;
	background-color: #dcdcdc;
	opacity: 1;
	background-clip: content-box;
	color:var(--accent-color);
	border: 0px solid currentColor;
    }
    .carousel08 .swiper-pagination .swiper-pagination-bullet.swiper-pagination-bullet-active{
        color:var(--accent-color);
        background-color:currentColor;
        border-width:1px;
        padding: 2px;
    }
    .carousel08 .swiper-container .swiper-button-next, 
    .carousel08 .swiper-container .swiper-button-prev{
        width: 40px;
        height: 40px;
        margin-top: 20px;
    }
    .carousel08 .swiper-container .swiper-button-next span, 
    .carousel08 .swiper-container .swiper-button-prev span{
        width: 32px;
        height: 32px;
    }


    </style>
    {{/if}}


    {{if $data.style == "carousel01" || $data.style == "carousel02" || $data.style == "carousel06" || $data.style == "carousel08"}}
        {LT}div class="swiper-container carousel-swiper ${style} loading" {{if !$data.pagination}}data-pagination="false"{{/if}}{{if !$data.navigation}} data-navigation="false"{{/if}} data-slidesperview="[${displayxxl},${displayxl},${displayl},${displaym},${displays},${displayxs}]"{{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
    {{else $data.style == "carousel03"}}
        {LT}div class="swiper-container carousel-swiper ${style} loading" data-pagination="fraction" data-slidesperview="1" {{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
    {{else $data.style == "carousel05"}}
    {LT}div class="swiper-container carousel-swiper ${style} loading" {{if !$data.pagination}}data-pagination="false"{{/if}}{{if !$data.navigation}} data-navigation="false"{{/if}} data-slidesperview="1"{{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
    {{else $data.style == "carousel07"}}
    {LT}div class="swiper-container carousel-swiper ${style} loading" data-centeredSlides="true" {{if !$data.pagination}}data-pagination="false"{{/if}}{{if !$data.navigation}} data-navigation="false"{{/if}} data-slidesperview="[${displayxxl},${displayxl},${displayl},${displaym},${displays},${displayxs}]"{{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
    <div class="swiper-bg"></div>
    {{/if}}

    {{if $data.style != "carousel04"}}
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

                                {{if $data.style == "carousel02" || $data.style == "carousel03"  || $data.style == "carousel08"}}
                                    {{if val.linktype == "linkurl"}}     
                                    <a class="link" href="<%= SkinPath %>${val.link}" title="${val.title}"><span></span></a>
                                    {{if $data.style == "carousel08"}}<span class="icon"></span>{{/if}}
                                    {{else val.linktype == "image"}}
                                    <a class="link is-lightbox" data-ilightbox="image" href="<%= SkinPath %>${val.singlebig}" title="${val.title}"><span></span></a>
                                    {{if $data.style == "carousel08"}}<span class="icon"></span>{{/if}}
                                    {{/if}}
                                {{/if}}
                              
                            </div>
                            {{/if}}
                            {{if $data.style == "carousel01" || $data.style == "carousel02" || $data.style == "carousel06" || $data.style == "carousel08"}}
                            <div class="content">
                                {{if $data.style == "carousel01"}}
                                    {{if val.linktype == "linkurl"}}     
                                        <a class="link-full" href="<%= SkinPath %>${val.link}" title="${val.title}"></a>
                                        {{else val.linktype == "image"}}
                                        <a class="link-full is-lightbox" data-ilightbox="image" href="<%= SkinPath %>${val.singlebig}" title="${val.title}"></a>
                                    {{/if}}
                                    <span class="icon"></span>
                                    <h6 class="title">${val.title}</h6>
                                {{else $data.style == "carousel02"}}
                                    <span class="subtitle color-accent">${val.subtitle}</span>
                                    {{if val.linktype == "linkurl"}}     
                                        <h6 class="title"><a href="<%= SkinPath %>${val.link}" title="${val.title}">${val.title}</a></h6>
                                    {{else val.linktype == "image"}}
                                        <h6 class="title"><a class="is-lightbox" data-ilightbox="image" href="<%= SkinPath %>${val.singlebig}" title="${val.title}">${val.title}</a></h6>
                                    {{else}}
                                        <h6 class="title">${val.title}</h6>
                                    {{/if}}
                                    <p>${val.description}</p>

                                {{else $data.style == "carousel06"}}
                                    <div class="titleBox">
                                        <h6 class="title">${val.title}</h6>
                                    </div>
                                    <p class="info">${val.description}</p>
                                    {{if val.butText != "" || val.pricing != ""}}
                                        <div class="pricingBox">
                                            {{if val.pricing != "" }}
                                            <div class="pricing">${val.pricing}</div>
                                            {{/if}}
                                            {{if val.butText != "" }}
                                            <a class="link" href="<%= SkinPath %>${val.link}" title="${val.title}">${val.butText}</a>
                                            {{/if}}
                                        </div>
                                    {{/if}}
                                {{else $data.style == "carousel08"}}
                                    <h6 class="title">${val.title}</h6>
                                    <h6 class="subtitle">${val.subtitle}</h6>
                                {{/if}}
                            </div>
                            {{/if}}

                        </div>
                    </div>
                {{/each}}
            {{/if}}
        </div>

    {LT}/div{GT}
    
    {{/if}} 

    {{if $data.style == "carousel04"}}
        <div class="carousel04_line">
            <img class="img-Lazy" src="/Portals/_default/ContentBuilder/minimalist/minis-shortcode/carousel/carousel04-line.png" />
        </div>
        {LT}div id="swiper-${moduleid}" class="swiper-container carousel-swiper ${style} loading" data-pagination="false" data-navigation="false" data-slidesperview="1" {{if $data.lazy}} data-lazy="true"{{/if}}{{if $data.autoplay}} data-autoplay='{"delay":${delay}}'{{/if}}{GT}
            <div class="carousel04-bg">
                <div class="bg_image shadow-xxl">
                    <img class="img-Lazy " src="/Portals/_default/ContentBuilder/minimalist/minis-shortcode/carousel/carousel04-bg.png" />
                </div>
            </div>
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="item">
                            <div style="background-image: url('${single01}')"></div>
                    </div>
                </div>
                <div class="swiper-slide">
                        <div class="item">
                            <div style="background-image: url('${single02}')"></div>
                        </div>
                </div>
                <div class="swiper-slide">
                        <div class="item">
                            <div style="background-image: url('${single03}')"></div>
                        </div>
                </div>
                <div class="swiper-slide">
                        <div class="item">
                            <div style="background-image: url('${single04}')"></div>
                        </div>
                </div>
            </div>
        {LT}/div{GT}
        <div id="swiper-${moduleid}-button" class="carousel04-buttonBox">
                <div class="slideTo active" data-slide="0">
                    <div class="box">
                        <div class="dot"><span></span></div>
                        <h6 class="title">${text01}</h6>
                        <p class="info">${description01}</p>
                    </div>
                </div>
                <div class="slideTo" data-slide="1">
                    <div class="box">
                        <div class="dot"><span></span></div>
                        <h6 class="title">${text02}</h6>
                        <p class="info">${description02}</p>
                    </div>
                </div>
                <div class="slideTo" data-slide="2">
                    <div class="box">
                        <div class="dot"><span></span></div>
                        <h6 class="title">${text03}</h6>
                        <p class="info">${description03}</p>
                    </div>
                </div>
                <div class="slideTo" data-slide="3">
                    <div class="box">
                        <div class="dot"><span></span></div>
                        <h6 class="title">${text04}</h6>
                        <p class="info">${description04}</p>
                    </div>
                </div>
        </div>
    {{/if}}

    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("swiper", "${moduleid}","carousel")
    </script>

</div>
