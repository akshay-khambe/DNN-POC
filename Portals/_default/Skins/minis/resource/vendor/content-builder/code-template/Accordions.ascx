<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="<%= SkinPath %>#">Accordion Item</a></li>
    <li><a href="<%= SkinPath %>#">Accordion Options</a></li>
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
                            
                            {{if $data.style == "accordion01" ||  $data.style == "accordion06"}}
                            <div class="form-group">
                                <label class="control-label">Icon:</label>
                                <div class="control-cont">
                                    <input name="icon" type="text" class="dynamicOptions iconSetting" />
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
 
        <div class="form-group">
            <label class="control-label">Fade:</label>
            <div class="control-cont">
                <input name="accfade" ${accfade} type="checkbox" class="dnnOptions" data-default="checked" />
            </div>
        </div>
    
        <div class="form-group">
            <label class="control-label">Open:</label>
            <div class="control-cont">
                <input name="accopen" ${accopen} type="checkbox" class="dnnOptions" data-default="checked" id="accopen"/>
            </div>
        </div>
        <div class="form-group conditional"  data-condition="#accopen">
            <label class="control-label">Open Index:</label>
            <div class="control-cont">
                <input name="accopenindex" type="number" class="dnnOptions" value="${accopenindex}"  data-default="1" />
            </div>
        </div>



        <div class="form-group">
            <label class="control-label">Interval:</label>
            <div class="control-cont">
                <input name="interval" type="number" class="dnnOptions" value="${interval}" placeholder="400" />
            </div>
        </div>
               
            
    </div>


</div>


<!--build HTML-->
         
<div class="buildHTML">
    {{if $data.style == "accordion01"}}
    <style class="build-css" data-class="accordion01">
        .accordion01 h4{
            margin: 0;
        }
        .accordion01 .panel-heading a{
            color: #333333;
            font-size: 18px;
            padding:9px 30px;
            display: block;
            overflow: hidden;
            position: relative;
        }
        .accordion01 .panel-heading a.has-icon{
            padding-left: 70px;
        }
        .accordion01 .panel-heading a i{
            color:var(--accent-color);
            width: 33px;
            margin-right: 4px;
            display: inline-block;
            font-size: 26px;
            vertical-align: middle;
            transition: color ease 300ms;
            position: absolute;
            left: 30px;
            margin-top: -1px;
        }
        .accordion01 .accordion-content{
            display: none;
            padding:0px 30px;
        }
        .accordion01 .accordion-content .has-icon{
            padding-left: 42px;
        }
        .accordion01 .accordion-item{
            padding: 21px 0;
            border-bottom:1px solid #e4e4e4;
            transition: all ease 300ms;
            margin-bottom: -2px;
        }
        .accordion01 .accordion-item.opened{
            border-color: transparent;
            background-color:var(--accent-color);
            color: #fff;
            border-radius: 3px;
        }
        .accordion01 .accordion-item.opened a,
        .accordion01 .accordion-item.opened a i{
            color: #fff;
        }
    </style>

    {{else $data.style == "accordion02"}}
    <style class="build-css" data-class="accordion02">
        .accordion02 h4{
            margin: 0;
        }
        .accordion02 .panel-heading a{
            color: #333333;
            font-size: 20px;
            padding:12px 30px;
            display: block;
            overflow: hidden;
            position: relative;
            font-weight: 600;
        }

        .accordion02 .accordion-content{
            display: none;
            padding:0px 30px;
        }
        .accordion02 .accordion-content .panel-body{
            position: relative;
            padding: 0px 20px;
            border-left: 2px solid transparent;
        }
        .accordion02 .accordion-content .panel-body::before{
            content: "";
            position: absolute;
            display: block;
            top: 8px;
            bottom: 6px;
            left: -2px;
            width: 2px;
            background:var(--accent-color);
        }
        .accordion02 .accordion-content .panel-body p{
            margin-bottom: 23px;
            margin-top: 23px;
        }
        .accordion02 .accordion-item{
            padding: 0;
            border-bottom:1px dashed #d5d5d5;
            transition: all ease 300ms;
            margin-bottom: -2px;
        }
        .accordion02 .accordion-item .panel-heading{
            transition: background-color ease 300ms;
        }
        .accordion02 .accordion-item.opened{

        }
        .accordion02 .accordion-item.opened .panel-heading{
            border-color: transparent;
            background-color:var(--accent-color);
            color: #fff;
            border-radius: 3px;
        }
        .accordion02 .accordion-item.opened a,
        .accordion02 .accordion-item.opened a i{
            color: #fff;
        }
    </style>

    {{else $data.style == "accordion03"}}
    <style class="build-css" data-class="accordion03">
        .accordion03 h4{
            margin: 0 0 4px;
        }
        .accordion03 .panel-heading a{
            position: relative;
            color: #333333;
            font-size: 18px;
            padding:9px 30px 9px 60px;
            display: block;
            overflow: hidden;
        }
        .accordion03 .accordion-content{
            display: none;
            padding:0px 60px;
        }
        .accordion03 .accordion-item{
            padding: 21px 0 17px;
            border-bottom: 1px solid #e4e4e4;
            transition: all ease 300ms;
            margin-bottom: -2px;
        }
        .accordion03 .panel-heading .arrow {
            position: absolute;
            top: 0;
            left: 11px;
            height: 43px;
            width: 40px;
        }
        .accordion03 .panel-heading .arrow::after,
        .accordion03 .panel-heading .arrow::before {
            position: absolute;
            content: '';
            top: 50%;
            left: 50%;
            z-index: 1;
            transition: all ease 300ms;
        }
        .accordion03 .panel-heading .arrow::after {
            width: 3px;
            height: 17px;
            background: #333333;
            margin: -10px 0 0 -1px;
            opacity: 1;
        }
        .accordion03 .panel-heading .arrow::before {
            width: 17px;
            height: 3px;
            background: #333333;
            margin: -3px 0 0 -8px;
        }
        .accordion03 .accordion-item.opened{
            border-color: transparent;
            background-color:var(--accent-color);
            color: #fff;
            -webkit-box-shadow: 0px 0px 35px rgba(0,0,0,0.1) ;
            box-shadow: 0px 0px 35px rgba(0,0,0,0.1) ;
        }
        .accordion03 .accordion-item.opened a,
        .accordion03 .accordion-item.opened a::before{
            color: #fff;
        }
        .accordion03 .accordion-item.opened .arrow::before,
        .accordion03 .accordion-item.opened .arrow::after{
            background-color: #fff;
        }   
        .accordion03 .accordion-item.opened .arrow::after{
            opacity: 0;
        }
    </style>
    {{else $data.style == "accordion04"}}
    <style class="build-css" data-class="accordion04">
        .accordion04 h4{
            margin: 0 0 0;
        }
        .accordion04 .panel-heading a{
            position: relative;
            color: #333333;
            font-size: 18px;
            padding:9px 30px 9px 60px;
            display: block;
            overflow: hidden;
        }
        .accordion04 .accordion-content{
            display: none;
            padding: 1px 60px;
        }
        .accordion04 .accordion-item{
            position: relative;
            padding: 8px 0 9px;
            transition: all ease 300ms;
            margin-bottom: 30px;
            box-shadow:-5px 5px 25px rgba(53,38,165,.2);
            border-radius: 4px;
            background-color: #FFF;
        }
        .accordion04 .panel-heading .arrow {
            position: absolute;
            top: 0;
            left: 11px;
            height: 100%;
            width: 40px;
        }
        .accordion04 .panel-heading .arrow::after, .accordion04 .panel-heading .arrow::before {
            position: absolute;
            content: '';
            top: 50%;
            left: 50%;
            z-index: 1;
            transition: all ease 300ms;
        }
        .accordion04 .panel-heading .arrow::after {
            width: 3px;
            height: 17px;
            background: var(--accent-color);
            margin: -10px 0 0 -1px;
            opacity: 1;
        }
        .accordion04 .panel-heading .arrow::before {
            width: 17px;
            height: 3px;
            background: var(--accent-color);
            margin: -3px 0 0 -8px;
        }
        .accordion04 .accordion-item.opened{
            border-color: transparent;
            background-color:var(--accent-color);
            color: #fff;
        }
        .accordion04 .accordion-item.opened a, .accordion04 .accordion-item.opened a::before{
            color: #fff;
        }
        .accordion04 .accordion-item.opened .arrow::before, .accordion04 .accordion-item.opened .arrow::after{
            background-color: #fff!important;
        }
        .accordion04 .accordion-item.opened .arrow::after{
            opacity: 0;
        }
    </style>

    {{else $data.style == "accordion05"}}
    <style class="build-css" data-class="accordion05">
        .accordion05 h4{
            margin: 0 0 0;
        }
        .accordion05 .panel-heading a{
            position: relative;
            color: #333333;
            font-size: 20px;
            padding:16px 70px 16px 30px;
            display: block;
            overflow: hidden;
        }
        .accordion05 .accordion-content{
            display: none;
            padding: 25px 30px;
        }
        .accordion05 .accordion-content p:last-child{
            margin: 0;
        }
        .accordion05 .panel-heading{
            padding: 0;
            margin: -1px;
            border-radius: 4px 4px 0 0;
            transition: all ease 300ms;
        }
        .accordion05 .accordion-item{
            position: relative;
            transition: all ease 300ms;
            margin-bottom: 30px;
            box-shadow:-5px 5px 25px rgba(53,38,165,.2);
            border-radius: 4px;
            border:1px solid #d5d5d5;
            border-left: 3px solid var(--accent-color);
        }
        .accordion05 .accordion-item .panel-heading .arrow {
            position: absolute;
            top: 15px;
            right: 29px;
            height: 30px;
            width: 30px;
            border-radius: 50%;
            background-color: var(--accent-color);
            color: #fff;
            transition: background-color ease 300ms;
        }

        .accordion05 .accordion-item .panel-heading .arrow::after {
            position: absolute;
            content: '';
            width: 9px;
            height: 9px;
            border-right:2px solid currentColor;
            border-bottom:2px solid currentColor;
            position: absolute;
            top: 11px;
            left: 10px;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            -webkit-transform-origin: center center;
            transform-origin: center center;
            z-index: 1;
            transition: all ease 300ms;
        }
        .accordion05 .accordion-item.opened .panel-heading .arrow::after{
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
            top: 10px;
        }
        .accordion05 .accordion-item.opened .panel-heading{
            background-color: var(--accent-color) ;
        }
        .accordion05 .accordion-item.opened .panel-heading a{
            color: #ffffff;
        }


        .accordion05 .accordion-item:nth-child(4n+1){
            border-left-color:var(--accent-color3);
        }
        .accordion05 .accordion-item:nth-child(4n+1) .panel-heading .arrow,
        .accordion05 .accordion-item:nth-child(4n+1).opened .panel-heading{
            background-color: var(--accent-color3) ;
        }
        .accordion05 .accordion-item.opened:nth-child(4n+1) .panel-heading .arrow{
            color: var(--accent-color3);
        }
        .accordion05 .accordion-item:nth-child(4n+2){
            border-left-color:var(--accent-color2);
        }
        .accordion05 .accordion-item:nth-child(4n+2) .panel-heading .arrow,
        .accordion05 .accordion-item:nth-child(4n+2).opened .panel-heading{
            background-color: var(--accent-color2) ;
        }
        .accordion05 .accordion-item.opened:nth-child(4n+2) .panel-heading .arrow{
            color: var(--accent-color2);
        }
        .accordion05 .accordion-item:nth-child(4n+3){
            border-left-color:var(--accent-color4);
        }
        .accordion05 .accordion-item:nth-child(4n+3) .panel-heading .arrow,
        .accordion05 .accordion-item:nth-child(4n+3).opened .panel-heading{
            background-color: var(--accent-color4) ;
        }
        .accordion05 .accordion-item.opened:nth-child(4n+3) .panel-heading .arrow{
            color: var(--accent-color4);
        }
        .accordion05 .accordion-item:nth-child(4n+4){
            border-left-color:var(--accent-color);
        }
        .accordion05 .accordion-item:nth-child(4n+4) .panel-heading .arrow,
        .accordion05 .accordion-item:nth-child(4n+4).opened .panel-heading{
            background-color: var(--accent-color) ;
        }
        .accordion05 .accordion-item.opened:nth-child(4n+4) .panel-heading .arrow{
            color: var(--accent-color);
        }

        .accordion05 .accordion-item.opened .panel-heading .arrow{
            background-color:#ffffff;
            color: var(--accent-color);
        }

    </style>
    {{else $data.style == "accordion06"}}
    <style class="build-css" data-class="accordion06">


.accordion06 h4{
	margin: 0;
}
.accordion06 .panel-heading{
	background-color: #f4f4f4;
	border-radius: 3px;
	transition: all ease 300ms;
}
.accordion06 .panel-heading a{
	color: #333333;
	font-size: 18px;
	padding:13px 35px 13px 20px;
	display: block;
	overflow: hidden;
	position: relative;
	font-weight: 600;
}
.accordion06 .panel-heading a.has-icon{
	padding-left: 50px;
}
.accordion06 .panel-heading a i{
	display: inline-block;
	vertical-align: middle;
	position: absolute;
	left: 20px;
    margin-top: 3px;
    color: currentColor;
}
.accordion06 .accordion-content{
	display: none;
	padding:25px 20px 0;
}
.accordion06 .accordion-content p:last-child{
	margin-bottom: 0;
}

.accordion06 .accordion-item{
	margin:0 0 30px;
}
.accordion06 .accordion-item.opened{
}
.accordion06 .accordion-item.opened .panel-heading{
	background-color:var(--accent-color);
	
}
.accordion06 .accordion-item.opened .panel-heading a{
	color: #fff;
} 
.accordion06 .accordion-item .arrow{
    position: absolute;
    content: '';
    width: 9px;
    height: 9px;
    border-right: 2px solid currentColor;
    border-bottom: 2px solid currentColor;
    position: absolute;
    top: 21px;
    right: 20px;
    -webkit-transform: rotate(-45deg);
    transform: rotate(-45deg);
    -webkit-transform-origin: center center;
    transform-origin: center center;
	z-index: 1;
	color: #808080;
	transition:all ease 300ms;
}
.accordion06 .accordion-item.opened .arrow{
    -webkit-transform: rotate(45deg);
	transform: rotate(45deg);
	top: 19px;
	color: #ffffff;
}
    </style>
     {{else $data.style == "accordion07"}}
     <style class="build-css" data-class="accordion07">
    .accordion07 h4{
        margin: 0 ;
    }
    .accordion07 .accordion-header{
        border: 2px solid #ebebeb;
        margin:0 0 22px;
    }
    .accordion07 .panel-heading a{
        position: relative;
        color: #333333;
        font-size: 18px;
        padding:16px 30px 15px 75px;
        display: block;
        overflow: hidden;
    }
    .accordion07 .accordion-content{
        display: none;
        padding:0px 15px;
    }
    .accordion07 .accordion-item{
        transition: all ease 300ms;
    }
    .accordion07 .panel-heading .arrow {
        position: absolute;
        top: 0;
        left: 0;
        height: 100%;
        width: 56px;
        border-right: 2px solid #ebebeb;

    }
    .accordion07 .panel-heading .arrow::after,
    .accordion07 .panel-heading .arrow::before {
        position: absolute;
        content: '';
        top: 50%;
        left: 50%;
        z-index: 1;
        transition: all ease 300ms;
    }
    .accordion07 .panel-heading .arrow::after {
        width: 3px;
        height: 17px;
        background: #333333;
        margin: -9px 0 0 -1px;
        opacity: 1;
    }
    .accordion07 .panel-heading .arrow::before {
        width: 17px;
        height: 3px;
        background: #333333;
        margin: -2px 0 0 -8px;
    }
    .accordion07 .accordion-item.opened{
        
    }
    .accordion07 .accordion-item.opened a,
    .accordion07 .accordion-item.opened a::before{
        color:var(--accent-color);
    }
    .accordion07 .accordion-item.opened .arrow::before,
    .accordion07 .accordion-item.opened .arrow::after{
        background-color: var(--accent-color);
    }   
    .accordion07 .accordion-item.opened .arrow::after{
        opacity: 0;
    }
    .accordion07 .accordion-content .panel-body{
        padding: 0 0 18px;
    }
    </style>

    {{/if}}







    <div class="dg-accordion panel-group accordion-${moduleid} accordion-${size} ${style}" data-fade="${$data.accfade?true:false}" data-open="${$data.accopen?true:false}" data-index="${accopenindex}" data-interval="${interval}">
        {{if $data.items}}
        {{each(prop, val) $data.items }}
        <div class="accordion-item panel panel-default">
            <div class="accordion-header panel-heading">
                <h4>
                    <a class="collapsed{{if val.icon}} has-icon{{/if}}" href="javascript://">
                        {{if val.icon}}
                            {{if val.icon.indexOf("sico")!=-1}}
                            <i class="${val.icon} mod-icon"><svg>{LT}use xlink:href="#${val.icon.split(" ")[1]}"{GT}{LT}/use{GT}</svg> </i>
                            {{else val.icon.indexOf("icon-svg")!=-1}}
                            <i class="${val.icon}"> {LT}svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" id="${val.icon.split("icon-svg icon-")[1]}"{GT}{LT}/svg{GT}</i>
                            {{/if}}
                        {{/if}}
                        ${val.title}
                        <span class="arrow"></span>
                    </a>
                </h4>
            </div>
            <div class="accordion-content panel-collapse">
                <div class="panel-body{{if val.icon}} has-icon{{/if}}">
                    <p>{{html val.description}}</p>
                </div>
            </div>
        </div>
        {{/each}}
        {{/if}}
    </div>
    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("Accordions", "${moduleid}")
    </script>
</div>
