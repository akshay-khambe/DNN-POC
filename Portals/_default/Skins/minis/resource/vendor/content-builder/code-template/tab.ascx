<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="<%= SkinPath %>#">Tab Item</a></li>
    <li><a href="<%= SkinPath %>#">Tab Options</a></li>
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
                                    <textarea rows="5" name="description" class="dynamicOptions CKEditor"></textarea>
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
            <label class="control-label">Equal Height:</label>
            <div class="control-cont">
                <input name="equalHeight" ${equalHeight} type="checkbox" class="dnnOptions"/>
            </div>
        </div>

        {{if false }}
        <div class="form-group">
            <label class="control-label">Auto play :</label>
            <div class="control-cont">
                <input name="autoplay" type="checkbox" class="dnnOptions" ${autoplay} data-default="checked" id="autoplay" />
                <input name="delay" type="number" class="dnnOptions conditional"  data-condition="#autoplay" value="${delay}" data-default="3000" style="width: 100px" placeholder="ms"  /> 
            </div>
        </div>
        {{/if}}
               
            
    </div>


</div>


<!--build HTML-->
         
<div class="buildHTML">
   
    {LT}style class="build-css" data-class="${style}"{GT} 
    {{if $data.style == "tab01"}}
        .tab01 {
            clear: both;
        }
        .tab01:after {
            clear: both;
            content: ".";
            height: 0px;
            font-size: 0px;
            visibility: hidden;
            display: block;
        }
        .tab01 ul.resp-tabs-list {
            border: 2px solid #f1f1f1;
            overflow: hidden;
            position: relative;
            border-radius: 31px;
            margin: 0;
            padding: 3px 0;
            display: inline-flex;
            vertical-align: bottom;
            width: 100%;
            flex-wrap: wrap;
        }
        .tab01 ul.resp-tabs-list::after {
            display: block;
            clear: both;
            content: "";
        }
        .tab01 .resp-tabs-container {
            padding: 0;
            margin: 0;
            clear: both;
        }
        .tab01 .resp-tabs-container:after {
            clear: both;
            content: ".";
            height: 0px;
            font-size: 0px;
            visibility: hidden;
            display: block;
        }
        *+html .tab01 .resp-tabs-container {
            display: inline-block
        }
        .tab01 .resp-tab-content .resp_margin {
            margin: 32px 15px 15px;
        }
        .tab01 ul.resp-tabs-list li {
            font-size: 16px;
            font-weight: 600;
            margin: 0 3px;
            list-style: none;
            float: left;
            position: relative;
            z-index: 1;
            transition: background-color ease-in 200ms;
            -webkit-transition: background-color ease-in 200ms;
            border-radius: 999px;
        }
        .tab01 ul.resp-tabs-list li span {
            border: none;
            padding: 8px 25px;
            display: block;
            white-space: nowrap;
            cursor: pointer;
            border-radius: 999px;
            color: #333;
            transition: all ease-in 200ms;
            -webkit-transition:all ease-in 200ms;
        }
        .tab01 ul.resp-tabs-list li:hover {
            background: rgb(238,238,238);
        }
        .tab01 ul.resp-tabs-list li.resp-tab-active {
            position: relative;
            z-index: 1;
            color: #FFF;
        }
        .tab01 .resp-tab-active,
        .tab01 .resp-tab-active:hover {
            background: none;
        }
        .tab01 ul.resp-tabs-list li.resp-tab-active span {
            background-color: var(--accent-color);
            color: #ffffff;

            -webkit-box-shadow: 0px 0px 25px rgba(0,0,0,0.1);
            box-shadow: 0px 0px 8px rgba(0,0,0,0.1);
        }
        .tab01 h2.resp-accordion,
        .tab01 .resp_container {
            display: none;
        }
        .tab01 ul{
            list-style: none;
            margin: 0;
            padding-top: 5px;
        }
        .tab01 ul li{
            font-size: 16px;
            line-height: 36px;
        }
        .tab01 ul li > i{
            margin-right: 12px;
            vertical-align: middle;
        }
        {{else $data.style == "tab02"}}
        .tab02 .resp-tabs-list{
            list-style: none;
            margin: 0 0 30px;
            padding: 0;
        }
        .tab02 .resp-tabs-list li{
           display: inline-block;
           height: 42px;
           line-height: 42px;
           padding: 0px 20px;
           margin:0 10px 10px 0;
           position: relative;
           cursor: pointer;
           transition: all 300ms ease-in;
           color: #333333;
       }
        .tab02 .resp-tabs-list li:after{
            content: "";
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background-color: var(--accent-color2);
            border-radius: 25px;
            opacity: .1;
            transition: all 300ms ease-in;
        }
        .tab02 .resp-tabs-list li span{
            position: relative;
            z-index: 1;
            color: inherit;
            font-size:18px;
        }
        .tab02 .resp-tabs-list li:hover,
        .tab02 .resp-tabs-list li.resp-tab-active{
            color: #fff;
        }
        .tab02 .resp-tabs-list li:hover:after,
        .tab02 .resp-tabs-list li.resp-tab-active:after{
            opacity: 1;
        }
       
        .tab02 .resp-accordion,
        .tab02 .resp_container {
            display: none;
        }
       
        .tab02 .tab-icon{
           font-size: 1.2em;
           vertical-align: text-top;
        }
        {{/if}}

        @media only screen and (max-width:767px) {
            .${style} ul.resp-tabs-list {
                display: none;
            }
            .${style} h2.resp-accordion {
                position: relative;
                display: block;
                border: 1px solid #e1e1e1;
                border-bottom: none;
                font-size: 15px;
                font-weight: 600;
                font-weight: normal;
                padding: 12px 30px 12px 15px;
                cursor: pointer;
                margin: 0;
                color: #919191;
                transition: background-color ease-in 200ms;
                -webkit-transition: background-color ease-in 200ms;
            }
            .${style} .resp-arrow {
                position: absolute;
                right: 10px;
                top: 50%;
                -webkit-transform: translateY(-50%);
                -moz-transform: translateY(-50%);
                transform: translateY(-50%);
                display: inline-block;
            }
            .${style} .resp-arrow:after, 
            .${style} .resp-arrow:before{
                position: absolute;
                content: "";
                top: 50%;
                left: 50%;
                z-index: 1;
            }
            .${style} .resp-arrow:before{
                width: 12px;
                height: 2px;
                background: #424242;
                margin: -1px 0 0 -12px;
            }
            .${style} .resp-arrow:after{
                width: 2px;
                height: 12px;
                background: #424242;
                margin: -6px 0 0 -7px;
                opacity: 1;
            }
            .${style} .resp-tab-active .resp-arrow:before,
            .${style} .resp-tab-active .resp-arrow:after{
                background: #FFF;
            }
            .${style} .resp-tab-active .resp-arrow:after{
                opacity: 0;
            }
            .${style} .resp-accordion:hover {
                background: #eeeeee;
                color: #333333;
            }
            .${style} .resp-tab-active,
            .${style} .resp-tab-active:hover {
                background:var(--accent-color);
            }
            .${style} .resp-tab-active span {
                color: #FFF;
            }
            .${style} .resp-tabs-container {
                width: 100%;
                margin: 0px;
                border-radius: 0px;
                -moz-border-radius: 0px;
                -webkit-border-radius: 0px;
                border: none;
                border-bottom: 1px solid #e1e1e1;
            }
            .${style} .resp-tabs-container .resp_margin {
                margin: 15px;
            }
            .${style} .resp-tab-content {
                border: 1px solid #e1e1e1;
                border-bottom: none;
                width: auto !important;
                padding: 0px;
                margin-bottom: 0px;
                clear: both;
                display: none;
            }
            .${style} .resp-tab-content:after {
                clear: both;
                content: ".";
                height: 0px;
                font-size: 0px;
                visibility: hidden;
                display: block;
            }
        }


     {LT}/style{GT}
    

    {LT}div class="horizontalTab_Top ${style} {{if $data.equalHeight}} equalHeight {{/if}} " {{if $data.autoplay}} data-autoplay='${delay}'{{/if}}{GT}
        {{if $data.items}}
            <ul class="resp-tabs-list">
                {{each(prop, val) $data.items }}
                <li>
                    <span class="title">${val.title}</span>
                </li>
                {{/each}}
            </ul>

            <div class="resp-tabs-container">
                {{each(prop, val) $data.items }}
                <div class="resp_container">
                    <div class="resp_margin ">
                        {{html val.description}}
                    </div>
                </div>
                {{/each}}

            </div>
        {{/if}}
    {LT}/div{GT}


    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("tab", "${moduleid}","tab")
    </script>
</div>
