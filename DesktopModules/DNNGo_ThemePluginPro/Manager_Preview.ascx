<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Preview.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_Preview" %>
<div class="preview-iframe-main full-iframe">
    <div class="preview-iframe-header">
        <ul class="preview-console">
            <li data-size="375px,812px"><svg xmlns="http://www.w3.org/2000/svg" id="fal-mobile" viewBox="0 0 320 512">
                    <path d="M192 416c0 17.7-14.3 32-32 32s-32-14.3-32-32 14.3-32 32-32 32 14.3 32 32zM320 48v416c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V48C0 21.5 21.5 0 48 0h224c26.5 0 48 21.5 48 48zm-32 0c0-8.8-7.2-16-16-16H48c-8.8 0-16 7.2-16 16v416c0 8.8 7.2 16 16 16h224c8.8 0 16-7.2 16-16V48z"></path>
                </svg></li>
            <li data-size="768px,1024px"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 400" id="lnr-tablet2">
                    <path d="M329.951,399.707H70.023c-16.539,0-29.992-13.428-29.992-29.936V30.5c0-16.508,13.453-29.936,29.992-29.936h259.928   c16.539,0,29.992,13.428,29.992,29.936v339.271C359.942,386.279,346.489,399.707,329.951,399.707z M70.023,20.522   c-5.516,0-9.998,4.473-9.998,9.979v339.271c0,5.506,4.481,9.979,9.998,9.979h259.928c5.516,0,9.997-4.473,9.997-9.979V30.5   c0-5.506-4.481-9.979-9.997-9.979H70.023z"></path>
                    <path d="M209.984,359.793H189.99c-5.516,0-9.998-4.473-9.998-9.979s4.481-9.979,9.998-9.979h19.994   c5.516,0,9.998,4.473,9.998,9.979S215.5,359.793,209.984,359.793z"></path>
                    <path d="M309.956,319.879H90.017c-5.516,0-9.997-4.473-9.997-9.979V50.458c0-5.506,4.481-9.979,9.997-9.979h219.939   c5.516,0,9.998,4.473,9.998,9.979V309.9C319.954,315.406,315.472,319.879,309.956,319.879z M100.015,299.922h199.944V60.436   H100.015V299.922z"></path>
                </svg></li>
            <li data-size="1024px,768px"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 400" id="lnr-tablet2" style="transform: rotate(90deg);">
                    <path d="M329.951,399.707H70.023c-16.539,0-29.992-13.428-29.992-29.936V30.5c0-16.508,13.453-29.936,29.992-29.936h259.928   c16.539,0,29.992,13.428,29.992,29.936v339.271C359.942,386.279,346.489,399.707,329.951,399.707z M70.023,20.522   c-5.516,0-9.998,4.473-9.998,9.979v339.271c0,5.506,4.481,9.979,9.998,9.979h259.928c5.516,0,9.997-4.473,9.997-9.979V30.5   c0-5.506-4.481-9.979-9.997-9.979H70.023z"></path>
                    <path d="M209.984,359.793H189.99c-5.516,0-9.998-4.473-9.998-9.979s4.481-9.979,9.998-9.979h19.994   c5.516,0,9.998,4.473,9.998,9.979S215.5,359.793,209.984,359.793z"></path>
                    <path d="M309.956,319.879H90.017c-5.516,0-9.997-4.473-9.997-9.979V50.458c0-5.506,4.481-9.979,9.997-9.979h219.939   c5.516,0,9.998,4.473,9.998,9.979V309.9C319.954,315.406,315.472,319.879,309.956,319.879z M100.015,299.922h199.944V60.436   H100.015V299.922z"></path>
                </svg></li>
            <li data-size="100vw,calc(100vh - 45px)"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 400" id="lnr-desktop">
                    <path d="M369.939,20.522H30.034c-16.538,0-29.991,13.428-29.991,29.936V309.9c0,16.507,13.453,29.936,29.991,29.936h103.79   l-13.814,27.577c-3.163,6.334-6.463,10.816-8.181,12.678c-4.276,1.141-7.439,5.028-7.439,9.638c0,5.506,4.481,9.979,9.998,9.979   h171.183c5.516,0,9.998-4.473,9.998-9.979c0-4.629-3.164-8.517-7.439-9.638c-1.718-1.842-4.999-6.344-8.182-12.678l-13.814-27.577   h103.79c16.539,0,29.992-13.429,29.992-29.936V50.458c0-16.508-13.453-29.936-29.992-29.936H369.939z M30.034,40.479h339.906   c5.516,0,9.998,4.473,9.998,9.979V240.05h-359.9V50.458C20.037,44.952,24.518,40.479,30.034,40.479z M262.089,376.339   c0.576,1.16,1.181,2.29,1.796,3.411H136.127c0.615-1.121,1.22-2.251,1.796-3.411l18.296-36.503h87.612l18.296,36.503H262.089z    M369.939,319.879H30.034c-5.516,0-9.997-4.473-9.997-9.979v-49.894h359.9V309.9C379.937,315.406,375.456,319.879,369.939,319.879z   "></path>
                    <path d="M209.984,299.922H189.99c-5.516,0-9.998-4.474-9.998-9.979c0-5.506,4.481-9.979,9.998-9.979h19.994   c5.516,0,9.998,4.473,9.998,9.979C219.981,295.448,215.5,299.922,209.984,299.922z"></path>
                </svg></li>


        </ul>
    </div>
    <div class="preview-iframe-content">
        <div class="iframeContent Loading">
            <iframe id="preview-iframe" allowtransparency="true" frameborder="0" scrolling="false" src="<%=PreviewPageUrl %>" style="width:100vw;height: calc(100vh - 45px);"></iframe>
        </div>
    </div>

</div>

<style>
    * {
        margin: 0;
        padding: 0;
    }

    .preview-iframe-main {}

    .preview-iframe-header {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        z-index: 1000;
    }

    .preview-iframe-content {
        margin-top: 65px;
        text-align: center;
        height: calc(100vh - 65px);
    }

    .preview-console {
        margin: 0;
        padding: 0;
        list-style: none;
        display: flex;
        justify-content: center;
        background-color: #e3e3e3;
        transition: all 300ms ease-in;
    }

    .full-iframe .preview-iframe-content {
        margin-top: 45px;
        height: calc(100vh - 45px);
        overflow-y: auto;
    }

    .preview-console li {
        padding: 10px;
        font-size: 20px;
        cursor: pointer;
    }

    .preview-console svg {
        width: 1em;
        height: 1em;
        fill: currentColor;
    }

    #preview-iframe {
        margin: 0;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        vertical-align: middle;
    }

    .iframeContent {
        position: relative;
        display: inline-block;
        vertical-align: middle;
    }

    .iframeContent.Loading::after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #efefef;
    }

    .iframeContent.Loading::before {
        content: "";
        width: 40px;
        height: 40px;
        display: inline-block;
        border: 2px solid #E3E3E3;
        border-top-color: #555;
        border-left-color: #555;
        -webkit-border-radius: 50%;
        -moz-border-radius: 50%;
        border-radius: 50%;
        position: absolute;
        top: 30%;
        left: 50%;
        margin-left: -20px;
        -webkit-animation: loading-rotate 0.7s infinite;
        -moz-animation: loading-rotate 0.7s infinite;
        animation: loading-rotate 0.7s infinite;
        z-index: 101;
    }

    @keyframes loading-rotate {
        0% {
            transform: rotate(0);
        }

        100% {
            transform: rotate(360deg);
        }
    }
</style>

<style id="iframeInnerStyle">
    .personalBarContainer,
    .SkinPluginPro_icon,
    .btn-plugin {
        display: none !important;
    }
    body.personabar-visible,
    body{
        margin-left:0px !important;
        overflow: visible !important;
    }
    #Body[style*="margin-left: 80px"]{
        position: relative;
    }
    #Body[style*="margin-left: 80px"] .dng-main.Wide .header-replace.header-position,
    #Body[style*="margin-left: 80px"] .dng-main.Wide .floating-active.header-wrap,
    #Body[style*="margin-left: 80px"] .dng-main.Wide .sticky-fixed .floating-nav.floating-nav-sticky {
        left: 0px; 
        width: auto;
        right: 0;
    }
    #Body[style*="margin-left: 80px"] .headersidenav{
        left: 0px;
    }
    #Body[style*="margin-left: 80px"] .leftslidemenu.active{
        margin-left: 0px;
    }



    @media only screen and (max-width: 1024px) {

        ::-webkit-scrollbar-track-piece {
            background-color: #f8f8f8;
            position: fixed;
        }

        ::-webkit-scrollbar {
            width: 2px;
            height: 2px;
        }

        ::-webkit-scrollbar-thumb {
            background-color: #dddddd;
            background-clip: padding-box;
            min-height: 28px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background-color: #bbb;
        }
    }
</style>


<script>
    function setCookie(name, value) {
        var Days = 30;
        var exp = new Date();
        exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
        document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
    }

    function getCookie(name) {
        var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");

        if (arr = document.cookie.match(reg))
            return unescape(arr[2]);
        else
            return null;
    }

    function iframeWidth(size) {

        document.getElementById("preview-iframe").style.width = size[0];
        document.getElementById("preview-iframe").style.height = size[1];
        if (document.querySelector(".preview-iframe-content").clientHeight <= document.querySelector(".iframeContent").clientHeight) {
            document.querySelector(".preview-iframe-main").classList.add("full-iframe");
        } else {
            document.querySelector(".preview-iframe-main").classList.remove("full-iframe");
        }

    }


    //  preview-console
    document.querySelectorAll(".preview-console > li").forEach(function (d) {
        d.onclick = function () {
            var size = d.dataset.size.split(",");

            iframeWidth(size);

            setCookie("iframeWidth", d.dataset.size);
        }
    })

    if (getCookie("iframeWidth")) {
        var size = getCookie("iframeWidth").split(",");
        iframeWidth(size);
    }

    function IFonload() {
        document.getElementById("preview-iframe").contentWindow.document.getElementsByTagName("head")[0].appendChild(document.getElementById("iframeInnerStyle").cloneNode(true));
        document.querySelector(".iframeContent").classList.remove("Loading");

    };



    function IFonbeforeunload(){
        let url =document.getElementById("preview-iframe").contentWindow.document.activeElement.href;

        if(url && url.indexOf(window.location.host) != -1){

            let iframeCloneNode = document.getElementById("preview-iframe").cloneNode(false);
            document.getElementById("preview-iframe").remove();
            iframeCloneNode.src = url + (url.indexOf("?") == -1 ?"?":"&")+"mode=preview";
            document.querySelector(".iframeContent").appendChild(iframeCloneNode);

            document.querySelector(".iframeContent").classList.add("Loading");

            document.getElementById("preview-iframe").onload = IFonload;
            document.getElementById("preview-iframe").contentWindow.onbeforeunload = IFonbeforeunload;
        }

    };


    document.getElementById("preview-iframe").onload = IFonload;
    document.getElementById("preview-iframe").contentWindow.onbeforeunload = IFonbeforeunload;
   
    
</script>