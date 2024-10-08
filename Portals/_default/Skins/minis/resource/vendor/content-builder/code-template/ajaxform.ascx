<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<div class="tab-content">

        <div class="form-group">
            <label class="control-label">Source:</label>
            <div class="control-cont">
                <input name="source" type="text" class="dnnOptions" value="${source}"  data-default="" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Message:</label>
            <div class="control-cont">
                <input name="message" type="text" class="dnnOptions" value="${message}"  data-default="" />
            </div>
        </div> 
        <div class="form-group">
            <label class="control-label">Redirect results page:</label>
            <div class="control-cont">
                <input name="successlink" type="text" class="dnnOptions" value="${successlink}"  data-default="" />
            </div>
        </div>
</div>


<!--build HTML-->
         
<div class="buildHTML">

    {{if style=="ajaxform-01"}}
    <style class="build-css" data-class="${style}">
        .ajaxform-01 .dg-form-content label{
            color: #787878;
            margin:0 0 7px;
            display: block;
        }
        .ajaxform-01 .dg-form-content .from-footer{
            width: 100%;
            text-align: center;
            padding-bottom: 0;
        }

        .ajaxform-01 input[type=text],
        .ajaxform-01 input[type=email],
        .ajaxform-01 input[type=url],
        .ajaxform-01 input[type=tel],
        .ajaxform-01 input[type=number],
        .ajaxform-01 input[type=date],
        .ajaxform-01 select,
        .ajaxform-01 textarea{
            color: #787878;
            background-color: #ffffff;
            height: 50px;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            font-weight: 700;
            box-shadow: 0 0 15px rgba(0,0,0,.2);
        }


        .ajaxform-01 .btn,
        .ajaxform-01 .btn:link,
        .ajaxform-01 .btn:active,
        .ajaxform-01 .btn:visited,
        .ajaxform-01 .btn[type="button"],
        .ajaxform-01 .btn[type="submit"] {
            display: inline-block;
            font-size: 16px;
            color: #fff;
            padding: 0 30px;
            background-color:var(--button-color);
            transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
            border: none;
            height: 50px;
            border-radius: 25px;
        }
        .ajaxform-01 .btn * {
            color: #fff;
        }
        .ajaxform-01 .btn:hover{
            background-color:var(--button-hover-color);
        }
    </style>
    {{else style=="ajaxform-02"}}
    <style class="build-css" data-class="${style}">
    .ajaxform-02 .dg-form-content,
    .ajaxform-02 .dg-form-content li{
        margin: 0;
        padding: 0;
        position: relative;
    }
    
    .ajaxform-02 input[type=text],
    .ajaxform-02 input[type=email],
    .ajaxform-02 input[type=url],
    .ajaxform-02 input[type=tel],
    .ajaxform-02 input[type=number],
    .ajaxform-02 input[type=date],
    .ajaxform-02 select,
    .ajaxform-02 textarea{
        color: #666666;
        background-color: #ffffff;
        height: 50px;
        border: none;
        border-radius: 25px;
        padding: 10px 160px 10px 20px;
        box-shadow: 0 0 15px rgba(0,0,0,.15);
    }
    .ajaxform-02 label{
        display: none;
    }
    .ajaxform-02 .message {
        margin-left: 0;
    }
    .ajaxform-02 .dg-form-content .form_submit{
        position: absolute;
        right: 0;
        top: 0;
    }
    .ajaxform-02 .dg-form-content .from-footer{
        position: static;
        float: none;
    } 
    .ajaxform-02 .btn,
    .ajaxform-02 .btn:link,
    .ajaxform-02 .btn:active,
    .ajaxform-02 .btn:visited,
    .ajaxform-02 .btn[type="button"],
    .ajaxform-02 .btn[type="submit"] {
        display: inline-block;
        font-size: 16px;
        color: #fff;
        padding: 0 30px;
        background-color:var(--button-color);
        transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
        border: none;
        height: 50px;
        border-radius: 25px;
    }
    .ajaxform-02 .btn * {
        color: #fff;
    }
    .ajaxform-02 .btn:hover{
        background-color: var(--button-hover-color);
    }
    </style>
    {{else style=="ajaxform-03"}}
    <style class="build-css" data-class="${style}">
    .ajaxform-03 .dg-form-content label{
        color: #333333;
        margin:0 0 20px;
        display: block;
        font-size: 16px;
        font-weight: 600;
    }
    .ajaxform-03 .dg-form-content .from-footer{
        width: 100%;
        text-align: left;
        padding-bottom: 0;
    }
    .ajaxform-03 input[type=text],
    .ajaxform-03 input[type=email],
    .ajaxform-03 input[type=url],
    .ajaxform-03 input[type=tel],
    .ajaxform-03 input[type=number],
    .ajaxform-03 input[type=date],
    .ajaxform-03 select,
    .ajaxform-03 textarea{
        color: #787878;
        background-color: #f6f6f6;
        height: 50px;
        border: none;
        border-radius: 3px;
        padding: 10px 20px;
    }
    
    .ajaxform-03 .btn,
    .ajaxform-03 .btn:link,
    .ajaxform-03 .btn:active,
    .ajaxform-03 .btn:visited,
    .ajaxform-03 .btn[type="button"],
    .ajaxform-03 .btn[type="submit"] {
        display: inline-block;
        font-size: 16px;
        color: #fff;
        padding: 0 30px;
        background-color:var(--button-color);
        transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
        border: none;
        height: 50px;
        border-radius: 25px;
    }
    .ajaxform-03 .btn * {
        color: #fff;
    }
    .ajaxform-03 .btn:hover{
        background-color:var(--button-hover-color);
    }
    </style>
    {{else style=="ajaxform-04"}}
    <style class="build-css" data-class="${style}">
    .ajaxform-04 .dg-form-content,
    .ajaxform-04 .dg-form-content li{
        margin: 0;
        padding: 0;
        position: relative;
    }
    
    .ajaxform-04 input[type=text],
    .ajaxform-04 input[type=email],
    .ajaxform-04 input[type=url],
    .ajaxform-04 input[type=tel],
    .ajaxform-04 input[type=number],
    .ajaxform-04 input[type=date],
    .ajaxform-04 select,
    .ajaxform-04 textarea{
        color: #666666;
        background-color: #ffffff;
        height: 50px;
        border: none;
        border-radius: 25px;
        padding: 10px 20px 10px 20px;
        box-shadow: 0 0 15px rgba(0,0,0,.15);
    }
    .ajaxform-04 label{
        display: none;
    }
    .ajaxform-04 .message {
        margin-left: 0;
    }

    .ajaxform-04 .dg-form-content .form_submit{
        position: absolute;
        right: 0;
        top: 0;
    }
    .ajaxform-04 .dg-form-content .from-footer{
        position: static;
        float: none;
    } 
    .ajaxform-04 .btn,
    .ajaxform-04 .btn:link,
    .ajaxform-04 .btn:active,
    .ajaxform-04 .btn:visited,
    .ajaxform-04 .btn[type="button"],
    .ajaxform-04 .btn[type="submit"] {
        display: inline-block;
        color: #fff;
        padding: 0;
        background-color:var(--button-color);
        transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
        border: none;
        height: 34px;
        width: 34px;
        text-indent: 100px;
        overflow: hidden;
        border-radius: 25px;
        margin: 8px 8px 0 0;
    }
    .ajaxform-04 .btn * {
        color: #fff;
    }
    .ajaxform-04 .btn:hover{
        background-color: var(--button-hover-color);
    }
    .ajaxform-04 .form_submit::after{ 
        content: " ";
        background: url('data:image/svg+xml;utf8,<svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M19.833 1.127c-0.144-0.129-0.349-0.163-0.527-0.088l-19 8c-0.192 0.081-0.314 0.272-0.306 0.48s0.144 0.389 0.342 0.455l5.658 1.886v5.64c0 0.212 0.133 0.4 0.333 0.471 0.055 0.019 0.111 0.029 0.167 0.029 0.148 0 0.291-0.066 0.388-0.185l2.763-3.401 4.497 4.441c0.095 0.094 0.221 0.144 0.351 0.144 0.042 0 0.084-0.005 0.125-0.016 0.17-0.044 0.305-0.174 0.355-0.343l5-17c0.055-0.185-0.003-0.385-0.147-0.514zM16.13 3.461l-9.724 7.48-4.488-1.496 14.212-5.984zM7 11.746l9.415-7.242-7.194 8.854c-0 0-0 0.001-0.001 0.001l-2.22 2.733v-4.346zM14.256 17.557l-3.972-3.922 8.033-9.887-4.061 13.808z" fill="rgb(255,255,255)"></path></svg>');
        background-size: 16px 16px;
        width: 16px;
        height: 16px;
        position: absolute;
        left: 9px;
        top: 17px;
        pointer-events: none;
        color: #fff;
    }


    </style> 
    {{else style=="ajaxform-05"}}
    <style class="build-css" data-class="${style}">
    .ajaxform-05 .dg-form-content, .ajaxform-05 .dg-form-content li{
        margin: 0;
        padding: 0;
        position: relative;
    }
    .ajaxform-05 input[type=text], .ajaxform-05 input[type=email], .ajaxform-05 input[type=url], .ajaxform-05 input[type=tel], .ajaxform-05 input[type=number], .ajaxform-05 input[type=date], .ajaxform-05 select, .ajaxform-05 textarea{
        color: #FFF;
        background-color:transparent;
        height: 50px;
        border: none;
        border-radius: 25px;
        padding: 10px 20px 10px 20px;
        border:1px solid #FFF;
        
    }
    .ajaxform-05 label{
        display: none;
    }
    .ajaxform-05 .message {
        margin-left: 0;

            }

    .ajaxform-05 .dg-form-content .from-footer{
        position: static;
        float: none;
    }
    .ajaxform-05 .btn, .ajaxform-05 .btn:link, .ajaxform-05 .btn:active, .ajaxform-05 .btn:visited, .ajaxform-05 .btn[type="button"], .ajaxform-05 .btn[type="submit"] {
        display: inline-block;
        color: #fff;
        padding: 0;
        height:50px;
        line-height:50px;
        padding:0px 30px;
        background-color:var(--button-color);
        transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
        border: none;
        border-radius: 25px;
        margin: 40px 0px 0 0;
    }
    .ajaxform-05 .btn * {
        color: #fff;
    }
    .ajaxform-05 .btn:hover{
        background-color:var(--button-hover-color);
    }
    </style>
    {{else style=="ajaxform-06"}}
    <style class="build-css" data-class="${style}">
    .ajaxform-06 .dg-form-content-box.form-line-load {
        opacity: 0;
    }
    .ajaxform-06 .dg-form-content .form-control-wrap {
        padding: 20px 0 0px;
    }
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=text],
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=email],
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=url],
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=tel],
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=number],
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=date],
    .ajaxform-06 .dg-form-content .form-control-wrap select,
    .ajaxform-06 .dg-form-content .form-control-wrap textarea {
        border: none;
        border-bottom: 1px solid #c8c8c8;
        padding-left: 0;
        padding-right: 0;
        padding-top: 0;
        height: 40px;
        outline: none;
    }

    .ajaxform-06 .dg-form-content .form-control-wrap>.form_input {
        padding-top: 11px;
    }

    .ajaxform-06 .dg-form-content .form-control-wrap>label {
        position: absolute;
    }

    .ajaxform-06 .dg-form-content .text-center label {
        left: 50%;
        transform: translateX(-50%);
        -ms-transform: translateX(-50%);
        -webkit-transform: translateX(-50%);
    }

    .ajaxform-06 .dg-form-content .wpcf7-quiz-label {
        display: block;
        margin-top: 15px;
        margin-bottom: -8px;
    }

    .ajaxform-06 .dg-form-content label.fixlabel {
        top: 32px;
        font-size: 15px;
        pointer-events: none;
        opacity: 1;
    }

    .ajaxform-06 .dg-form-content label {
        top: 8px;
        font-size: 15px;
        -moz-transition: all ease-in 200ms;
        -webkit-transition: all ease-in 200ms;
        -o-transition: all ease-in 200ms;
        -ms-transition: all ease-in 200ms;
        transition: all ease-in 200ms;
    }

    .ajaxform-06 .dg-form-content label.valid {
        top: 0px;
        font-size: 13px;
        color: #333333;
        -moz-transition: all ease-in 200ms;
        -webkit-transition: all ease-in 200ms;
        -o-transition: all ease-in 200ms;
        -ms-transition: all ease-in 200ms;
        transition: all ease-in 200ms;
    }

    .ajaxform-06 .dg-form-content .fixline:before {
        content: "";
        position: absolute;
        bottom: 0px;
        width: 0;
        border-bottom: 2px solid #b4b4b4;
        -moz-transition: width ease-in 200ms;
        -webkit-transition: width ease-in 200ms;
        -o-transition: width ease-in 200ms;
        -ms-transition: width ease-in 200ms;
        transition: width ease-in 200ms;
    }

    .ajaxform-06 .dg-form-content .fixline.valid:before {
        width: 100%;
    }

    .ajaxform-06 .dg-form-content .wpcf7-not-valid-tip {
        position: absolute
    }
    @media only screen and (max-width:767px) {
        .ajaxform-06 .dg-form-content {
            display: table;
            min-width: 100%;
        }
        .ajaxform-06 .dg-form-content>li {
            display: table-cell;
            float: none;
        }
        .ajaxform-06 .from-footer {
            white-space: nowrap;
            width: 1%;
        }
        .ajaxform-06 .dg-form-content::after {
            content: none;
        }
    }

    @media only screen and (max-width:767px) {
        .ajaxform-06 .dg-form-content {
            display: block;
        }
        .ajaxform-06 .dg-form-content>li {
            display: block!important;
            float: none;
            width: 100%!important;
        }
    }
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=text],
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=email],
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=url],
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=tel],
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=number],
    .ajaxform-06 .dg-form-content .form-control-wrap input[type=date],
    .ajaxform-06 .dg-form-content .form-control-wrap select,
    .ajaxform-06 .dg-form-content .form-control-wrap textarea,
    .ajaxform-06 .dg-form-content .fixline:before {
        border-bottom-color: #787878;
    }
    .ajaxform-06 .btn,
    .ajaxform-06 .btn:link,
    .ajaxform-06 .btn:active,
    .ajaxform-06 .btn:visited,
    .ajaxform-06 .btn[type="button"],
    .ajaxform-06 .btn[type="submit"] {
        display: inline-block;
        font-size: 16px;
        color: #fff;
        padding: 0 30px;
        background-color:var(--button-color);
        transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
        border: none;
        height: 50px;
        border-radius: 25px;
    }
    .ajaxform-06 .btn * {
        color: #fff;
    }
    .ajaxform-06 .btn:hover{
        background-color: var(--button-hover-color);
    }
    </style>
    {{else style=="ajaxform-07"}}
    <style class="build-css" data-class="${style}">
    .ajaxform-07 .dg-form-content label{
        color: #333333;
        margin:0 0 20px;
        display: block;
        font-size: 16px;
        font-weight: 600;
    }
    .ajaxform-07 .dg-form-content .from-footer{
        width: 100%;
        text-align: left;
        padding-bottom: 0;
    }
    .ajaxform-07 input[type=text],
    .ajaxform-07 input[type=email],
    .ajaxform-07 input[type=url],
    .ajaxform-07 input[type=tel],
    .ajaxform-07 input[type=number],
    .ajaxform-07 input[type=date],
    .ajaxform-07 select,
    .ajaxform-07 textarea{
        color: #787878;
        background-color: #f6f6f6;
        height: 50px;
        border: none;
        border-radius: 3px;
        padding: 10px 20px;
    }
    .ajaxform-07 .form_submit{
        display: inline-block;
        position: relative;
    }
    .ajaxform-07 .form_submit::before {
        content: "";
        top: 50%;
        left: auto;
        right: 8px;
        position: absolute;
        color:var(--button-color);
        background-color: rgba(255, 255, 255, 1);
        border-radius: 50%;
        width: 34px;
        height: 34px;
        display: block;
        transform: translate3d(0, -50%, 0);
        text-align: center;
        line-height: 34px;
        font-size: 12px;
        text-indent: 3px;
        pointer-events: none;
        -webkit-transition: all .3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
        transition: all .3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
    }
    .ajaxform-07 .form_submit::after{
        content: "";
        top: 22px;
        left: auto;
        right: 22px;
        position: absolute;
        color: var(--button-color);
        width: 7px;
        height: 7px;
        border-top: 1px solid currentColor;
        border-right: 1px solid currentColor;
        display: block;
        text-align: center;
        line-height: 34px;
        font-size: 12px;
        pointer-events: none;
        -webkit-transform: rotate(45deg);
        transform: rotate(45deg);
        backface-visibility: hidden;
    }

    .ajaxform-07 .form_submit:hover::before{
        color:var(--button-hover-color);
    }
    .ajaxform-07 .btn,
    .ajaxform-07 .btn:link,
    .ajaxform-07 .btn:active,
    .ajaxform-07 .btn:visited,
    .ajaxform-07 .btn[type="button"],
    .ajaxform-07 .btn[type="submit"] {
        display: inline-block;
        font-size: 16px;
        color: #fff;
        padding: 0 70px 0 30px;
        background-color:var(--button-color);
        border: none;
        height: 50px;
        border-radius: 25px;
        -webkit-transition: all .3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
        transition: all .3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
    }
    .ajaxform-07 .btn * {
        color: #fff;
    }
    .ajaxform-07 .btn:hover{
        background-color: var(--button-hover-color);
    }
    </style>
    {{else style=="ajaxform-08"}}
    <style class="build-css" data-class="${style}">
        .ajaxform-08 .dg-form-content-box.form-line-load {
            opacity: 0;
        }
        .ajaxform-08 .dg-form-content .form-control-wrap {
            padding:19px 0 0px;
        }
        .ajaxform-08 .dg-form-content .form-control-wrap input[type=text],
        .ajaxform-08 .dg-form-content .form-control-wrap input[type=email],
        .ajaxform-08 .dg-form-content .form-control-wrap input[type=url],
        .ajaxform-08 .dg-form-content .form-control-wrap input[type=tel],
        .ajaxform-08 .dg-form-content .form-control-wrap input[type=number],
        .ajaxform-08 .dg-form-content .form-control-wrap input[type=date],
        .ajaxform-08 .dg-form-content .form-control-wrap select,
        .ajaxform-08 .dg-form-content .form-control-wrap textarea {
            border: none;
            border-bottom: 1px solid #a9b0b4;
            padding: 0;
            height: 35px;
            outline: none;
            background: none;
            line-height: 35px;
        }
        .ajaxform-08 .dg-form-content .form-control-wrap>label {
            position: absolute;
        }
        
        .ajaxform-08 .dg-form-content .wpcf7-quiz-label {
            display: block;
            margin-top: 15px;
            margin-bottom: -8px;
        }
        
        .ajaxform-08 .dg-form-content label.fixlabel {
            top: 23px;
            font-size: 15px;
            pointer-events: none;
            opacity: 1;
        }
        .ajaxform-08 .dg-form-content label {
            top: 8px;
            font-size: 15px;
            -webkit-transition: all ease-in 200ms;
            transition: all ease-in 200ms;
        }
        .ajaxform-08 .dg-form-content label.valid,
        .ajaxform-08 .dg-form-content label:not(.fixlabel) {
            top: 0px;
            font-size: 13px;
            color: #333333;
            -webkit-transition: all ease-in 200ms;
            transition: all ease-in 200ms;
        }
        .ajaxform-08 .dg-form-content .fixline:before {
            content: "";
            position: absolute;
            bottom: 0px;
            width: 0;
            border-bottom: 2px solid #787878;
            -webkit-transition: width ease-in 200ms;
            transition: width ease-in 200ms;
        }
        
        .ajaxform-08 .dg-form-content .fixline.valid:before {
            width: 100%;
        }
        
        .ajaxform-08 .dg-form-content .wpcf7-not-valid-tip {
            position: absolute
        }
        
        @media only screen and (max-width:767px) {
            .ajaxform-08 .dg-form-content {
                display: block;
            }
            .ajaxform-08 .dg-form-content>li {
                display: block!important;
                float: none;
                width: 100%!important;
            }
        }
        .ajaxform-08 .btn,
        .ajaxform-08 .btn:link,
        .ajaxform-08 .btn:active,
        .ajaxform-08 .btn:visited,
        .ajaxform-08 .btn[type="button"],
        .ajaxform-08 .btn[type="submit"] {
            display: inline-block;
            font-size: 16px;
            color: #fff;
            padding: 0 30px;
            background-color:var(--button-color);
            transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
            border: none;
            height: 50px;
            border-radius: 25px;
        }
        .ajaxform-08 .btn * {
            color: #fff;
        }
        .ajaxform-08 .btn:hover{
            background-color:var(--button-hover-color);
        }
    </style>
    {{else style=="ajaxform-09"}}
    <style class="build-css" data-class="${style}">
        .ajaxform-09 .dg-form-content,
        .ajaxform-09 .dg-form-content li{
            margin: 0;
            padding: 0;
            position: relative;
        }

        .ajaxform-09 input[type=text],
        .ajaxform-09 input[type=email],
        .ajaxform-09 input[type=url],
        .ajaxform-09 input[type=tel],
        .ajaxform-09 input[type=number],
        .ajaxform-09 input[type=date],
        .ajaxform-09 select,
        .ajaxform-09 textarea{
            color: #666666;
            background-color: #ffffff;
            height: 50px;
            border: none;
            border-radius: 3px;
            padding: 10px 75px 10px 30px;
            box-shadow: 0 0 15px rgba(0,0,0,.15);
        }
        .ajaxform-09 label{
            display: none;
        }
        .ajaxform-09 .message {
            margin-left: 0;
        }

        .ajaxform-09 .dg-form-content .form_submit{
            position: absolute;
            right: 0;
            top: 0;
        }
        .ajaxform-09 .dg-form-content .from-footer{
            position: static;
            float: none;
        } 
        .ajaxform-09 .btn,
        .ajaxform-09 .btn:link,
        .ajaxform-09 .btn:active,
        .ajaxform-09 .btn:visited,
        .ajaxform-09 .btn[type="button"],
        .ajaxform-09 .btn[type="submit"] {
            display: inline-block;
            color: #fff;
            padding: 0;
            background-color:var(--button-color);
            transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
            border: none;
            height: 50px;
            width: 55px;
            text-indent: 100px;
            overflow: hidden;
            border-radius: 0 3px 3px 0;
        }
        .ajaxform-09 .btn * {
            color: #fff;
        }
        .ajaxform-09 .btn:hover{
            background-color:var(--button-hover-color);
        }
        .ajaxform-09 .form_submit::after{
            content: "";
            background: url('data:image/svg+xml;utf8,<svg width="400" height="400" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg"><path d="M358.087,111.361L212.269,22.422c-6.083-3.712-14-5.749-22.279-5.749c-8.279,0-16.197,2.037-22.279,5.749L21.892,111.361 c-12.458,7.611-21.849,24.313-21.849,38.882v179.614c0,16.507,13.453,29.936,29.991,29.936h319.912 c16.538,0,29.992-13.429,29.992-29.936V150.243C379.937,135.675,370.545,118.973,358.087,111.361z M32.318,128.386l145.819-88.94 c2.939-1.803,7.254-2.835,11.853-2.835c4.598,0,8.894,1.033,11.852,2.835l145.819,88.94c3.104,1.9,6.083,5.311,8.318,9.17 L201.09,240.625c-5.799,3.859-16.382,3.859-22.181,0L24.02,137.556c2.236-3.879,5.213-7.289,8.318-9.17H32.318z M349.945,339.836 H30.034c-5.516,0-9.997-4.473-9.997-9.979V158.906l147.781,98.324c6.219,4.131,14.195,6.207,22.172,6.207 c7.976,0,15.953-2.076,22.171-6.207l147.781-98.324v170.951C359.942,335.363,355.461,339.836,349.945,339.836z" fill="rgb(255,255,255)"></path></svg>');
            background-size: 20px 20px;
            width: 20px;
            height: 20px;
            position: absolute;
            left: 18px;
            top: 16px;
            pointer-events: none;
        }
    </style>
     {{else style=="ajaxform-10"}}
     <style class="build-css" data-class="${style}">
            
        .ajaxform-10 .dg-form-content,
        .ajaxform-10 .dg-form-content li{
            margin: 0;
            padding: 0;
            position: relative;
        }

        .ajaxform-10 input[type=text],
        .ajaxform-10 input[type=email],
        .ajaxform-10 input[type=url],
        .ajaxform-10 input[type=tel],
        .ajaxform-10 input[type=number],
        .ajaxform-10 input[type=date],
        .ajaxform-10 select,
        .ajaxform-10 textarea{
            color: #ffffff;
            height: 50px;
            border: none;
            border-radius: 25px;
            padding: 10px 160px 10px 20px;
            background: none;
            box-shadow: 0 0 0 1px rgba(255,255,255,.3);
        }
        .ajaxform-10 label{
            display: none;
        }
        .ajaxform-10 .message {
            margin-left: 0;
        }
        .ajaxform-10 .dg-form-content .form_submit{
            position: absolute;
            right: 0;
            top: 0;
        }
        .ajaxform-10 .dg-form-content .from-footer{
            position: static;
            float: none;
        } 
        .ajaxform-10 .btn,
        .ajaxform-10 .btn:link,
        .ajaxform-10 .btn:active,
        .ajaxform-10 .btn:visited,
        .ajaxform-10 .btn[type="button"],
        .ajaxform-10 .btn[type="submit"] {
            display: inline-block;
            font-size: 16px;
            color: #fff;
            padding: 0 30px;
            background-color:var(--button-color);
            transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
            border: none;
            height: 50px;
            border-radius: 25px;
        }
        .ajaxform-10 .btn * {
            color: #fff;
        }
        .ajaxform-10 .btn:hover{
            background-color:var(--button-hover-color);
        }
        @media all and (max-width: 766px) {
            .ajaxform-10 .btn,
            .ajaxform-10 .btn:link,
            .ajaxform-10 .btn:active,
            .ajaxform-10 .btn:visited,
            .ajaxform-10 .btn[type="button"],
            .ajaxform-10 .btn[type="submit"] {
                font-size: 14px;
                padding: 0 20px;
            }     
            .ajaxform-10 input[type=text],
            .ajaxform-10 input[type=email],
            .ajaxform-10 input[type=url],
            .ajaxform-10 input[type=tel],
            .ajaxform-10 input[type=number],
            .ajaxform-10 input[type=date],
            .ajaxform-10 select,
            .ajaxform-10 textarea{
                padding-right: 145px;
            }      
        }
    </style>
    {{else style=="ajaxform-11"}}
    <style class="build-css" data-class="${style}">
        .ajaxform-11 .dg-form-content, 
        .ajaxform-11 .dg-form-content li{
            position: relative;
        }
        .ajaxform-11 input[type=text], 
        .ajaxform-11 input[type=email],
        .ajaxform-11 input[type=url],
        .ajaxform-11 input[type=tel],
        .ajaxform-11 input[type=number],
        .ajaxform-11 input[type=date],
        .ajaxform-11 select,
        .ajaxform-11 textarea{
            color: #FFF;
            background-color:transparent;
            height: 50px;
            border: none;
            border-radius: 25px;
            padding: 10px 20px 10px 20px;
            border:2px solid #FFF;
            outline-style: none;
        }
        .ajaxform-11 select,
        .ajaxform-11 label{
            display: none;
        }
        .ajaxform-11 .message {
            margin-left: 0;
        }

        .ajaxform-11 .dg-form-content .from-footer{
            position: static;
            float: none;
            text-align: center;
        }
        .ajaxform-11 .btn,
        .ajaxform-11 .btn:link,
        .ajaxform-11 .btn:active,
        .ajaxform-11 .btn:visited,
        .ajaxform-11 .btn[type="button"],
        .ajaxform-11 .btn[type="submit"] {
            display: inline-block;
            color: #fff;
            padding: 0;
            height:50px;
            line-height:50px;
            padding:0px 30px;
            background-color:var(--button-color);
            transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
            border: none;
            border-radius: 25px;
            margin: 20px 0px 0 0;
        }
        .ajaxform-11 .btn * {
            color: #fff;
        }
        .ajaxform-11 .btn:hover{
            background-color:var(--button-hover-color);
        }
    </style>
    {{else style=="ajaxform-12"}}
    <style class="build-css" data-class="${style}">


    .ajaxform-12 .dg-form-content, 
    .ajaxform-12 .dg-form-content li{
        position: relative;
    }
    .ajaxform-12 input[type=text], 
    .ajaxform-12 input[type=email],
    .ajaxform-12 input[type=url],
    .ajaxform-12 input[type=tel],
    .ajaxform-12 input[type=number],
    .ajaxform-12 input[type=date],
    .ajaxform-12 select,
    .ajaxform-12 textarea{
        color: #FFF;
        background-color:rgba(0,0,0,.15);
        height: 50px;
        border: none;
        border-radius: 3px;
        padding: 10px 20px 10px 20px;
        border:none;
        outline-style: none;
    }
    .ajaxform-12 select,
    .ajaxform-12 label{
        display: none;
    }
    .ajaxform-12 .message {
        margin-left: 0;
    }

    .ajaxform-12 .dg-form-content .from-footer{
        position: static;
        float: none;
    }
    .ajaxform-12 .btn,
    .ajaxform-12 .btn:link,
    .ajaxform-12 .btn:active,
    .ajaxform-12 .btn:visited,
    .ajaxform-12 .btn[type="button"],
    .ajaxform-12 .btn[type="submit"] {
        display: inline-block;
        color:#3ab634;
        padding: 0;
        height:50px;
        line-height:50px;
        padding:0px 30px;
        background-color:#FFF;
        transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
        border: none;
        border-radius: 25px;
        margin: 0px 0px 0 0;
        font-weight: 600;
    }
    .ajaxform-12 .btn * {
        color: #fff;
    }

    .ajaxform-12 .btn:hover{
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.22) ;
    }
    .ajaxform-12 .btn:active{
        box-shadow:0 2px 5px rgba(0, 0, 0, 0.22), 0 2px 3px rgba(0, 0, 0, 0.22) inset;
    }
    </style>
    {{else style=="ajaxform-13"}}
    <style class="build-css" data-class="${style}">
        .ajaxform-13 .dg-form-content{
            margin: 0 0 0 -12px;
        }
        .ajaxform-13 .dg-form-content > li{
            padding: 0 0 12px 12px;
        }
        .ajaxform-13 .dg-form-content label{
            color: #787878;
            margin:0 0 7px;
            display: none;
        }
        .ajaxform-13 .dg-form-content .from-footer{
            width: 100%;
            text-align: center;
            padding-top: 28px;
            padding-bottom: 0;
        }

        .ajaxform-13 input[type=text],
        .ajaxform-13 input[type=email],
        .ajaxform-13 input[type=url],
        .ajaxform-13 input[type=tel],
        .ajaxform-13 input[type=number],
        .ajaxform-13 input[type=date],
        .ajaxform-13 select,
        .ajaxform-13 textarea{
            color: #787878;
            background-color: #ffffff;
            height: 40px;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            font-weight: 700;
            border: 1px solid #e2e2e2;
        }


        .ajaxform-13 .btn,
        .ajaxform-13 .btn:link,
        .ajaxform-13 .btn:active,
        .ajaxform-13 .btn:visited,
        .ajaxform-13 .btn[type="button"],
        .ajaxform-13 .btn[type="submit"] {
            display: inline-block;
            font-size: 16px;
            color: #fff;
            padding: 0 30px;
            background-color:var(--button-color);
            transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
            border: none;
            height: 50px;
            border-radius: 3px;
            font-weight:600;
        }
        .ajaxform-13 .btn * {
            color: #fff;
        }
        .ajaxform-13 .btn:hover{
            background-color:var(--button-hover-color);
        }
    </style>
    {{else style=="ajaxform-14"}}
    <style class="build-css" data-class="${style}">
    .ajaxform-14 .dg-form-content{
        margin: 0 0 0 -30px;
    }
    .ajaxform-14 .dg-form-content > li{
        padding: 0 0 30px 30px;
    }
    .ajaxform-14 .dg-form-content label{
        color: #787878;
        margin:0 0 7px;
        display: none;
    }
    .ajaxform-14 .dg-form-content .from-footer{
        width: 100%;
        text-align: center;
        padding-bottom: 0;
    }

    .ajaxform-14 input[type=text],
    .ajaxform-14 input[type=email],
    .ajaxform-14 input[type=url],
    .ajaxform-14 input[type=tel],
    .ajaxform-14 input[type=number],
    .ajaxform-14 input[type=date],
    .ajaxform-14 select,
    .ajaxform-14 textarea{
        color: #787878;
        background-color: #ffffff;
        height: 50px;
        border: none;
        border-radius: 30px;
        padding: 15px 20px;
    }


    .ajaxform-14 .btn,
    .ajaxform-14 .btn:link,
    .ajaxform-14 .btn:active,
    .ajaxform-14 .btn:visited,
    .ajaxform-14 .btn[type="button"],
    .ajaxform-14 .btn[type="submit"] {
        display: inline-block;
        font-size: 16px;
        color: #fff;
        padding: 0 30px;
        background-color:var(--accent-color3);
        transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
        border: none;
        height: 50px;
        border-radius: 30px;
    }
    .ajaxform-14 .btn * {
        color: #fff;
    }
    </style>
     {{else style=="ajaxform-15"}}
     <style class="build-css" data-class="${style}">
        .ajaxform-15 .dg-form-content{
            margin: 0 0 0 -11px;
        }
        .ajaxform-15 .dg-form-content > li{
            padding: 0 0 11px 11px;
        }
        .ajaxform-15 .dg-form-content label{
            color: #787878;
            margin:0 0 7px;
            display: none;
        }
        .ajaxform-15 input[type=text], .ajaxform-15 input[type=email], .ajaxform-15 input[type=url], .ajaxform-15 input[type=tel], .ajaxform-15 input[type=number], .ajaxform-15 input[type=date], .ajaxform-15 select, .ajaxform-15 textarea{
            color: #787878;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #e2e2e2;
            height: 50px;
            padding: 12px 0;
        }
        .ajaxform-15 .dg-form-content .from-footer{
            padding-top: 28px;
        }
        .ajaxform-15 .btn, .ajaxform-15 .btn:link, .ajaxform-15 .btn:active, .ajaxform-15 .btn:visited, .ajaxform-15 .btn[type="button"], .ajaxform-15 .btn[type="submit"] {
            display: inline-block;
            font-size: 16px;
            color: #fff;
            padding: 0 30px;
            background-color:var(--accent-color3);
            transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
            border: none;
            height: 50px;
            border-radius: 30px;
        }
        .ajaxform-15 .form_submit{
            display:inline-block;
            position:relative;
        }
        .ajaxform-15 .form_submit:after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            pointer-events: none;
            box-shadow: -4px 3px 16px var(--accent-color3);
            border-radius: 50px;
            opacity: 0.3;
            mix-blend-mode:multiply;
            transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
        }
        .ajaxform-15 .form_submit:hover::after{
            opacity: 0.5;
        }
        .ajaxform-15 .btn * {
            color: #fff;
        }
     </style>
    {{else style=="ajaxform-16"}}
    <style class="build-css" data-class="${style}">
        .ajaxform-16 label{
            display: none;
        }
        .ajaxform-16 input[type=text], 
        .ajaxform-16 input[type=email], 
        .ajaxform-16 input[type=url], 
        .ajaxform-16 input[type=tel], 
        .ajaxform-16 input[type=number], 
        .ajaxform-16 input[type=date], 
        .ajaxform-16 select, 
        .ajaxform-16 textarea{
            border: 1px solid #dcdcdc;
            background: transparent;
            color: inherit;
            height: 58px;
            border-radius: 5px;
            padding: 10px 20px 10px 20px;
            outline-style: none;
            -webkit-transition: all 300ms ease-in;
            transition: all 300ms ease-in;
            box-shadow: 0 0 0 3px transparent inset;

        }
        .ajaxform-16 input[type=text]:focus, 
        .ajaxform-16 input[type=email]:focus, 
        .ajaxform-16 input[type=url]:focus, 
        .ajaxform-16 input[type=tel]:focus, 
        .ajaxform-16 input[type=number]:focus, 
        .ajaxform-16 input[type=date]:focus, 
        .ajaxform-16 select:focus, 
        .ajaxform-16 textarea:focus{
            box-shadow: 0 0 0 3px var(--accent-color) inset;
            border-color:var(--accent-color);
        }

        .ajaxform-16 .btn, 
        .ajaxform-16 .btn:link, 
        .ajaxform-16 .btn:active, 
        .ajaxform-16 .btn:visited, 
        .ajaxform-16 .btn[type="button"], 
        .ajaxform-16 .btn[type="submit"] {
            display: inline-block;
            font-size: 16px;
            color: #fff;
            padding: 0 30px;
            background-color:var(--button-color);
            transition: all .3s cubic-bezier(0.22,0.61,0.36,1);
            border: none;
            height: 50px;
            border-radius: 25px;
        }
        .text-center .ajaxform-16 .form_submit{
            text-align: center;
        } 
        .text-right .ajaxform-16 .form_submit{
            text-align: center;
        }
        .ajaxform-16 .btn:hover{
            background-color:var(--button-hover-color);
        }
    </style>
     {{/if}}

        
    <div class="ajaxform ${style} loading" data-url="${source}" data-message="${message}" data-successlink="${successlink}"  ></div>

    <script class="edit-mode-js" id="js-${moduleid}">
    moduleEditModeJs("validationEngineLanguage,validationEngine,ajaxform", "${moduleid}","ajaxform")
    </script>
</div>


