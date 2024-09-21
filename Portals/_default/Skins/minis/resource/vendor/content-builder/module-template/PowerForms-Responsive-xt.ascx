<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<div class="Module-PowerForms ${modulestyle}" id="PowerForms-${ModuleID}" data-action="${xf.GoAjaxFormUrl()}" #if($message && $message !="" ) data-message="${message}" #end#if($successlink && $successlink !="" ) data-successlink="${successlink}" #end 
#if(${xf.ViewSetting("PowerForms_Recaptcha_v3_Enable", false)} == true)
data-grecaptcha='{"key":"${xf.ViewSetting("PowerForms_Recaptcha_v3_SiteKey", "")}","action":"page${Module.TabId}/module${ModuleID}","id":"#GoogleRecaptchaResponse${ModuleID}"}'

#end

>
    #if(${DisplayForm})
    #if($FieldList.Count > 0)
    <ul class="form_list dg-form-content">
        #foreach($FieldItem in $FieldList)
        <li style="width:${xf.ViewItemSetting($FieldItem,"Itemwidth","100")}%">
            <div class="form_row form-control-wrap row${velocityCount}">
                #if(${xf.ViewItemSetting($FieldItem,"DisplayTitle","true")}=="true")
                <div class="form_label">
                    ${xf.ViewLable($FieldItem,":#if($FieldItem.Required == 1)<span class='form_required'> *</span>#end")}
                </div>
                #end
                <div class="form_input">
                    ${xf.ViewControl($FieldItem)}
                    ${xf.ViewInputDefault($FieldItem)}
                </div>
            </div>
        </li>
        #end
        #if($Module.Settings_Recaptcha_Enable)
        <li>
            <div class="dispalytable dispalycaptcha">
                <div class="form_label" style=" vertical-align:top; text-align:${xf.ViewItemSetting($FieldItem,"ItemTitleAlign","left")}; width:${xf.ViewItemSetting($FieldItem,"ItemTitlewidth","100")}px">
                </div>
                <div class="form_captcha">${xf.ViewCaptcha()}</div>
            </div>
        </li>
        #end
        <li class="from-footer">
            <div class="form_submit">
                <button type="submit" class="btn #if($SubmitButtonClass)${SubmitButtonClass}#end" aria-label="Submit">#if($SubmitButtonText)${SubmitButtonText}#else Submit #end</button>
                #if($DisplayResetButton)
                <button type="reset" class="btn #if($ResetButtonClass)${ResetButtonClass}#end" aria-label="Submit">#if($ResetButtonText)${ResetButtonText}#else Reset #end</button>
                #end
            </div>
        </li>


    </ul>
    #end

    #else
    #if(${Module.UserId} > 0)
    <div>${xf.ViewSetting("PowerForms_PromptAlreadySubmitted","You have already submitted the form.")}</div>

    #else
    <div>${xf.ViewSetting("PowerForms_PromptNotLogged","You need to log in to submit forms.")}</div>
    #end

    #end

    <input type="hidden" id="VerifyEncrypt${ModuleID}" name="VerifyEncrypt${ModuleID}" value="${VerifyEncrypt}" />
    <input type="hidden" id="VerifyString${ModuleID}" name="VerifyString${ModuleID}" value="${VerifyString}" />
    <input type="hidden" id="GoogleRecaptchaResponse${ModuleID}" name="GoogleRecaptchaResponse${ModuleID}" />
</div>
 

    #if($modulestyle == "powerforms-01")
    <style>
        .powerforms-01 .dg-form-content label{
            color: #787878;
            margin:0 0 7px;
            display: block;
        }
        .powerforms-01 .dg-form-content .from-footer{
            width: 100%;
            text-align: center;
            padding-bottom: 0;
        }

        .powerforms-01 input[type=text],
        .powerforms-01 input[type=email],
        .powerforms-01 input[type=url],
        .powerforms-01 input[type=tel],
        .powerforms-01 input[type=number],
        .powerforms-01 input[type=date],
        .powerforms-01 select,
        .powerforms-01 textarea{
            color: #787878;
            background-color: #ffffff;
            height: 50px;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            font-weight: 700;
            box-shadow: 0 0 15px rgba(0,0,0,.2);
        }


        .powerforms-01 .btn,
        .powerforms-01 .btn:link,
        .powerforms-01 .btn:active,
        .powerforms-01 .btn:visited,
        .powerforms-01 .btn[type="button"],
        .powerforms-01 .btn[type="submit"] {
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
        .powerforms-01 .btn * {
            color: #fff;
        }
        .powerforms-01 .btn:hover{
            background-color:var(--button-hover-color);
        }
    </style>
    #elseif($modulestyle == "powerforms-02")
    <style>
    .powerforms-02 .dg-form-content,
    .powerforms-02 .dg-form-content li{
        margin: 0;
        padding: 0;
        position: relative;
    }

    .powerforms-02 input[type=text],
    .powerforms-02 input[type=email],
    .powerforms-02 input[type=url],
    .powerforms-02 input[type=tel],
    .powerforms-02 input[type=number],
    .powerforms-02 input[type=date],
    .powerforms-02 select,
    .powerforms-02 textarea{
        color: #666666;
        background-color: #ffffff;
        height: 50px;
        border: none;
        border-radius: 25px;
        padding: 10px 160px 10px 20px;
        box-shadow: 0 0 15px rgba(0,0,0,.15);
    }
    .powerforms-02 label{
        display: none;
    }
    .powerforms-02 .message {
        margin-left: 0;
    }
    .powerforms-02 .dg-form-content .form_submit{
        position: absolute;
        right: 0;
        top: 0;
    }
    .powerforms-02 .dg-form-content .from-footer{
        position: static;
        float: none;
    }
    .powerforms-02 .btn,
    .powerforms-02 .btn:link,
    .powerforms-02 .btn:active,
    .powerforms-02 .btn:visited,
    .powerforms-02 .btn[type="button"],
    .powerforms-02 .btn[type="submit"] {
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
    .powerforms-02 .btn * {
        color: #fff;
    }
    .powerforms-02 .btn:hover{
        background-color: var(--button-hover-color);
    }
    </style>
    #elseif($modulestyle == "powerforms-03")
    <style>
    .powerforms-03 .dg-form-content label{
        color: #333333;
        margin:0 0 20px;
        display: block;
        font-size: 16px;
        font-weight: 600;
    }
    .powerforms-03 .dg-form-content .from-footer{
        width: 100%;
        text-align: left;
        padding-bottom: 0;
    }
    .powerforms-03 input[type=text],
    .powerforms-03 input[type=email],
    .powerforms-03 input[type=url],
    .powerforms-03 input[type=tel],
    .powerforms-03 input[type=number],
    .powerforms-03 input[type=date],
    .powerforms-03 select,
    .powerforms-03 textarea{
        color: #787878;
        background-color: #f6f6f6;
        height: 50px;
        border: none;
        border-radius: 3px;
        padding: 10px 20px;
    }

    .powerforms-03 .btn,
    .powerforms-03 .btn:link,
    .powerforms-03 .btn:active,
    .powerforms-03 .btn:visited,
    .powerforms-03 .btn[type="button"],
    .powerforms-03 .btn[type="submit"] {
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
    .powerforms-03 .btn * {
        color: #fff;
    }
    .powerforms-03 .btn:hover{
        background-color:var(--button-hover-color);
    }
    </style>
    #elseif($modulestyle == "powerforms-04")
    <style>
    .powerforms-04 .dg-form-content,
    .powerforms-04 .dg-form-content li{
        margin: 0;
        padding: 0;
        position: relative;
    }

    .powerforms-04 input[type=text],
    .powerforms-04 input[type=email],
    .powerforms-04 input[type=url],
    .powerforms-04 input[type=tel],
    .powerforms-04 input[type=number],
    .powerforms-04 input[type=date],
    .powerforms-04 select,
    .powerforms-04 textarea{
        color: #666666;
        background-color: #ffffff;
        height: 50px;
        border: none;
        border-radius: 25px;
        padding: 10px 20px 10px 20px;
        box-shadow: 0 0 15px rgba(0,0,0,.15);
    }
    .powerforms-04 label{
        display: none;
    }
    .powerforms-04 .message {
        margin-left: 0;
    }

    .powerforms-04 .dg-form-content .form_submit{
        position: absolute;
        right: 0;
        top: 0;
    }
    .powerforms-04 .dg-form-content .from-footer{
        position: static;
        float: none;
    }
    .powerforms-04 .btn,
    .powerforms-04 .btn:link,
    .powerforms-04 .btn:active,
    .powerforms-04 .btn:visited,
    .powerforms-04 .btn[type="button"],
    .powerforms-04 .btn[type="submit"] {
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
    .powerforms-04 .btn * {
        color: #fff;
    }
    .powerforms-04 .btn:hover{
        background-color: var(--button-hover-color);
    }
    .powerforms-04 .form_submit::after{
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
    #elseif($modulestyle == "powerforms-05")
    <style>
    .powerforms-05 .dg-form-content, .powerforms-05 .dg-form-content li{
        margin: 0;
        padding: 0;
        position: relative;
    }
    .powerforms-05 input[type=text], .powerforms-05 input[type=email], .powerforms-05 input[type=url], .powerforms-05 input[type=tel], .powerforms-05 input[type=number], .powerforms-05 input[type=date], .powerforms-05 select, .powerforms-05 textarea{
        color: #FFF;
        background-color:transparent;
        height: 50px;
        border: none;
        border-radius: 25px;
        padding: 10px 20px 10px 20px;
        border:1px solid #FFF;

    }
    .powerforms-05 label{
        display: none;
    }
    .powerforms-05 .message {
        margin-left: 0;

            }

    .powerforms-05 .dg-form-content .from-footer{
        position: static;
        float: none;
    }
    .powerforms-05 .btn, .powerforms-05 .btn:link, .powerforms-05 .btn:active, .powerforms-05 .btn:visited, .powerforms-05 .btn[type="button"], .powerforms-05 .btn[type="submit"] {
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
    .powerforms-05 .btn * {
        color: #fff;
    }
    .powerforms-05 .btn:hover{
        background-color:var(--button-hover-color);
    }
    </style>
    #elseif($modulestyle == "powerforms-06")
    <style>
    .powerforms-06 .dg-form-content-box.form-line-load {
        opacity: 0;
    }
    .powerforms-06 .dg-form-content .form-control-wrap {
        padding: 20px 0 0px;
    }
    .powerforms-06 .dg-form-content .form-control-wrap input[type=text],
    .powerforms-06 .dg-form-content .form-control-wrap input[type=email],
    .powerforms-06 .dg-form-content .form-control-wrap input[type=url],
    .powerforms-06 .dg-form-content .form-control-wrap input[type=tel],
    .powerforms-06 .dg-form-content .form-control-wrap input[type=number],
    .powerforms-06 .dg-form-content .form-control-wrap input[type=date],
    .powerforms-06 .dg-form-content .form-control-wrap select,
    .powerforms-06 .dg-form-content .form-control-wrap textarea {
        border: none;
        border-bottom: 1px solid #c8c8c8;
        padding-left: 0;
        padding-right: 0;
        padding-top: 0;
        height: 40px;
        outline: none;
    }

    .powerforms-06 .dg-form-content .form-control-wrap>.form_input {
        padding-top: 11px;
    }

    .powerforms-06 .dg-form-content .form-control-wrap>.form_label {
        position: absolute;
    }

    .powerforms-06 .dg-form-content .text-center .form_label {
        left: 50%;
        transform: translateX(-50%);
        -ms-transform: translateX(-50%);
        -webkit-transform: translateX(-50%);
    }

    .powerforms-06 .dg-form-content .wpcf7-quiz-label {
        display: block;
        margin-top: 15px;
        margin-bottom: -8px;
    }

    .powerforms-06 .dg-form-content .form_label.fixlabel {
        top: 32px;
        pointer-events: none;
        opacity: 1;
    }
    .powerforms-06 .dg-form-content .form_label.fixlabel label,
    .powerforms-06 .dg-form-content .form_label label{
        font-size: 15px;
        transition: all ease-in 200ms;
    }

    .powerforms-06 .dg-form-content .form_label {
        top: 8px;
        -moz-transition: all ease-in 200ms;
        -webkit-transition: all ease-in 200ms;
        -o-transition: all ease-in 200ms;
        -ms-transition: all ease-in 200ms;
        transition: all ease-in 200ms;
    }

    .powerforms-06 .dg-form-content .form_label.valid {
        top: 0px;
        -moz-transition: all ease-in 200ms;
        -webkit-transition: all ease-in 200ms;
        -o-transition: all ease-in 200ms;
        -ms-transition: all ease-in 200ms;
        transition: all ease-in 200ms;
    }
    .powerforms-06 .dg-form-content .form_label.valid label{
        font-size: 13px;
        color: #333333;
    }

    .powerforms-06 .dg-form-content .fixline:before {
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

    .powerforms-06 .dg-form-content .fixline.valid:before {
        width: 100%;
    }

    .powerforms-06 .dg-form-content .wpcf7-not-valid-tip {
        position: absolute
    }
    @media only screen and (max-width:767px) {
        .powerforms-06 .dg-form-content {
            display: table;
            min-width: 100%;
        }
        .powerforms-06 .dg-form-content>li {
            display: table-cell;
            float: none;
        }
        .powerforms-06 .from-footer {
            white-space: nowrap;
            width: 1%;
        }
        .powerforms-06 .dg-form-content::after {
            content: none;
        }
    }

    @media only screen and (max-width:767px) {
        .powerforms-06 .dg-form-content {
            display: block;
        }
        .powerforms-06 .dg-form-content>li {
            display: block!important;
            float: none;
            width: 100%!important;
        }
    }
    .powerforms-06 .dg-form-content .form-control-wrap input[type=text],
    .powerforms-06 .dg-form-content .form-control-wrap input[type=email],
    .powerforms-06 .dg-form-content .form-control-wrap input[type=url],
    .powerforms-06 .dg-form-content .form-control-wrap input[type=tel],
    .powerforms-06 .dg-form-content .form-control-wrap input[type=number],
    .powerforms-06 .dg-form-content .form-control-wrap input[type=date],
    .powerforms-06 .dg-form-content .form-control-wrap select,
    .powerforms-06 .dg-form-content .form-control-wrap textarea,
    .powerforms-06 .dg-form-content .fixline:before {
        border-bottom-color: #787878;
    }
    .powerforms-06 .btn,
    .powerforms-06 .btn:link,
    .powerforms-06 .btn:active,
    .powerforms-06 .btn:visited,
    .powerforms-06 .btn[type="button"],
    .powerforms-06 .btn[type="submit"] {
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
    .powerforms-06 .btn * {
        color: #fff;
    }
    .powerforms-06 .btn:hover{
        background-color: var(--button-hover-color);
    }
    </style>
    #elseif($modulestyle == "powerforms-07")
    <style>
    .powerforms-07 .dg-form-content label{
        color: #333333;
        margin:0 0 20px;
        display: block;
        font-size: 16px;
        font-weight: 600;
    }
    .powerforms-07 .dg-form-content .from-footer{
        width: 100%;
        text-align: left;
        padding-bottom: 0;
    }
    .powerforms-07 input[type=text],
    .powerforms-07 input[type=email],
    .powerforms-07 input[type=url],
    .powerforms-07 input[type=tel],
    .powerforms-07 input[type=number],
    .powerforms-07 input[type=date],
    .powerforms-07 select,
    .powerforms-07 textarea{
        color: #787878;
        background-color: #f6f6f6;
        height: 50px;
        border: none;
        border-radius: 3px;
        padding: 10px 20px;
    }
    .powerforms-07 .form_submit{
        display: inline-block;
        position: relative;
    }
    .powerforms-07 .form_submit::before {
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
    .powerforms-07 .form_submit::after{
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

    .powerforms-07 .form_submit:hover::before{
        color:var(--button-hover-color);
    }
    .powerforms-07 .btn,
    .powerforms-07 .btn:link,
    .powerforms-07 .btn:active,
    .powerforms-07 .btn:visited,
    .powerforms-07 .btn[type="button"],
    .powerforms-07 .btn[type="submit"] {
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
    .powerforms-07 .btn * {
        color: #fff;
    }
    .powerforms-07 .btn:hover{
        background-color: var(--button-hover-color);
    }
    </style>
    #elseif($modulestyle == "powerforms-08")
    <style>
        .powerforms-08 .dg-form-content-box.form-line-load {
            opacity: 0;
        }
        .powerforms-08 .dg-form-content .form-control-wrap {
            padding:19px 0 0px;
        }
        .powerforms-08 .dg-form-content .form-control-wrap input[type=text],
        .powerforms-08 .dg-form-content .form-control-wrap input[type=email],
        .powerforms-08 .dg-form-content .form-control-wrap input[type=url],
        .powerforms-08 .dg-form-content .form-control-wrap input[type=tel],
        .powerforms-08 .dg-form-content .form-control-wrap input[type=number],
        .powerforms-08 .dg-form-content .form-control-wrap input[type=date],
        .powerforms-08 .dg-form-content .form-control-wrap select,
        .powerforms-08 .dg-form-content .form-control-wrap textarea {
            border: none;
            border-bottom: 1px solid #a9b0b4;
            padding: 0;
            height: 35px;
            outline: none;
            background: none;
            line-height: 35px;
        }
        .powerforms-08 .dg-form-content .form-control-wrap>.form_label {
            position: absolute;
        }

        .powerforms-08 .dg-form-content .wpcf7-quiz-label {
            display: block;
            margin-top: 15px;
            margin-bottom: -8px;
        }

        .powerforms-08 .dg-form-content .form_label.fixlabel {
            top: 23px;
            pointer-events: none;
            opacity: 1;
        }
        .powerforms-08 .dg-form-content .form_label {
            top: 8px;
            -webkit-transition: all ease-in 200ms;
            transition: all ease-in 200ms;
        }

        .powerforms-08 .dg-form-content .form_label.fixlabel label,
        .powerforms-08 .dg-form-content .form_label label{
            font-size: 15px;
            transition: all ease-in 200ms;
       }

        .powerforms-08 .dg-form-content .form_label.valid,
        .powerforms-08 .dg-form-content .form_label:not(.fixlabel) {
            top: 0px;
            -webkit-transition: all ease-in 200ms;
            transition: all ease-in 200ms;
        }

        .powerforms-08 .dg-form-content .form_label.valid label,
        .powerforms-08 .dg-form-content .form_label:not(.fixlabel) label{
            font-size: 13px;
            color: #333333;
        }

        .powerforms-08 .dg-form-content .fixline:before {
            content: "";
            position: absolute;
            bottom: 0px;
            width: 0;
            border-bottom: 2px solid #787878;
            -webkit-transition: width ease-in 200ms;
            transition: width ease-in 200ms;
        }

        .powerforms-08 .dg-form-content .fixline.valid:before {
            width: 100%;
        }

        .powerforms-08 .dg-form-content .wpcf7-not-valid-tip {
            position: absolute
        }

        @media only screen and (max-width:767px) {
            .powerforms-08 .dg-form-content {
                display: block;
            }
            .powerforms-08 .dg-form-content>li {
                display: block!important;
                float: none;
                width: 100%!important;
            }
        }
        .powerforms-08 .btn,
        .powerforms-08 .btn:link,
        .powerforms-08 .btn:active,
        .powerforms-08 .btn:visited,
        .powerforms-08 .btn[type="button"],
        .powerforms-08 .btn[type="submit"] {
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
        .powerforms-08 .btn * {
            color: #fff;
        }
        .powerforms-08 .btn:hover{
            background-color:var(--button-hover-color);
        }
    </style>
    #elseif($modulestyle == "powerforms-09")
    <style>
        .powerforms-09 .dg-form-content,
        .powerforms-09 .dg-form-content li{
            margin: 0;
            padding: 0;
            position: relative;
        }

        .powerforms-09 input[type=text],
        .powerforms-09 input[type=email],
        .powerforms-09 input[type=url],
        .powerforms-09 input[type=tel],
        .powerforms-09 input[type=number],
        .powerforms-09 input[type=date],
        .powerforms-09 select,
        .powerforms-09 textarea{
            color: #666666;
            background-color: #ffffff;
            height: 50px;
            border: none;
            border-radius: 3px;
            padding: 10px 75px 10px 30px;
            box-shadow: 0 0 15px rgba(0,0,0,.15);
        }
        .powerforms-09 label{
            display: none;
        }
        .powerforms-09 .message {
            margin-left: 0;
        }

        .powerforms-09 .dg-form-content .form_submit{
            position: absolute;
            right: 0;
            top: 0;
        }
        .powerforms-09 .dg-form-content .from-footer{
            position: static;
            float: none;
        }
        .powerforms-09 .btn,
        .powerforms-09 .btn:link,
        .powerforms-09 .btn:active,
        .powerforms-09 .btn:visited,
        .powerforms-09 .btn[type="button"],
        .powerforms-09 .btn[type="submit"] {
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
        .powerforms-09 .btn * {
            color: #fff;
        }
        .powerforms-09 .btn:hover{
            background-color:var(--button-hover-color);
        }
        .powerforms-09 .form_submit::after{
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
    #elseif($modulestyle == "powerforms-10")
     <style>

        .powerforms-10 .dg-form-content,
        .powerforms-10 .dg-form-content li{
            margin: 0;
            padding: 0;
            position: relative;
        }

        .powerforms-10 input[type=text],
        .powerforms-10 input[type=email],
        .powerforms-10 input[type=url],
        .powerforms-10 input[type=tel],
        .powerforms-10 input[type=number],
        .powerforms-10 input[type=date],
        .powerforms-10 select,
        .powerforms-10 textarea{
            color: #ffffff;
            height: 50px;
            border: none;
            border-radius: 25px;
            padding: 10px 160px 10px 20px;
            background: none;
            box-shadow: 0 0 0 1px rgba(255,255,255,.3);
        }
        .powerforms-10 label{
            display: none;
        }
        .powerforms-10 .message {
            margin-left: 0;
        }
        .powerforms-10 .dg-form-content .form_submit{
            position: absolute;
            right: 0;
            top: 0;
        }
        .powerforms-10 .dg-form-content .from-footer{
            position: static;
            float: none;
        }
        .powerforms-10 .btn,
        .powerforms-10 .btn:link,
        .powerforms-10 .btn:active,
        .powerforms-10 .btn:visited,
        .powerforms-10 .btn[type="button"],
        .powerforms-10 .btn[type="submit"] {
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
        .powerforms-10 .btn * {
            color: #fff;
        }
        .powerforms-10 .btn:hover{
            background-color:var(--button-hover-color);
        }
        @media all and (max-width: 766px) {
            .powerforms-10 .btn,
            .powerforms-10 .btn:link,
            .powerforms-10 .btn:active,
            .powerforms-10 .btn:visited,
            .powerforms-10 .btn[type="button"],
            .powerforms-10 .btn[type="submit"] {
                font-size: 14px;
                padding: 0 20px;
            }
            .powerforms-10 input[type=text],
            .powerforms-10 input[type=email],
            .powerforms-10 input[type=url],
            .powerforms-10 input[type=tel],
            .powerforms-10 input[type=number],
            .powerforms-10 input[type=date],
            .powerforms-10 select,
            .powerforms-10 textarea{
                padding-right: 145px;
            }
        }
    </style>
    #elseif($modulestyle == "powerforms-11")
    <style>
        .powerforms-11 .dg-form-content,
        .powerforms-11 .dg-form-content li{
            position: relative;
        }
        .powerforms-11 input[type=text],
        .powerforms-11 input[type=email],
        .powerforms-11 input[type=url],
        .powerforms-11 input[type=tel],
        .powerforms-11 input[type=number],
        .powerforms-11 input[type=date],
        .powerforms-11 select,
        .powerforms-11 textarea{
            color: #FFF;
            background-color:transparent;
            height: 50px;
            border: none;
            border-radius: 25px;
            padding: 10px 20px 10px 20px;
            border:2px solid #FFF;
            outline-style: none;
        }
        .powerforms-11 select,
        .powerforms-11 label{
            display: none;
        }
        .powerforms-11 .message {
            margin-left: 0;
        }

        .powerforms-11 .dg-form-content .from-footer{
            position: static;
            float: none;
            text-align: center;
        }
        .powerforms-11 .btn,
        .powerforms-11 .btn:link,
        .powerforms-11 .btn:active,
        .powerforms-11 .btn:visited,
        .powerforms-11 .btn[type="button"],
        .powerforms-11 .btn[type="submit"] {
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
        .powerforms-11 .btn * {
            color: #fff;
        }
        .powerforms-11 .btn:hover{
            background-color:var(--button-hover-color);
        }
    </style>
    #elseif($modulestyle == "powerforms-12")
    <style>


    .powerforms-12 .dg-form-content,
    .powerforms-12 .dg-form-content li{
        position: relative;
    }
    .powerforms-12 input[type=text],
    .powerforms-12 input[type=email],
    .powerforms-12 input[type=url],
    .powerforms-12 input[type=tel],
    .powerforms-12 input[type=number],
    .powerforms-12 input[type=date],
    .powerforms-12 select,
    .powerforms-12 textarea{
        color: #FFF;
        background-color:rgba(0,0,0,.15);
        height: 50px;
        border: none;
        border-radius: 3px;
        padding: 10px 20px 10px 20px;
        border:none;
        outline-style: none;
    }
    .powerforms-12 select,
    .powerforms-12 label{
        display: none;
    }
    .powerforms-12 .message {
        margin-left: 0;
    }

    .powerforms-12 .dg-form-content .from-footer{
        position: static;
        float: none;
    }
    .powerforms-12 .btn,
    .powerforms-12 .btn:link,
    .powerforms-12 .btn:active,
    .powerforms-12 .btn:visited,
    .powerforms-12 .btn[type="button"],
    .powerforms-12 .btn[type="submit"] {
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
    .powerforms-12 .btn * {
        color: #fff;
    }

    .powerforms-12 .btn:hover{
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.22) ;
    }
    .powerforms-12 .btn:active{
        box-shadow:0 2px 5px rgba(0, 0, 0, 0.22), 0 2px 3px rgba(0, 0, 0, 0.22) inset;
    }
    </style>
    #elseif($modulestyle == "powerforms-13")
    <style>
        .powerforms-13 .dg-form-content{
            margin: 0 0 0 -12px;
        }
        .powerforms-13 .dg-form-content > li{
            padding: 0 0 12px 12px;
        }
        .powerforms-13 .dg-form-content label{
            color: #787878;
            margin:0 0 7px;
            display: none;
        }
        .powerforms-13 .dg-form-content .from-footer{
            width: 100%;
            text-align: center;
            padding-top: 28px;
            padding-bottom: 0;
        }

        .powerforms-13 input[type=text],
        .powerforms-13 input[type=email],
        .powerforms-13 input[type=url],
        .powerforms-13 input[type=tel],
        .powerforms-13 input[type=number],
        .powerforms-13 input[type=date],
        .powerforms-13 select,
        .powerforms-13 textarea{
            color: #787878;
            background-color: #ffffff;
            height: 40px;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            font-weight: 700;
            border: 1px solid #e2e2e2;
        }


        .powerforms-13 .btn,
        .powerforms-13 .btn:link,
        .powerforms-13 .btn:active,
        .powerforms-13 .btn:visited,
        .powerforms-13 .btn[type="button"],
        .powerforms-13 .btn[type="submit"] {
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
        .powerforms-13 .btn * {
            color: #fff;
        }
        .powerforms-13 .btn:hover{
            background-color:var(--button-hover-color);
        }
    </style>
    #elseif($modulestyle == "powerforms-14")
    <style>
    .powerforms-14 .dg-form-content{
        margin: 0 0 0 -30px;
    }
    .powerforms-14 .dg-form-content > li{
        padding: 0 0 30px 30px;
    }
    .powerforms-14 .dg-form-content label{
        color: #787878;
        margin:0 0 7px;
        display: none;
    }
    .powerforms-14 .dg-form-content .from-footer{
        width: 100%;
        text-align: center;
        padding-bottom: 0;
    }

    .powerforms-14 input[type=text],
    .powerforms-14 input[type=email],
    .powerforms-14 input[type=url],
    .powerforms-14 input[type=tel],
    .powerforms-14 input[type=number],
    .powerforms-14 input[type=date],
    .powerforms-14 select,
    .powerforms-14 textarea{
        color: #787878;
        background-color: #ffffff;
        height: 50px;
        border: none;
        border-radius: 30px;
        padding: 15px 20px;
    }


    .powerforms-14 .btn,
    .powerforms-14 .btn:link,
    .powerforms-14 .btn:active,
    .powerforms-14 .btn:visited,
    .powerforms-14 .btn[type="button"],
    .powerforms-14 .btn[type="submit"] {
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
    .powerforms-14 .btn * {
        color: #fff;
    }
    </style>
    #elseif($modulestyle == "powerforms-15")
     <style>
        .powerforms-15 .dg-form-content{
            margin: 0 0 0 -11px;
        }
        .powerforms-15 .dg-form-content > li{
            padding: 0 0 11px 11px;
        }
        .powerforms-15 .dg-form-content label{
            color: #787878;
            margin:0 0 7px;
            display: none;
        }
        .powerforms-15 input[type=text], .powerforms-15 input[type=email], .powerforms-15 input[type=url], .powerforms-15 input[type=tel], .powerforms-15 input[type=number], .powerforms-15 input[type=date], .powerforms-15 select, .powerforms-15 textarea{
            color: #787878;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #e2e2e2;
            height: 50px;
            padding: 12px 0;
        }
        .powerforms-15 .dg-form-content .from-footer{
            padding-top: 28px;
        }
        .powerforms-15 .btn, .powerforms-15 .btn:link, .powerforms-15 .btn:active, .powerforms-15 .btn:visited, .powerforms-15 .btn[type="button"], .powerforms-15 .btn[type="submit"] {
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
        .powerforms-15 .form_submit{
            display:inline-block;
            position:relative;
        }
        .powerforms-15 .form_submit:after {
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
        .powerforms-15 .form_submit:hover::after{
            opacity: 0.5;
        }
        .powerforms-15 .btn * {
            color: #fff;
        }
     </style>
    #elseif($modulestyle == "powerforms-16")
    <style>
        .powerforms-16 label{
            display: none;
        }
        .powerforms-16 input[type=text],
        .powerforms-16 input[type=email],
        .powerforms-16 input[type=url],
        .powerforms-16 input[type=tel],
        .powerforms-16 input[type=number],
        .powerforms-16 input[type=date],
        .powerforms-16 select,
        .powerforms-16 textarea{
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
        .powerforms-16 input[type=text]:focus,
        .powerforms-16 input[type=email]:focus,
        .powerforms-16 input[type=url]:focus,
        .powerforms-16 input[type=tel]:focus,
        .powerforms-16 input[type=number]:focus,
        .powerforms-16 input[type=date]:focus,
        .powerforms-16 select:focus,
        .powerforms-16 textarea:focus{
            box-shadow: 0 0 0 3px var(--accent-color) inset;
            border-color:var(--accent-color);
        }

        .powerforms-16 .btn,
        .powerforms-16 .btn:link,
        .powerforms-16 .btn:active,
        .powerforms-16 .btn:visited,
        .powerforms-16 .btn[type="button"],
        .powerforms-16 .btn[type="submit"] {
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


        
        .text-center .powerforms-16 .form_submit,.text-center .powerforms-16 input{
            text-align: center;
        }
        .text-right .powerforms-16 .form_submit,.text-right .powerforms-16 input{
            text-align: center;
        }
        .powerforms-16 .btn:hover{
            background-color:var(--button-hover-color);
        }
    </style>
    #end
    
