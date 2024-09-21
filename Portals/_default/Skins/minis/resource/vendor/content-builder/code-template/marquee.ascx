<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
        <li class="active"><a href="<%= SkinPath %>#">Item</a></li>
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
                                    <label class="control-label">Title:</label>
                                    <div class="control-cont">
                                        <input name="title" type="text" class="dynamicOptions" />
                                    </div>
                                </div>
                                                                  
                                <div class="form-group">
                                    <label class="control-label">Link:</label>
                                    <div class="control-cont">
                                        <input name="link" type="text" class="dynamicOptions extend-url" value="${link}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Open New Window:</label>
                                    <div class="control-cont">
                                        <input name="newopen" type="checkbox" class="dynamicOptions" ${newopen} />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label">Color:</label>
                                    <div class="control-cont" style="width: 150px;">
                                        <input name="color" type="text" class="dynamicOptions sample-selector"/>
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
                <label class="control-label">Stop On Hover :</label>
                <div class="control-cont">
                    <input name="hoverStop" type="checkbox" class="dnnOptions" ${hoverStop} />
                </div>
            </div>
   
            
            <div class="form-group">
                <label class="control-label">Speed:</label>
                <div class="control-cont">
                    <input name="speed" type="number" class="dnnOptions" value="${speed}"  data-default="1500" style="width: 150px;" />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label">Space:</label>
                <div class="control-cont">
                    <input name="space" type="number" class="dnnOptions" value="${space}"  data-default="30" style="width: 150px;" />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label">Height:</label>
                <div class="control-cont">
                    <input name="height" type="number" class="dnnOptions" value="${height}"  data-default="30" style="width: 150px;" /> px
                </div>
            </div>


            <div class="form-group">
                <label class="control-label">Color:</label>
                <div class="control-cont" style="width: 150px;">
                    <input name="color" type="text" class="dnnOptions sample-selector" value="${color}"/>
                    <i style="width: 42px;height: 42px;display: inline-block;position: absolute;margin-left: -1px; background-color: ${color};"></i>
                </div>
            </div>


            <div class="form-group">
                <label class="control-label">Hover Color:</label>
                <div class="control-cont" style="width: 150px;">
                    <input name="hovercolor" type="text" class="dnnOptions sample-selector" value="${hovercolor}"/>
                    <i style="width: 42px;height: 42px;display: inline-block;position: absolute;margin-left: -1px;background-color: ${hovercolor};"></i>
                </div>
            </div>

    
        </div>
    
    </div>
    
    
    <!--build HTML-->
             
<div class="buildHTML">

    <style class="build-css" data-class="news-marquee">
        .news-marquee{
            overflow: hidden;
            display: flex;
        }
        .news-marquee .scroll{
            display:flex;
        }
        .news-marquee ul{
            display: flex;
            align-items: center;
            margin: 0;
            padding: 0;
            list-style: none;
            white-space: nowrap;
        }
        
    </style> 

    <style>
        #marquee-${moduleid} ul{
            height: ${height}px;
        }
        #marquee-${moduleid} ul li{
            padding-right: ${space}px;
        }
        #marquee-${moduleid} ul li,
        #marquee-${moduleid} ul li a,
        #marquee-${moduleid} ul li a:link{
            color: ${color};
        }
        #marquee-${moduleid} ul li a:hover{
            color: ${hovercolor} !important;
        }
    </style>

    <div class="news-marquee" id="marquee-${moduleid}"  data-hoverstop="${hoverStop}" data-speed="${speed}" >
        <div class="scroll">
            <ul>
                {{if $data.items}}
                {{each(prop, val) $data.items }} 
                <li>
                    {{if val.link}}
                    {LT}a href="${val.link}"{{if val.newopen}} target="_blank"{{/if}}{{if val.color}} style="color:${val.color}"{{/if}}{GT}
                     {{html val.title}}
                    {LT}/a{GT}
                    {{else}}
                    {{html val.title}}
                    {{/if}}
                </li>
                {{/each}}
                {{/if}}
            </ul>
        </div>
    </div>


    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("marquee", "${moduleid}","marquee")
    </script>
    
</div>









