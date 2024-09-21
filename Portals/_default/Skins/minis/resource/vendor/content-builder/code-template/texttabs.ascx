<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="<%= SkinPath %>#">Text Item</a></li>
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
                                <label class="control-label">Text:</label>
                                <div class="control-cont">
                                    <input name="title" type="text" class="dynamicOptions" />
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



</div>



<!--build HTML-->

<div class="buildHTML">

        <style class="build-css" data-class="text-slide">
        .text-slide {
            display: inline-block;
            position: relative;
            vertical-align: bottom;
        }

        .text-slide span {
            display: none;
            position: absolute;
            left: 0;
            top: 0;
            opacity: 0;
        }

        @-webkit-keyframes slide-text {
            0% {
                opacity: 0;
                -webkit-transform: translateY(100%);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateY(0%);
            }
        }

        @-o-keyframes slide-text {
            0% {
                opacity: 0;
                -o-transform: translateY(100%);
            }

            100% {
                opacity: 1;
                -o-transform: translateY(0%);
            }
        }

        @keyframes slide-text {
            0% {
                opacity: 0;
                transform: translateY(100%);
            }

            100% {
                opacity: 1;
                transform: translateY(0%);
            }
        }

        @-webkit-keyframes slide-text-previous {
            0% {
                opacity: 1;
                -webkit-transform: translateY(0%);
            }

            100% {
                opacity: 0;
                -webkit-transform: translateY(-100%);
            }
        }

        @-o-keyframes slide-text-previous {
            0% {
                opacity: 1;
                -o-transform: translateY(0%);
            }

            100% {
                opacity: 0;
                -o-transform: translateY(-100%);
            }
        }

        @keyframes slide-text-previous {
            0% {
                opacity: 1;
                transform: translateY(0%);
            }

            100% {
                opacity: 0;
                transform: translateY(-100%);
            }
        }

        .text-slide span.active {
            display: inline-block;
            position: static;
            -webkit-animation-name: slide-text;
            -o-animation-name: slide-text;
            animation-name: slide-text;
            -webkit-animation-duration: 400ms;
            -o-animation-duration: 400ms;
            animation-duration: 400ms;
            -webkit-animation-fill-mode: both;
            -o-animation-fill-mode: both;
            animation-fill-mode: both;
            white-space: nowrap;
            opacity: 1;
        }

        .text-slide span.previous {
            display: inline-block;
            -webkit-animation-name: slide-text-previous;
            -o-animation-name: slide-text-previous;
            animation-name: slide-text-previous;
            -webkit-animation-duration: 400ms;
            -o-animation-duration: 400ms;
            animation-duration: 400ms;
            -webkit-animation-fill-mode: both;
            -o-animation-fill-mode: both;
            animation-fill-mode: both;
            white-space: nowrap;
            opacity: 0;
        }

        @-webkit-keyframes blink {
            0% {
                visibility: hidden;
                opacity: 0;
            }

            50% {
                visibility: visible;
                opacity: 1;
            }

            100% {
                visibility: hidden;
                opacity: 0;
            }
        }

        @-moz-keyframes blink {
            0% {
                visibility: hidden;
                opacity: 0;
            }

            50% {
                visibility: visible;
                opacity: 1;
            }

            100% {
                visibility: hidden;
                opacity: 0;
            }
        }

        @-o-keyframes blink {
            0% {
                visibility: hidden;
                opacity: 0;
            }

            50% {
                visibility: visible;
                opacity: 1;
            }

            100% {
                visibility: hidden;
                opacity: 0;
            }
        }

        @keyframes blink {
            0% {
                opacity: 0;
            }

            50% {
                opacity: 1;
            }

            100% {
                opacity: 0;
            }
        }

        .dg-typewriter.animation {
            display: none;
            position: relative;
        }

        .dg-typewriter.animated {
            display: inline-block;
        }

        .dg-typewriter.animated:after {
            content: "|";
            display: inline-block;
            visibility: hidden;
            opacity: 0;
            width: 12px;
            margin-right: -12px;
            text-align: center;
        }

        .dg-typewriter.active:after {
            -webkit-animation: blink 650ms infinite;
            -moz-animation: blink 650ms infinite;
            animation: blink 650ms infinite;
            font-weight: normal;
            visibility: visible;
            opacity: 1;
        }

        .color-white .dg-typewriter.animated:after {
            color: #ffffff;
        }
    </style>





    <span class="text-slide animation">
        {{if $data.items}}
        {{each(prop, val) $data.items }}

        {LT}span {{if prop =="item0"}}class="active"{{/if}}{GT}${val.title}{LT}/span{GT}
        {{/each}}
        {{/if}}
    </span>

    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("visible", "${moduleid}", "visible")
    </script>
</div>
