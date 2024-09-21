<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<div class="tab-content">
    <div class="form-group">
        <label class="control-label">Format:</label>
            <div class="control-cont checkbox-group">
                <input type="checkbox" value="y" id="FormatYears" /> <label>Years</label>
                <input type="checkbox" value="w" id="FormatWeeks" /> <label>Weeks</label>
                <input type="checkbox" value="d" id="FormatDays" /> <label>Days</label>
                <input type="checkbox" value="h" id="FormatHours" /> <label>Hours</label>
                <input type="checkbox" value="m" id="FormatMinutes" /> <label>Minutes</label>
                <input type="checkbox" value="s" id="FormatSeconds" /> <label>Seconds</label>
                <input type="checkbox" value="ms" id="FormatMilliseconds" /> <label>Milliseconds</label>
                <input type="text" class="dnnOptions" name="format" value="${format}" />
            </div>            
        
    </div>
    <div class="form-group">
            <label class="control-label">Labels:</label>
                <div class="control-cont">
                    <input type="text" class="dnnOptions conditional" data-condition="#FormatYears" data-default="Years" name="years" value="${years}" style="width:100px"/>
                    <input type="text" class="dnnOptions conditional" data-condition="#FormatWeeks" data-default="Weeks" name="weeks" value="${weeks}" style="width:100px"/>
                    <input type="text" class="dnnOptions conditional" data-condition="#FormatDays" data-default="Days" name="days" value="${days}" style="width:100px"/>
                    <input type="text" class="dnnOptions conditional" data-condition="#FormatHours" data-default="Hours" name="hours" value="${hours}" style="width:100px"/>
                    <input type="text" class="dnnOptions conditional" data-condition="#FormatMinutes" data-default="Minutes" name="minutes" value="${minutes}" style="width:100px"/>
                    <input type="text" class="dnnOptions conditional" data-condition="#FormatSeconds" data-default="Seconds" name="seconds" value="${seconds}" style="width:100px"/>
                    <input type="text" class="dnnOptions conditional" data-condition="#FormatMilliseconds" data-default="Milliseconds" name="milliseconds" value="${milliseconds}" style="width:100px"/>
                </div>            
            
        </div>

    <div class="form-group">
        <label class="control-label">Data:</label>
        <div class="control-cont">
            <input name="date" type="text" class="dnnOptions" value="${date}" />
            <ul style="font-size:13px;font-family: monospace;">
                <li><code>2018-11-25T22:10+05:00</code></li>
                <li><code>in 10 seconds</code></li>
                <li><code>in 5 minutes</code></li>
                <li><code>in 6 hours</code></li>
                <li><code>in 1 hour</code></li>
                <li><code>at 12</code> 12 o'clock each day</li>
                <li><code>at 9</code> 9 o'clock each day</li>
                <li><code>monday at 10:30</code> monday at 10:30</li>
                <li><code>at 15:10:05</code> each day at 15:10:05</li>
                <li><code>sunday at 10 zone +01:00</code> 10 o'clock on sunday with fixed timezone</li>
                <li><code>reset monday at 10:30</code> will count to next monday at 10:30 once it's monday 10:30:01.</li>
            </ul>
        </div>
    </div>


</div>


<!--build HTML-->

<div class="buildHTML">


        {{if $data.style == "countdown-01"}}
        <style class="build-css" data-class="countdown-01">
            .countdown-01.soon {
                padding: 0;
                
            }
            .countdown-01 .soon-group-sub {
                margin: 0px 64px;
                line-height: 1;
            }
            .countdown-01 .soon-group::after {
                content: ":";
                position: absolute;
                right: 100%;
                bottom: 28px;
                margin-right: 55px;
                font-size: 46px;
                font-weight: bold;
                font-family: Arial, Helvetica, sans-serif;
            }
            .countdown-01 .soon-group:first-child::after {
                content: none;
            }
            .countdown-01 .soon-group-sub:first-child {
                margin-left: 0;
            }
            .countdown-01 .soon-group-sub:last-child {
                margin-right: 0;
            }
            .countdown-01 .soon-group-inner {
                margin: 0!important;
            }
            .countdown-01 .soon-text {
                min-width: auto;
                line-height: 1;
                text-align: center;
            }
            .countdown-01 .soon-group .soon-value {
                font-size: 56px;
                font-weight: 700;
                margin: 0!important;
                line-height: 1;
            }
            .countdown-01 .soon-group .soon-label {
                font-size: 18px;
                font-weight: 400;
                margin: 2px 0 0!important;
            }
            .countdown-01 .soon-slot .soon-slot-inner{
                height: 1.25em;
            }
            @media only screen and (max-width:1199px) {
                .countdown-01 .soon-group-sub{
                    margin:-2px 35px;
                }
                .countdown-01 .soon-group::after{
                    bottom: 33px;
                    margin-right: 30px;
                }
            }
            @media only screen and (max-width:991px) {
                .countdown-01 .soon-group-sub{
                    margin:-2px 24px;
                }
                .countdown-01 .soon-group::after{
                    bottom: 33px;
                    margin-right: 17px;
                }
            }
            @media only screen and (max-width:767px) {
                .countdown-01 .soon-group .soon-value {
                    font-size: 28px !important;
                }
                .countdown-01 .soon-group-sub {
                    margin: 0 6px !important;
                }
                .countdown-01 .soon-group::after{
                    margin-right: 4px !important;
                    font-size: 20px;
                    bottom: 33px;
                }
                .countdown-01 .soon-group .soon-label{
                    font-size: 13px;
                }

            }
        </style>
        {{else $data.style == "countdown-02"}}
        <style class="build-css" data-class="countdown-02">
        div.countdown-02.soon {
            padding: 0;
            text-align: left;
        }
        .countdown-02 .soon-group-sub {
            margin: 0 ;
            padding: 0px 50px;
            line-height: 1;
        }
        .countdown-02 .soon-group::after {
            content: "";
            position: absolute;
            left: 0;
            top: 8px;
            bottom: 3px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            border-right: 1px solid #cccbcd;
        }
        .countdown-02 .soon-group:first-child::after {
            content: none;
        }
        .countdown-02 .soon-group-sub:first-child {
            padding-left: 0;
        }
        .countdown-02 .soon-group-sub:last-child {
            padding-right: 0;
        }
        .countdown-02 .soon-group-inner {
            margin: 0!important;
            color: #333333;
        }
        .countdown-02 .soon-text {
            min-width: auto;
            line-height: 1;
            text-align: center;
        }
        .countdown-02 .soon-group .soon-value {
            font-size: 56px;
            font-weight: 700;
            margin: 0!important;
            line-height: 1;
        }
        .countdown-02 .soon-group .soon-label {
            font-size: 18px;
            font-weight: 400;
            margin: 2px 0 0!important;
        }
        .countdown-02 .soon-slot .soon-slot-inner{
            height: 1.25em;
        }
        @media only screen and (max-width:1199px) {
            .countdown-02 .soon-group-sub{
                padding:0 35px;
            }
         
        }
        @media only screen and (max-width:991px) {
            .countdown-02 .soon-group-sub{
                padding:0 24px;
            }
            .countdown-02 .soon-group .soon-value {
                font-size: 36px;
            }
            
        }
        @media only screen and (max-width:767px) {
            .countdown-02 .soon-group-sub{
                padding:0 20px;
            }  
        }
         </style>
         {{else $data.style == "countdown-03"}}
         <style class="build-css" data-class="countdown-03">
            div.countdown-03.soon {
                padding: 0;
            }
            .countdown-03 .soon-group-sub {
                margin: 0 ;
                padding: 18px 70px;
                line-height: 1;
            }
            .countdown-03 .soon-group::after {
                content: "";
                position: absolute;
                left: 0;
                top: 8px;
                bottom: 3px;
                font-weight: bold;
                font-family: Arial, Helvetica, sans-serif;
                border-right: 1px dashed #6f7191;
            }
            .countdown-03 .soon-group:first-child::after {
                content: none;
            }
            .countdown-03 .soon-group-sub:first-child {
                padding-left: 0;
            }
            .countdown-03 .soon-group-sub:last-child {
                padding-right: 0;
            }
            .countdown-03 .soon-group-inner {
                margin: 0!important;
            }
            .countdown-03 .soon-text {
                min-width: auto;
                line-height: 1;
                text-align: center;
            }
            .countdown-03 .soon-group .soon-value {
                font-size: 72px;
                font-weight: 700;
                margin: 0!important;
                line-height: 1;
            }
            .countdown-03 .soon-group span.soon-label {
                font-size: 16px;
                font-weight: 400;
                margin:0!important;
            }
            .countdown-03 .soon-slot .soon-slot-inner{
                height: 1em;
            }
            .countdown-03 .soon-slot .soon-slot-inner span{
                color:var(--accent-color);
            }

            @media only screen and (max-width:1199px) {
                .countdown-03 .soon-group-sub{
                    padding:0 35px;
                }
            
            }
            @media only screen and (max-width:991px) {
                .countdown-03 .soon-group-sub{
                    padding:0 24px;
                }
                .countdown-03 .soon-group .soon-value {
                    font-size: 36px;
                }
                
            }
            @media only screen and (max-width:767px) {
                .countdown-03 .soon-group-sub{
                    padding:0 20px;
                }  
            }
          </style>

        {{else $data.style == "countdown-04"}}
        <style class="build-css" data-class="countdown-04">
            .countdown-04.soon {
                padding: 0;
                text-align: left;
            }
            .countdown-04 .soon-group-sub {
                margin: 0px 14px;
                line-height: 1;
            }
            .countdown-04 .soon-group::after {
                content: ":";
                position: absolute;
                right: 100%;
                bottom: 28px;
                margin-right: 11px;
                font-size: 18px;
                font-weight: bold;
                font-family: Arial, Helvetica, sans-serif;
                color: #ffae23;
            }
            .countdown-04 .soon-group:first-child::after {
                content: none;
            }
            .countdown-04 .soon-group-sub:first-child {
                margin-left: 0;
            }
            .countdown-04 .soon-group-sub:last-child {
                margin-right: 0;
            }
            .countdown-04 .soon-group-inner {
                margin: 0!important;
            }
            .countdown-04 .soon-text {
                min-width: auto;
                line-height: 1;
                text-align: center;
            }
            .countdown-04 .soon-group .soon-value {
                color: #ffae23;
                font-size: 60px;
                font-weight: 600;
                margin: 0!important;
                line-height: 1;
            }
            .countdown-04 .soon-group .soon-value *{
                color: inherit;
            }
            .countdown-04 .soon-group .soon-value .soon-slot:last-child{
                margin-right: -.140em;
            }
            .countdown-04 .soon-group .soon-value .soon-slot+.soon-slot{
                margin-left: -.40em;
            }
            .countdown-04 .soon-group .soon-label {
                font-size: 16px;
                font-weight: 400;
                margin: 2px 0 0!important;
                color: #ffffff;
            }
            .countdown-04 .soon-slot .soon-slot-inner{
                height: 1em;
            }
            @media only screen and (max-width:767px) {
                .countdown-04 .soon-group .soon-value {
                    font-size: 28px !important;
                }
                .countdown-04 .soon-group-sub {
                    margin: 0 6px !important;
                }
                .countdown-04 .soon-group::after{
                    margin-right: 4px !important;
                    bottom: 23px;
                }
                .countdown-04 .soon-group .soon-label{
                    font-size: 13px;
                }
            }
        </style>
        {{else $data.style == "countdown-05"}}
        <style class="build-css" data-class="countdown-05">
            
        .countdown-05 {color:#fff;}
        .countdown-05.soon{
            padding: 36px 0 24px;
        }
        .countdown-05 .soon-label {color:#fff;}
        .countdown-05 {font-family:"Source Sans Pro",sans-serif;}
        .countdown-05 .soon-ring-progress {background-color:#b8b4b5; color:var(--accent-color);}
        .countdown-05 .soon-ring-progress {border-top-width:6px;}
        .countdown-05 .soon-ring-progress {border-bottom-width:2px;}
        .countdown-05 .soon-group .soon-value {
                font-size: 48px;
                font-weight: 400;
            }
        .countdown-05>.soon-group>.soon-group-inner>.soon-group-separator>.soon-group-inner>.soon-group-sub>.soon-group-inner, 
        .countdown-05>.soon-group>.soon-group-inner>.soon-group-sub>.soon-group-inner, 
        .countdown-05>.soon-group>.soon-group-inner>.soon-group-separator>.soon-group-inner>.soon-group-sub>.soon-group-inner, 
        .countdown-05>.soon-group>.soon-group-inner>.soon-group-sub>.soon-group-inner{
            min-width: 4.4em !important;
            margin:0 .8em!important;
        }

        .countdown-05 .soon-group .soon-label{
                font-size: 18px!important;
        }
        @media only screen and (max-width:991px) {
            .countdown-05 .soon-group .soon-value {
                font-size: 32px !important;
            }
        }
        @media only screen and (max-width:767px) {
            .countdown-05.soon{
                padding: 0;
            }
            .countdown-05 .soon-group .soon-value {
                font-size: 28px !important;
            }
            .countdown-05 .soon-group-sub {
                margin: 0 6px !important;
            }
            .countdown-05 .soon-group::after{
                margin-right: 4px !important;
                bottom: 23px;
            }
            .countdown-05 .soon-group .soon-label{
                font-size: 13px!important;
            }
            .countdown-05>.soon-group>.soon-group-inner>.soon-group-separator>.soon-group-inner>.soon-group-sub>.soon-group-inner, 
            .countdown-05>.soon-group>.soon-group-inner>.soon-group-sub>.soon-group-inner, 
            .countdown-05>.soon-group>.soon-group-inner>.soon-group-separator>.soon-group-inner>.soon-group-sub>.soon-group-inner, 
            .countdown-05>.soon-group>.soon-group-inner>.soon-group-sub>.soon-group-inner{
                margin:0 .4em!important;
            }
            .countdown-05.soon>.soon-group>.soon-group-inner{
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
            }
            .countdown-05.soon>.soon-group>.soon-group-inner > .soon-group-sub{
                max-width: 45%;
                margin-bottom: 15px !important;
            }
            
        }


        </style>
        {{/if}}
       
      

    {LT}div class="soon ${style} loading" data-face="slot fade" data-layout="group" data-due="${date}" data-format="${format}" {{if years}} data-labels-years="${years}"{{/if}}{{if weeks}} data-labels-weeks="${weeks}"{{/if}}{{if days}} data-labels-days="${days}"{{/if}}{{if hours}} data-labels-hours="${hours}"{{/if}}{{if minutes}} data-labels-minutes="${minutes}"{{/if}}{{if seconds}} data-labels-seconds="${seconds}"{{/if}}{{if milliseconds}} data-labels-milliseconds="${milliseconds}" {{/if}}{{if $data.style == "countdown-05"}} data-visual="ring cap-round ring-width-custom  align-center gap-0" data-separate-chars="false"{{/if}}{GT}
    {LT}/div {GT}
    
 
    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("soon", "${moduleid}", "soon")
    </script>
</div>



