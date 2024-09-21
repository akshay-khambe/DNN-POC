<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="<%= SkinPath %>#">Marker Item</a></li>
    <li><a href="<%= SkinPath %>#">Options</a></li>
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
                                <label class="control-label">Address:</label>
                                <div class="control-cont">
                                    <span class="lat"><input name="coord" type="text" class="dynamicOptions" data-default="" /></span>
                                    <input name="title" type="text" class="dynamicOptions getmapcoord" data-default="" placeholder="Address" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Markers Description:</label>
                                <div class="control-cont">
                                    <textarea rows="5" name="markers" class="dynamicOptions"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Text Color:</label>
                                <div class="control-cont">
                                    <input name="markerscolor" type="text" class="dynamicOptions sample-selector" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Popup Background Color:</label>
                                <div class="control-cont">
                                    <input name="markersbg" type="text" class="dynamicOptions sample-selector" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Default popup display:</label>
                                <div class="control-cont">
                                    <input type="checkbox" name="markersshow" class="dynamicOptions">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Marker Position:</label>
                                <div class="control-cont">
                                    <select class="form-control dynamicOptions" name="position">
                                        <option value="top">Top</option>
                                        <option value="right">Right</option>
                                        <option value="bottom">Bottom</option>
                                        <option value="left">Left</option>
                                    </select>
                                </div>
                            </div>
                    
                            <div class="form-group">
                                <label class="control-label">Icon:</label>
                                <div class="control-cont">
                                    <div class="radio-img-list">
                                        <form>
                                        <label class="radio-inline">
                                            <input type="radio" name="markersicon" value="" class="dynamicOptions">
                                            Default
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="markersicon" value="[SkinPath]resource/thumbnails/map/mapicon01.png" class="dynamicOptions">
                                            <img src="<%= SkinPath %>{SkinPath}resource/thumbnails/map/mapicon01.png" />
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="markersicon" value="{SkinPath}resource/thumbnails/map/mapicon02.png" class="dynamicOptions">
                                            <img src="<%= SkinPath %>{SkinPath}resource/thumbnails/map/mapicon02.png" />
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="markersicon" value="[SkinPath]resource/thumbnails/map/mapicon03.png" class="dynamicOptions">
                                            <img src="<%= SkinPath %>{SkinPath}resource/thumbnails/map/mapicon03.png" />
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="markersicon" value="[SkinPath]resource/thumbnails/map/mapicon04.png" class="dynamicOptions">
                                            <img src="<%= SkinPath %>{SkinPath}resource/thumbnails/map/mapicon04.png" />
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="markersicon" value="[SkinPath]resource/thumbnails/map/mapicon05.png" class="dynamicOptions">
                                            <img src="<%= SkinPath %>{SkinPath}resource/thumbnails/map/mapicon05.png" />
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="markersicon" value="[SkinPath]resource/thumbnails/map/mapicon06.png" class="dynamicOptions">
                                            <img src="<%= SkinPath %>{SkinPath}resource/thumbnails/map/mapicon06.png" />
                                        </label>
                                        </form>
                    
                                    </div>
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
            <label class="control-label">Map center:</label>
            <div class="control-cont">
                <span class="lat"><input name="addresscoord" type="text" class="dnnOptions" data-default="" value="${addresscoord}" /></span>
                <input name="address" type="text" class="dnnOptions getmapcoord" value="${address}" placeholder="Address"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Zoom:</label>
            <div class="control-cont">
                <input name="zoom" type="number" class="dnnOptions" value="${zoom}"  />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Scrollwheel:</label>
            <div class="control-cont">
                <input type="checkbox" name="scrollwheel" class="dnnOptions" ${scrollwheel}>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Type:</label>
            <div class="control-cont">
                <select class="form-control dnnOptions" name="type" data-value="${type}">
                    <option value="roadmap">Road Map</option>
                    <option value="satellite">Satellite</option>
                    <option value="hybrid">Hybrid</option>
                    <option value="terrain">Terrain</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Map Height:</label>
            <div class="control-cont">
                <ul class="responsive-control-list">
                    <li><span>XL</span><input name="xl" type="number" class="dnnOptions required" value="${xl}" /></li>
                    <li><span>L</span><input name="l" type="number" class="dnnOptions required" value="${l}" /></li>
                    <li><span>M</span><input name="m" type="number" class="dnnOptions required" value="${m}" /></li>
                    <li><span>S</span><input name="s" type="number" class="dnnOptions required" value="${s}" /></li>
                    <li><span>XS</span><input name="xs" type="number" class="dnnOptions required" value="${xs}" /></li>
                </ul>

            </div>
        </div>

        <div class="form-group">
            <label class="control-label">Map Style:</label>
            <div class="control-cont">
                <textarea rows="5" name="mapstyle" class="dnnOptions">${mapstyle}</textarea>
                <p><small><a href="https://snazzymaps.com/explore" target="_blank">Explore Style</a>, <a href="https://mapstyle.withgoogle.com/" target="_blank">Custom Style</a></small></p>
            </div>
        </div>


    </div>


</div>




<!--build HTML-->

<div class="buildHTML">
    <style class="build-css" data-class="builder-gmap">
        .builder-gmap {
            min-height: 100px;
            background-color: #e3e3e3;
        }

        .popup-tip-anchor {
            position: absolute;
            width: 500px;
            max-width: 90%;
            margin-top: -55px;
        }

        .popup-bubble-anchor {
            position: absolute;
            width: 100%;
            left: 0;
        }

        .popup-bubble-anchor::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            transform: rotate(45deg);
            width: 12px;
            height: 12px;
            border-right: 1px solid #cacaca;
            border-bottom: 1px solid #cacaca;
            background-color: white;
            margin: -6px 0 0 -5px;
        }

        .popup-bubble-content {
            position: absolute;
            top: 0;
            left: 0;
            transform: translate(-50%, -100%);
            background-color: white;
            border-radius: 5px;
            overflow-y: auto;
            max-height: 300px;
            padding: 30px 42px 34px 30px;
            line-height: 1.8;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border: 1px solid #cacaca;
        }

        .popup-bubble-content .title {
            line-height: 1.2;
            margin-bottom: 22px;
        }

        .popup-bubble-content dl {
            margin-bottom: 0;
        }

        .popup-bubble-content dt {
            font-size: 14px;
            line-height: 26px;
            font-weight: normal;
        }
        .popup-bubble-content .close {
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
            transition: all 200ms ease-in;
        }
        .popup-bubble-content .close::after {
            content: "✕";
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
        }
    </style>

    <style class="build-css" data-class="gmap-multiple">
        .builder-gmap.gmap-multiple .popup-bubble-anchor{
            background-color: white;
        }
        .builder-gmap.gmap-multiple .popup-bubble-anchor::after{
            background-color: inherit;
            border: none;
        }
        .builder-gmap.gmap-multiple .popup-bubble-content{
            border: none;
        }
        @media only screen and (min-width: 992px){
        .builder-gmap .popup-bubble-right .popup-bubble-content{
            top: 50%;
            left: 30px;
            margin-top: 35px;
            transform: translate(0, -50%);
        }
        .builder-gmap .popup-bubble-right.popup-bubble-anchor::after{
            transform: rotate(135deg);
            left: 30px;
            top: 30px;
        }
    }
    @media only screen and (min-width: 992px){
        .builder-gmap .popup-bubble-bottom .popup-bubble-content{
            top: 50%;
            left: 30px;
            margin: 75px 0 0 -30px;
            transform: translate(-50%, 0);
        }
        .builder-gmap .popup-bubble-bottom.popup-bubble-anchor::after{
            transform: rotate(-135deg);
            left: -1px;
            top: 76px;
        }
    }
    @media only screen and (min-width: 992px){
        .builder-gmap .popup-bubble-left .popup-bubble-content{
            top: 50%;
            left: 30px;
            margin: 35px 0 0 -75px;
            transform: translate(-100%, -50%);
        }
        .builder-gmap .popup-bubble-left.popup-bubble-anchor::after{
            transform: rotate(-45deg);
            left: -46px;
            top: 34px;
        }
    }   
    </style>
    <div class="gmap gmap-multiple builder-gmap loading" id="gmap{id}">
        {{if markers}}
        <div class="markers" style="display: none">{{html markers}}</div>
        {{/if}}

        {{if mapstyle}}<div class="mapstyle" style="display: none">{{html mapstyle}}</div>{{/if}}
        {{if  $data.items}}<div class="marker-item" style="display: none">${$data.items && JSON.stringify(items)}</div>{{/if}}
        {LT}div class="data" style="display: none"
        {{if address}}data-address="${address}"{{/if}}
        {{if markersicon}}data-icon="${markersicon}"{{/if}}
        {{if zoom}}data-zoom="${zoom}"{{/if}}
        {{if scrollwheel}}data-scrollwheel="${scrollwheel}"{{/if}}
        {{if markersshow}}data-markerdialsy="${markersshow}"{{/if}}
        {{if type}}data-type="${type}"{{/if}}
        {{if addresscoord}}data-coord="${addresscoord}"{{/if}}
        {GT}
        {LT}/div{GT}
       
        
    </div>

    {LT}style{GT}
    {{if xs}}#gmap{id}{height:${xs}px}{{/if}}
    {{if s}}@media (min-width: 576px){#gmap{id}{height:${s}px}}{{/if}}
    {{if m}}@media (min-width: 768px){#gmap{id}{height:${m}px}}{{/if}}
    {{if l}}@media (min-width: 992px){#gmap{id}{height:${l}px}}{{/if}}
    {{if xl}}@media (min-width: 1200px){#gmap{id}{height:${xl}px}}{{/if}}
    {LT}/style{GT}




   
    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("gmap", "${moduleid}", "gmap")
    </script>
</div>
