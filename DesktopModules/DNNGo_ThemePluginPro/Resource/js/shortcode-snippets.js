/*************************************************** Row ****************************************************/

ShortcodeBack.register('row', function (attr, content) {
	var newCode = restoreSource("[row] [/row]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');

	var bgimages = attr.bgimages ? "background-image: url('" + decodeURIComponent(attr.bgimages) + "');" : "";
	var bgcolor = attr.bgcolor ? "background-color:" + attr.bgcolor + ";" : "";
	var bg = bgimages || bgcolor ? `<span class="bg" style="${bgcolor}${bgimages}"></span>` : '';
	var full = "";
	var className = [];
			className = designHideElement(attr,className);
			className = className.join(" ");

	if (attr.fullwidth) {
		full = ' <span class="icon fa fa-arrows-h"></span> ';
	}

	var control = controlbox({
		type: 'row',
		title: "Row Settings",
		other: `${full}${bg}`
	});




	return `<div class="lyrow lyrow-cc ui-draggable" style="display: block;"> 
				${control}
				<div class="view">
					<div class="row-fluid clearfix codetag ${className} ${ThemeOptions.BootstrapVersion=="v4"?'am-row':''} ${attr.alignment?attr.alignment:'' }" code="${newCode}">
						${content}
					</div>
				</div>
			</div>`;
});
Shortcode.register('row', function (attr, content) {
	var fullwidth = attr.fullwidth,
		className = [],
		id = attr.id ? attr.id : randomNumber(),
		customCSS = [],
		html = '',
		htmlend = '',
		style = false,
		bgParallax = '',
		fixedelement = '';

	if (attr.gap) {
		className.push("column-gap-" + attr.gap)
	}
	if (attr.fullheight || attr.equalheight || attr.content_placement) {
		className.push("row-flex")
	}
	if (attr.fullheight) {
		className.push("full-height")
		className.push("col-pos-" + attr.columns_placement)
	}
	if (attr.equalheight) {
		className.push("equal-height")
	}
	if (attr.content_placement) {
		className.push("cont-pos-" + attr.content_placement)
	}
	if (attr.alignment) {
		className.push(attr.alignment)
	}

	if (attr.classname) {
		customCSS.push(attr.classname)
	}



	className = designHideElement(attr, className);
	customCSS = designCustomCSS(attr, customCSS);



	if (attr.id) {
		id = "row-" + attr.id;
		if (attr.anchorid) {
			attr.id = id = attr.anchorid;
		}
		style = designOptionsCSS(attr, id);
		bgParallax = backgroundParallax(attr, id);
		bgParallax = bgParallax ? bgParallax : '';

		if (attr.color || attr.family || attr.style || attr.weight || attr.spacing || attr.fontsize) {
			style2 = `
			#${id},
			#${id} .Normal{`
			if (attr.color) {
				style2 += `color:${attr.color};`
			}
			if (attr.family) {
				style2 += `font-family:${attr.family};`
			}
			if (attr.style) {
				style2 += `font-style:${attr.style};`
			}
			if (attr.weight) {
				style2 += `font-weight:${attr.weight};`
			}
			if (attr.spacing) {
				style2 += `letter-spacing:${attr.spacing};`
			}
			if (attr.fontsize) {
				style2 += `font-size:${attr.fontsize};`
			}
			if (attr.lineheight) {
				style2 += `line-height:${attr.lineheight};`
			}
			style2 += `}`;
			if (style2) {
				$("#style-layout").append(style2);
			}
		}

		id = " id=\"row-" + attr.id + "\"";
		if (attr.anchorid) {
			id = " id=\"" + attr.id + "\"";
		}
	}

	if (attr.animation_style) customCSS.push("dng_animate_visible " + attr.animation_style);
	if (attr.animation_delay) customCSS.push(attr.animation_delay);

	var anchortitle = "";
	if (attr.anchortitle) {
		anchortitle = ` data-title="${attr.anchortitle}"`;
		customCSS.push("anchorTag");
	}
	if (ThemeOptions.BootstrapVersion == "v4") {
		if (attr.fixedelement && attr.fixedelement != "{}") {
			fixedelement = fixedelementHTML(attr.fixedelement);
			customCSS.push("position-relative");
		}
	}
	className.push("dng-row row");
	customCSS = customCSS.join(" ");
	className = className.join(" ");





	if (fullwidth == "stretch_row") {
		html += `<div class="container-fluid row-no-spacing ${customCSS}"${id}${anchortitle}${bgParallax}>${fixedelement}<div class="container"><div class="${className}">${content}</div></div></div>`;
	} else if (fullwidth == "stretch_row_content") {
		html += `<div class="container-fluid ${customCSS}"${id}${anchortitle}${bgParallax}>${fixedelement}<div class="${className}">${content}</div></div>`;
	} else if (fullwidth == "stretch_row_content_no_spaces") {
		html += `<div class="container-fluid col-no-padding ${customCSS}"${id}${anchortitle}${bgParallax}>${fixedelement}<div class="${className}">${content}</div></div>`;
	} else {
		html += `<div class="container"><div class="${customCSS} ${className}"${id}${anchortitle}${bgParallax}>${fixedelement}${content}</div></div>`;
	}




	return html;
});


/*************************************************** Inner Row ****************************************************/

ShortcodeBack.register('inner_row', function (attr, content) {
	var newCode = restoreSource("[inner_row] [/inner_row]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');

	var bgimages = attr.bgimages ? "background-image: url('" + decodeURIComponent(attr.bgimages) + "');" : "";
	var bgcolor = attr.bgcolor ? "background-color:" + attr.bgcolor + ";" : "";
	var className = [];
			className = designHideElement(attr,className);
			className = className.join(" ");

	
	var control = controlbox({
		type: 'inner_row',
		title: "Inner Row Settings",
		other: `<span class="bg" style="${bgcolor}${bgimages}"></span>`
	});
	return `<div class="lyrow  ui-draggable ${className} ${ThemeOptions.BootstrapVersion=="v4"?'am-row':''}" style="display: block;"> 
				${control}
				<div class="view">
					<div class="row-fluid am-row clearfix codetag" code="${newCode}">
						${content}
					</div>
				</div>
			</div>`;
});
Shortcode.register('inner_row', function (attr, content) {
	var fullwidth = attr.fullwidth,
		className = [],
		id = attr.id ? attr.id : randomNumber(),
		customCSS = [];
	if (attr.gap) {
		className.push("column-gap-" + attr.gap)
	}
	if (attr.fullheight || attr.equalheight || attr.content_placement) {
		className.push("row-flex")
	}
	if (attr.fullheight) {
		className.push("full-height")
		className.push("col-pos-" + attr.columns_placement)
	}
	if (attr.equalheight) {
		className.push("equal-height")
	}
	if (attr.content_placement) {
		className.push("cont-pos-" + attr.content_placement)
	}
	if (attr.alignment) {
		className.push(attr.alignment)
	}
	if (attr.classname) {
		customCSS.push(attr.classname)
	}



	customCSS = designHideElement(attr, customCSS);
	customCSS = designCustomCSS(attr, customCSS);

	if (attr.animation_style) customCSS.push("dng_animate_visible " + attr.animation_style);
	if (attr.animation_delay) customCSS.push(attr.animation_delay);

	className = className.join(" ");
	customCSS = customCSS.join(" ");

	if (attr.id) {
		id = "row-" + attr.id;
		designOptionsCSS(attr, id);
		id = " id=\"row-" + attr.id + "\"";
	}
	content = `<div class="inner-row-box custom-css ${customCSS}"${id}><div class="dng-row row ${className}">${content}</div></div>`;

	return content;
});

/*************************************************** Column ****************************************************/

ShortcodeBack.register('column', function (attr, content) {
	var newCode = restoreSource("[column] [/column]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;'),
		sm = attr.col;
	var bgimages = attr.bgimages ? "background-image: url('" + decodeURIComponent(attr.bgimages) + "');" : "";
	var bgcolor = attr.bgcolor ? "background-color:" + attr.bgcolor + ";" : "";
	var bg = bgimages || bgcolor ? `<span class="bg" style="${bgcolor}${bgimages}"></span>` : '';
	var className = [];
	var control = controlbox({
		close: false,
		//	drag: false,
		type: 'column',
		title: "Column Settings",
		other: `${bg}`,
	});

	if (sm.indexOf("/") > -1) {
		var percent = sm.split("/");
		if (percent[1] != 5) {
			sm = 12 / percent[1] * percent[0]
		}
	}
	className.push('column ui-sortable codetag');


	if (ThemeOptions.BootstrapVersion == 'v4') {


		className.push('am-col-sm-' + sm);


		if (attr.offsetxl) className.push('am-' + attr.offsetxl);
		if (attr.offsetlg) className.push('am-' + attr.offsetlg);
		if (attr.offsetmd) className.push('am-' + attr.offsetmd);
		if (attr.offsetsm) className.push('am-' + attr.offsetsm);
		if (attr.offsetxs) className.push('am-' + attr.offsetxs);

		if (attr.orderxl) className.push('am-' + attr.orderxl);
		if (attr.orderlg) className.push('am-' + attr.orderlg);
		if (attr.ordermd) className.push('am-' + attr.ordermd);
		if (attr.ordersm) className.push('am-' + attr.ordersm);
		if (attr.orderxs) className.push('am-' + attr.orderxs);

		if (attr.sizexl) className.push('am-' + attr.sizexl);
		if (attr.sizelg) className.push('am-' + attr.sizelg);
		if (attr.sizemd) className.push('am-' + attr.sizemd);
		if (attr.sizexs) className.push('am-' + attr.sizexs);
		if (attr.sizexs) className.push('am-' + attr.sizexs);

	} else {

		className.push('col-sm-' + sm);

		if (attr.offsetlg) className.push(attr.offsetlg);
		if (attr.offsetmd) className.push(attr.offsetmd);
		if (attr.offsetsm) className.push(attr.offsetsm);
		if (attr.offsetxs) className.push(attr.offsetxs);
		if (attr.sizelg) className.push(attr.sizelg);
		if (attr.sizemd) className.push(attr.sizemd);
		if (attr.sizexs) className.push(attr.sizexs);
	}

	className = designHideElement(attr,className);
	
	className = className.join(" ");

	return `<div class="${className}" col="${attr.col}" code="${newCode}"> 
				${control}
				<div class="col-content">
				${content}
				</div>
			</div>`;
});
Shortcode.register('column', function (attr, content) {
	var sm = attr.col,
		id = attr.id ? attr.id : randomNumber(),
		innerid = "",
		attributes = "";

	if (id) {
		id = "column-" + id;
		designOptionsCSS(attr, id);
		id = " id=\"" + id + "\"";
	}

	if (sm.indexOf("/") > -1) {
		var percent = sm.split("/");
		if (percent[1] != 5) {
			sm = 12 / percent[1] * percent[0]
		}
	}

	var className = [];
	var className2 = [];
	className.push("dng-column");
	className.push("col-sm-" + sm);


	if (ThemeOptions.BootstrapVersion == "v4") {
		var device = ['xl', 'lg', 'md', 'sm', 'xs'];
		var project = ['offset', 'size', 'order'];
		device.forEach(function (i) {
			project.forEach(function (x) {
				if (attr[x + i]) className.push(attr[x + i]);
			})
		})

		if (attr['align_self_xs']) {
			className.push(attr['align_self_xs']);
			//	className2.push(attr['align_self_xs']);
		}
	} else {
		if (attr.offsetlg) className.push(attr.offsetlg);
		if (attr.offsetmd) className.push(attr.offsetmd);
		if (attr.offsetsm) className.push(attr.offsetsm);
		if (attr.offsetxs) className.push(attr.offsetxs);
		if (attr.sizelg) className.push(attr.sizelg);
		if (attr.sizemd) className.push(attr.sizemd);
		if (attr.sizexs) className.push(attr.sizexs);
	}

	className = designHideElement(attr,className);



	if (attr.classname) className.push(attr.classname);
	if (attr.animation_style) className.push("dng_animate_visible " + attr.animation_style);
	if (attr.animation_delay) className.push(attr.animation_delay);
	className2 = designCustomCSS(attr, className2);

	if (ThemeOptions.BootstrapVersion == "v4") {
		var DataAnimation = DataAnimationCSS(attr, className);
		if (DataAnimation.classname) {
			className2.push(DataAnimation.classname.join(" "));
		}
		if (DataAnimation.attributes) {
			attributes = DataAnimation.attributes.join(" ");
		}
	}

	className = className.join(" ");
	className2 = className2.join(" ");

	return `<div class="${className}"><div class="dng-column-inner ${className2}"${id} ${attributes}>${content}</div></div>`;




});


/*************************************************** Pane ****************************************************/

ShortcodeBack.register('pane', function (attr) {
	var newCode = restoreSource("[pane /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'pane',
		title: "Pane Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				${control}
				<div class="view viewbox-dotted">
					<div class="codetag panebox" data-name="${attr.name}"  code="${newCode}"><h4><span class="fa fa-dropbox"></span> ${attr.name}</h4></div>
				</div>
			</div>`;

});
Shortcode.register('pane', function (attr) {
	designOptionsCSS(attr, "dnn_" + attr.name);
	var className = [];
	className.push("panebox");
	if (attr.name) className.push(attr.name);
	if (attr.classname) className.push(attr.classname);




	className = designCustomCSS(attr, className);
	if (attr.animation_style) className.push("dng_animate_visible " + attr.animation_style);
	if (attr.animation_delay) className.push(attr.animation_delay);

	className = className.join(" ");

	return `<div class="${className}" id="${attr.name}" runat="server"></div>`;
});



/*************************************************** Mega Menu ****************************************************/

ShortcodeBack.register('megamenu', function (attr) {
	var newCode = restoreSource("[megamenu /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'megamenu',
		title: "Horizontal Menu Settings"
	});
	return `<div class="box box-element ui-draggable"> 
					${control}
					<div class="view viewbox-dotted">
						<div class="codetag panebox" code="${newCode}"><h4><span class="fa fa-reorder"></span> Horizontal Menu</h4> </div>
					</div>
				</div>`;
});
Shortcode.register('megamenu', function (attr) {
	var id = attr.id ? attr.id : randomNumber(),
		logo = "",
		style = "",
		number = id,
		className = [];
	var defaultValue = {
		st: 0,
		sr: 0,
		sb: 0,
		sl: 0,
		amenucolor: ThemeOptions.AccentColour,
		hovercolor: ThemeOptions.AccentColour,
		fmacccolor: ThemeOptions.AccentColour,
		mmacccolor: ThemeOptions.AccentColour
	};
	attr = $.extend(defaultValue, attr);
	if (attr.dismlogo) {
		if (attr.source == "url" && attr.url) {
			var srcset = attr.hdurl ? `srcset="${decodeURIComponent(attr.hdurl)} 2x" ` : "";
			logo = `<li class="menu-logo"><a href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId).ToString()%>" title="<%=PortalSettings.PortalName %>"><img src="${decodeURIComponent(attr.url)}" ${srcset} alt="<%=PortalSettings.PortalName %>"></a></li>`;
		} else {
			logo = `<li class="menu-logo"><dnn:LOGO runat="server" id="dnnLOGO${number}" BorderWidth="0" /></li>`;
		}
		className.push("header-split");
	}

	id = "dng-megamenu" + id;

	style += `
	#${id} .primary_structure>li>a{
		padding-top:${attr.st}px; 
		padding-right:${attr.sr}px;
		padding-bottom:${attr.sb}px;
		padding-left:${attr.sl}px;
	  }
	`;

	switch (attr.menu_hover_style) {
		case "hoverstyle_1":
			style += `
		#${id}.hoverstyle_1 .primary_structure > li > a:before {
			left:${attr.sl}px;
			border-width:${attr.menubw}px;
			border-color:${attr.amenucolor};
		}
		#${id}.hoverstyle_1 .primary_structure > li:hover > a:before,
		#${id}.hoverstyle_1 .primary_structure > li > a:focus:before,
		#${id}.hoverstyle_1 .primary_structure > li.current > a:before,
		#${id}.hoverstyle_1 .primary_structure > li.menu_hover > a:before,
		#${id}.hoverstyle_1 .primary_structure > li > a.current:before {
			right:${attr.sr}px;
		}
		#${id}.hoverstyle_1 .primary_structure > li:hover > a,
		#${id}.hoverstyle_1 .primary_structure > li > a:focus,
		#${id}.hoverstyle_1 .primary_structure > li.current > a,
		#${id}.hoverstyle_1 .primary_structure > li.menu_hover > a,
		#${id}.hoverstyle_1 .primary_structure > li > a.current {
			color:${attr.hovercolor}!important;
		}
		`;
			break;
		case "hoverstyle_2":
			style += `
		#${id}.hoverstyle_2 .primary_structure > li > a {
			border-radius:${attr.menubr}px;
			-moz-border-radius:${attr.menubr}px;
			-webkit-border-radius:${attr.menubr}px;
			border-width:${attr.menubw}px;
		}
		#${id}.hoverstyle_2 .primary_structure > li:hover > a,
		#${id}.hoverstyle_2 .primary_structure > li > a:focus,
		#${id}.hoverstyle_2 .primary_structure > li.current > a,
		#${id}.hoverstyle_2 .primary_structure > li.menu_hover > a,
		#${id}.hoverstyle_2 .primary_structure > li > a.current {
			border-width:${attr.menubw}px;
			border-color:${attr.amenucolor};
			color:${attr.hovercolor}!important;
		}	
		`;
			break;
		case "hoverstyle_3":
			style += `
		#${id}.hoverstyle_3 .primary_structure > li > a {
			border-radius:${attr.menubr}px;
			-moz-border-radius:${attr.menubr}px;
			-webkit-border-radius:${attr.menubr}px;
		}
		#${id}.hoverstyle_3 .primary_structure > li:hover > a,
		#${id}.hoverstyle_3 .primary_structure > li > a:focus,
		#${id}.hoverstyle_3 .primary_structure > li.current > a,
		#${id}.hoverstyle_3 .primary_structure > li.menu_hover > a,
		#${id}.hoverstyle_3 .primary_structure > li > a.current {
			background-color:${attr.amenucolor};
			color:${attr.hovercolor}!important;
		}
		#${id}.hoverstyle_3 .primary_structure > li > a:after {
			color:${attr.amenucolor}!important;
		}
		`;
			break;
		case "hoverstyle_4":
			style += `
			#${id}.hoverstyle_4 .primary_structure > li:hover > a,
			#${id}.hoverstyle_4 .primary_structure > li > a:focus,
			#${id}.hoverstyle_4 .primary_structure > li.current > a,
		#${id}.hoverstyle_4 .primary_structure > li.menu_hover > a,
		#${id}.hoverstyle_4 .primary_structure > li > a.current {
			color:${attr.hovercolor};!important;
		}
		#${id}.hoverstyle_4 .primary_structure .back {
			border-width:${attr.menubw}px;
			border-color:${attr.amenucolor};
		}
		#${id} .primary_structure>li>a{
			padding-right:0;
			padding-left:0;
		}
		#${id} .primary_structure>li{
			margin-right:${attr.sr}px;
			margin-left:${attr.sl}px;
		}	  
		`;
			break;
		case "hoverstyle_5":
			style += `
		#${id}.hoverstyle_5 .primary_structure > li:hover > a,
		#${id}.hoverstyle_5 .primary_structure > li > a:focus,
		#${id}.hoverstyle_5 .primary_structure > li.current > a,
		#${id}.hoverstyle_5 .primary_structure > li.menu_hover > a,
		#${id}.hoverstyle_5 .primary_structure > li > a.current {
			color:${attr.hovercolor}!important;
		}	
		`;
			break;
		case "hoverstyle_6":
			style += `
			#${id}.hoverstyle_6 .primary_structure > li:hover > a,
			#${id}.hoverstyle_6 .primary_structure > li > a:focus,
			#${id}.hoverstyle_6 .primary_structure > li.current > a,
		#${id}.hoverstyle_6 .primary_structure > li.menu_hover > a,
		#${id}.hoverstyle_6 .primary_structure > li > a.current {
			color:${attr.hovercolor}!important;
		}
		#${id}.hoverstyle_6 .primary_structure > li > a:before,
		#${id}.hoverstyle_6 .primary_structure > li > a:after,
		#${id}.hoverstyle_6 .primary_structure > li:before,
		#${id}.hoverstyle_6 .primary_structure > li:after{
			border-color:${attr.amenucolor};
		}
		`;
		break;
		case "hoverstyle_7":
			style += `
		#${id}.hoverstyle_7 .primary_structure > li > a:before {
			left:${attr.sl}px;
			border-color:${attr.amenucolor};
		}
		#${id}.hoverstyle_7 .primary_structure > li:hover > a:before,
		#${id}.hoverstyle_7 .primary_structure > li > a:focus:before,
		#${id}.hoverstyle_7 .primary_structure > li.current > a:before,
		#${id}.hoverstyle_7 .primary_structure > li.menu_hover > a:before,
		#${id}.hoverstyle_7 .primary_structure > li > a.current:before {
			right:${attr.sr}px;
		}
		#${id}.hoverstyle_7 .primary_structure > li:hover > a,
		#${id}.hoverstyle_7 .primary_structure > li > a:focus,
		#${id}.hoverstyle_7 .primary_structure > li.current > a,
		#${id}.hoverstyle_7 .primary_structure > li.menu_hover > a,
		#${id}.hoverstyle_7 .primary_structure > li > a.current {
			color:${attr.hovercolor}!important;
		}
		`;
		break;
		default:
		break;
	}

	typographystyle(attr,'',
	`#${id} .primary_structure>li>a, 
	#${id} .primary_structure>li>a:link, 
	#${id} .primary_structure>li>a:active,
	#${id} .primary_structure>li>a:visited`);

	
	if (attr.fmbgcolor || attr.fmbgimages) {
		style += `
		#${id} .dnngo_slide_menu,
		#${id} .dnngo_slide_menu .dnngo_submenu{`;
		if (attr.fmbgcolor) style += `background-color:${attr.fmbgcolor};`;
		if (attr.fmbgrepeat) style += `background-repeat:${attr.fmbgrepeat};`;
		if (attr.fmbgattachment) style += `background-attachment:${attr.fmbgattachment};`;
		if (attr.fmbgposition) style += `background-position:${attr.fmbgposition};`;
		if (attr.fmbgsize) style += `background-size:${attr.fmbgsize};`;
		if (attr.fmbgimages) fmbgimages = decodeURIComponent(attr.fmbgimages), style += `background-image:url("${fmbgimages}");`;
		style += `}`;
	}

	typographystyle(attr,'fm',
	`#${id} .dnngo_slide_menu li, 
	#${id} .dnngo_slide_menu li a`);


	style += `
	#${id} .dnngo_slide_menu li:hover>a, 
	#${id} .dnngo_slide_menu li>a:focus, 
	#${id} .dnngo_slide_menu li.subcurrent>a{
			background-color:${attr.fmacccolor};
			}
		`;


	if (attr.mmbgcolor || attr.mmbgimages) {
		style += `
		#${id} .dnngo_menu_list,
		#${id} .dnngo_boxslide{`;
		if (attr.mmbgcolor) style += `background-color:${attr.mmbgcolor};`;
		if (attr.mmbgrepeat) style += `background-repeat:${attr.mmbgrepeat};`;
		if (attr.mmbgattachment) style += `background-attachment:${attr.mmbgattachment};`;
		if (attr.mmbgposition) style += `background-position:${attr.mmbgposition};`;
		if (attr.mmbgsize) style += `background-size:${attr.mmbgsize};`;
		if (attr.mmbgimages) mmbgimages = decodeURIComponent(attr.mmbgimages), style += `background-image:url("${mmbgimages}");`;
		style += `}`;
	}

	typographystyle(attr,'mm',
	`#${id} .dnngo_menu_list .pane_space, 
	#${id} .dnngo_menu_list a, 
	#${id} .dnngo_menu_list a:link,
	#${id} .dnngo_menu_list a:active, 
	#${id} .dnngo_menu_list a:visited,
	#${id} .dnngo_boxslide .pane_space, 
	#${id} .dnngo_boxslide a, 
	#${id} .dnngo_boxslide a:link,
	#${id} .dnngo_boxslide a:active, 
	#${id} .dnngo_boxslide a:visited`);


	typographystyle(attr,'mmt',
	`#${id} .dnngo_menu_list > li > a,
	#${id} .dnngo_menu_list > li > a:link,
	#${id} .dnngo_menu_list > li > a:active,
	#${id} .dnngo_menu_list > li > a:visited,
	#${id} .dnngo_menu_list .submenu_title a,
	#${id} .dnngo_menu_list .submenu_title a:link,
	#${id} .dnngo_menu_list .submenu_title a:active,
	#${id} .dnngo_menu_list .submenu_title a:visited,
	#${id} .dnngo_menu_list .submenu_title,
	#${id} .dnngo_boxslide .submenu_title a,
	#${id} .dnngo_boxslide .submenu_title a:link,
	#${id} .dnngo_boxslide .submenu_title a:active,
	#${id} .dnngo_boxslide .submenu_title a:visited,
	#${id} .dnngo_boxslide .submenu_title`);



	style += `
	#${id} .dnngo_menu_list li li.subcurrent > a,
	#${id} .dnngo_menu_list li.subcurrent > a,
	#${id} .dnngo_custommenu li.current > a{
		color:${attr.mmacccolor};
		background-color:transparent;
	}
	#${id} .dnngo_menu_list li a:hover,
	#${id} .dnngo_menu_list li a:focus,
	#${id} .dnngo_boxslide .submenu_title a:hover {
		color:${attr.mmacccolor};
	}
	#${id} .dnngo_menu_list li li a:hover,
	#${id} .dnngo_menu_list li li a:focus,
	#${id} .dnngo_custommenu .submenu li a:hover,
	#${id} .dnngo_custommenu .submenu li a:focus{
		color:#FFF;
		background-color:${attr.mmacccolor};
	}
	`;
	if (attr.mmlinecolor) {
		style += `
		#${id} .mega-menu .boxslide > .line span,
		#${id} .dnngo_menuslide > .line span{
			border-color:${attr.mmlinecolor};
		}
		`;
	}

	if (style) {
		$("#style-layout").append(style);
	}

	className.push(attr.menu_hover_style);
	if (attr.fmshadow) {
		className.push("flyout-shadow");
	}
	if (attr.mmshadow) {
		className.push("mega-shadow");
	}

	className = className.join(" ");

	return `<div class="nav-bar"><div id="${id}" data-split="${attr.dismlogo?attr.dismlogo:false}" class="dng-megamenu ${className}"><dnn:MEGAMENU runat="server" id="MEGAMENU${number}" Effect="Hslide" ViewLevel="0" ShowUI="Extension" WidthBoxClassName="#megamenuWidthBox"/>${logo}</div></div>`;

});

/*************************************************** Mobile Menu ****************************************************/

ShortcodeBack.register('mobilemenu', function (attr) {
	var newCode = restoreSource("[mobilemenu /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'mobilemenu',
		title: "Mobile Menu Settings"
	});
	return `<div class="box box-element ui-draggable"> 
					${control}
					<div class="view viewbox-dotted">
						<div class="codetag panebox" code="${newCode}"><h4><span class="fa fa-reorder"></span> Mobile Menu</h4> </div>
					</div>
				</div>`;
});
Shortcode.register('mobilemenu', function (attr) {
	var id = attr.id ? attr.id : randomNumber();

	var className = [];

	var style = "",
		name = "mobilemenu" + id;

	typographystyle(attr,'lv1',
	`.${name} .mm-listview,
	.${name} #panel-wrap-0 .mm-listview,
	.${name} #panel-wrap-0 .mm-listview>li>a,
	.${name} #panel-wrap-0 .mm-listview>li>a:link, 
	.${name} #panel-wrap-0 .mm-listview>li>a:active,
	.${name} #panel-wrap-0 .mm-listview>li>a:visited`);

	typographystyle(attr,'',
	`.${name} .mm-listview>li>a,
	.${name} .mm-listview>li>a:link, 
	.${name} .mm-listview>li>a:active,
	.${name} .mm-listview>li>a:visited`);

	typographystyle(attr,'ti',
	`.${name}.dng-mobilemenu .mm-title`);

	if(ThemeOptions.BootstrapVersion !="v4"){
		style += `
			.${name}.dng-mobilemenu .mm-listview>li:hover>a,
			.${name}.dng-mobilemenu .mm-listview>li.mm-selected>a,
			.${name}.dng-mobilemenu .mm-listview>li>a.current-anchor,
			.${name}.dng-mobilemenu .mm-listview>li>a.acurrent,
			.${name}.dng-mobilemenu .mm-listview>li.current>a{
				color:${attr.accentcolor?attr.accentcolor:ThemeOptions.AccentColour}!important;
			}
			.${name}.dng-mobilemenu .mm-listview > li:hover .mm-next:after,
			.${name}.dng-mobilemenu .mm-listview > li:hover .mm-arrow:after,
			.${name}.dng-mobilemenu .mm-listview > li.mm-selected .mm-next:after,
			.${name}.dng-mobilemenu .mm-listview > li.mm-selected .mm-arrow:after ,
			.${name}.dng-mobilemenu .mm-listview > li.current > .mm-next:after,
			.${name}.dng-mobilemenu .mm-listview > li.current > .mm-arrow:after {
				border-color:${attr.accentcolor?attr.accentcolor:ThemeOptions.AccentColour}!important;
			}`;
	}


	style += `
		.${name}.dng-mobilemenu .mm-listview>li{
			border-color:${attr.linecolor};

		}
		.${name}.dng-mobilemenu .mm-close:after, 
		.${name}.dng-mobilemenu .mm-btn.mm-prev:after,
		.${name}.dng-mobilemenu .mm-btn.mm-prev:before{
			color:${attr.ticolor}!important;
		}
	`;


	if (attr.color) {
		style += `
			.${name}.dng-mobilemenu .mm-listview > li .mm-next:after, 
			.${name}.dng-mobilemenu .mm-listview > li .mm-arrow:after{
				border-color:${attr.color};
			}
		`;
	}
	if (attr.lv1color) {
		style += `
			.${name} #panel-wrap-0 .mm-listview > li .mm-next:after, 
			.${name} #panel-wrap-0 .mm-listview > li .mm-arrow:after{
				border-color:${attr.lv1color};
			}
		`;
	}




	if (attr.bgcolor || attr.bgimages) {
		style += `
		.${name}.dng-mobilemenu.mobile_menu{`;
		if (attr.bgcolor) style += `background-color:${attr.bgcolor};`;
		if (attr.bgrepeat) style += `background-repeat:${attr.bgrepeat};`;
		if (attr.bgattachment) style += `background-attachment:${attr.bgattachment};`;
		if (attr.bgposition) style += `background-position:${attr.bgposition};`;
		if (attr.bgsize) style += `background-size:${attr.bgsize};`;
		if (attr.bgimages) fmbgimages = decodeURIComponent(attr.bgimages), style += `background-image:url("${bgimages}");`;
		style += `}`;
	}

	if(ThemeOptions.BootstrapVersion =="v4"){
		style += `
		.${name}.dng-mobilemenu .mm-panels > .mm-panel.mm-iconpanel-0{
			background-color: ${attr.lv1?attr.lv1:ThemeOptions.AccentColour};
		}
		.${name}.dng-mobilemenu .mm-panels > .mm-panel.mm-iconpanel-1{
			background-color: ${attr.lv2?attr.lv2:ThemeOptions.AccentColour};
		}
		.${name}.dng-mobilemenu .mm-panels > .mm-panel.mm-iconpanel-2{
			background-color: ${attr.lv3?attr.lv3:ThemeOptions.AccentColour};
		}
		.${name}.dng-mobilemenu .mm-panels > .mm-panel.mm-iconpanel-3{
			background-color: ${attr.lv4?attr.lv4:ThemeOptions.AccentColour};
		}
		.${name}.dng-mobilemenu .panel-wrap .current a span,
		.${name}.dng-mobilemenu .panel-wrap .subcurrent a span, 
		.${name}.dng-mobilemenu .panel-wrap .mm-listview  li:hover a{
			color: ${attr.currentcolor?attr.currentcolor:"#f8f363"}!important;
		}
		.${name}.dng-mobilemenu .panel-wrap .mm-listview .current .mm-next:after, 
		.${name}.dng-mobilemenu .panel-wrap .mm-listview .current .mm-arrow:after,
		.${name}.dng-mobilemenu .panel-wrap .mm-listview .subcurrent .mm-next:after, 
		.${name}.dng-mobilemenu .panel-wrap .mm-listview .subcurrent .mm-arrow:after,
		.${name}.dng-mobilemenu .panel-wrap .mm-listview  li:hover .mm-next:after, 
		.${name}.dng-mobilemenu .panel-wrap .mm-listview  li:hover .mm-arrow:after{
			border-color: ${attr.currentcolor?attr.currentcolor:"#f8f363"}!important;
		}
		`;

	}



	if (style) {
		$("#style-layout").append(style);
	}

	return `<div class="mobile-menu-icon" data-navbartitle="${attr.navbartitle?attr.navbartitle:" "}">
	<span class="dg-menu-anime"><i></i></span></div><dnn:MOBILEMENU runat="server" id="MOBILEMENU${id}" CssClass="mobilemenu${id}" Effect="Mobile" />
	<dnn:DnnCssInclude runat="server" FilePath="resource/vendor/mobilemenu/mobilemenu.css" PathNameAlias="SkinPath" Priority="10" HtmlAttributesAsString="media:'none',title:'all',onload:'this.media=this.title"  />
	<dnn:DnnJsInclude runat="server" FilePath="resource/vendor/mobilemenu/mobilemenu.js" PathNameAlias="SkinPath" Priority="10" HtmlAttributesAsString="async:'async'"   />	
	`;
});



/*************************************************** Language ****************************************************/

ShortcodeBack.register('language', function (attr) {
	var newCode = restoreSource("[language /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'language',
		title: "Language Settings"
	});
	return `<div class="box box-element ui-draggable"> 
					${control}
					<div class="view viewbox-dotted">
						<div class="codetag panebox" code="${newCode}"><h4><span class="fa fa-language"></span> Language</h4></div>
					</div>
				</div>`;
});
Shortcode.register('language', function (attr) {
	var id = attr.id ? attr.id : randomNumber();
	return `<div class="languageBox"><dnn:LANGUAGE runat="server" id="dnnLANGUAGE${id}"  showMenu="False" showLinks="True" /></div>`;
});


/*************************************************** Login ****************************************************/

ShortcodeBack.register('Login', function (attr) {
	var newCode = restoreSource("[Login /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'Login',
		editor: ThemeOptions.LayoutName == "Footer" ? true : false,
		title: "Login Settings"
	});
	return `<div class="box box-element ui-draggable"> 
					${control}
					<div class="view viewbox-dotted">
						<div class="codetag panebox" code="${newCode}"><h4><span class="fa fa-user"></span> Login And User</h4></div>
					</div>
				</div>`;
});
Shortcode.register('Login', function (attr) {
	var id = attr.id ? attr.id : randomNumber();
	//return `<div class="Login"><dnn:USER ID="dnnUser${id}" runat="server" LegacyMode="false" /><span class="sep">|</span><dnn:LOGIN ID="dnnLogin${id}" CssClass="LoginLink" runat="server" LegacyMode="false" /></div>`;

	if (ThemeOptions.LayoutName == "Footer") {

		var style = "";

		typographystyle(attr,'',
		`#UserLogin${id},
		#UserLogin${id} a,  
		#UserLogin${id} a:link,   
		#UserLogin${id} a:active,   
		#UserLogin${id} a:visited`);

		style += `
			#UserLogin${id} a:hover{
				color: ${attr.hovercolor?attr.hovercolor:ThemeOptions.AccentColour};
				text-decoration: none;
			}`;

		if (style) {
			$("#style-layout").append(style);
		}

		var html = "";

		if (attr.user) {
			html += `<dnn:USER ID="dnnUser${id}" runat="server" />`;
		}

		if (attr.login) {
			if (html != "") {
				html += `<span class="sep">|</span>`;
			}
			html += `<dnn:LOGIN ID="dnnLogin${id}" CssClass="LoginLink" runat="server" />`;
		}


		return `<div id="UserLogin${id}" class="footer-logoin">${html}</div>`;


	} else {
		return `<div class="Login"><dnn:USERANDLOGIN id="userLogin${id}" runat="Server"/></div>`;
	}
	//return `<dnn:USERANDLOGIN id="userLogin${id}" runat="Server"/>`;

});

/*************************************************** Logo ****************************************************/

ShortcodeBack.register('logo', function (attr) {
	var newCode = restoreSource("[logo /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var info = "";
	var control = controlbox({
		type: 'logo',
		title: "Logo Settings"
	});
	var icon = "<span class=\"fa fa-picture-o\"></span>";

	if (attr.source == "url") {
		var link = attr.link ? decodeURIComponent(attr.link) : "",
			url = attr.url ? decodeURIComponent(attr.url) : "";
		info += "<p>";
		if (attr.title) info += "Title: " + attr.title + "&nbsp;&nbsp;";
		if (link) info += "Link URL: " + link;
		info += "</p>";
		if (url) {
			icon = `<img src="${url}" alt="${attr.title}" style="width:32px;margin: 0 5px 0 -5px;" />`;
		}
	}
	return `<div class="box box-element ui-draggable"> 
				${control}
				<div class="view viewbox-dotted">
					<div class="codetag panebox" code="${newCode}"><h4>${icon} Logo</h4>${info}</div>
				</div>
			</div>`;
});
Shortcode.register('logo', function (attr) {
	var id = attr.id ? attr.id : randomNumber(),
		logo = "",
		mainclass = "header-logo";
	var title = attr.title ? attr.title : "",
		url = attr.url ? decodeURIComponent(attr.url) : "",
		hdurl = attr.hdurl ? decodeURIComponent(attr.hdurl) : "";
	styurl = attr.styurl ? decodeURIComponent(attr.styurl) : "";
	styhdurl = attr.styhdurl ? decodeURIComponent(attr.styhdurl) : "";

	logo += `<div class="logo" id="logo${id}">`;

	if (attr.stysource == "main") {
		mainclass += " floating-header-logo";
	}
	if (url) {
		var srcset = hdurl ? `srcset="${hdurl} 2x" ` : "";
		logo += `<a href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId).ToString()%>" title="<%=PortalSettings.PortalName %>"><img src="${url}" ${srcset} class="${mainclass}" alt="<%=PortalSettings.PortalName %>" /></a>`;
	} else {
		logo += `<dnn:LOGO runat="server" id="dnnLOGO${id}" cssClass="${mainclass}" BorderWidth="0" />`;
	}

	if (attr.stysource != "main") {
		if (styurl) {
			var srcset = styhdurl ? `srcset="${styhdurl} 2x" ` : "";
			logo += `<a href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId).ToString()%>" title="<%=PortalSettings.PortalName %>"><img src="${styurl}" ${srcset} class="floating-header-logo" alt="<%=PortalSettings.PortalName %>"></a>`;
		} else {
			logo += `<dnn:LOGO runat="server" id="floatingLOGO${id}" cssClass="floating-header-logo" BorderWidth="0" />`;
		}
	}

	if (attr.width || attr.height) {
		var style = `#logo${id} img{`;
		if (attr.height) {
			style += `max-height:${attr.height}px!important;`;
		}
		if (attr.width) {
			style += `max-width:${attr.width}px!important;`;
		}
		style += "}";
		$("#style-layout").append(style);
	}

	logo += `</div>`;
	return logo;
});

/*************************************************** Search ****************************************************/

ShortcodeBack.register('search', function (attr) {
	var newCode = restoreSource("[search /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var info = ''; //"Style: " + (attr.style ? "Popup" : "Default");
	var control = controlbox({
		type: 'search',
		title: "Search Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				  ${control}
				  <div class="view viewbox-dotted">
					<div class="codetag panebox" code="${newCode}">	
					<h4><span class="fa fa-search"></span> Search</h4>
					<p>${info}</p>
					</div>			
				  </div>
				</div>`;
});
Shortcode.register('search', function (attr) {
	var id = attr.id ? attr.id : randomNumber();
	var style = "";

	style += `
	#search-popup-box${id} a.search:hover,
	#search-popup-box${id} .popup-close:hover{
		color:${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour};
	}
	`;
	if (style) {
		$("#style-layout").append(style);
	}
	if (attr.style == "popup") {
		return `<div class="search-popup-box" id="search-popup-box${id}" placeholder="${attr.placeholder?attr.placeholder:""}"><div class="icon hover-accent"><span class="magnifier"><i></i></span></div><div class="popup-reveal color-dark "></div><div class="popup-content color-${attr.color}"><div class="popup-close hover-accent"><span class="lnr lnr-cross"></span></div><div class="popup-center"><dnn:SEARCH runat="server" id="dnnSEARCH${id}" CssClass="search"  ShowSite="False" ShowWeb="False"  submit=" " /></div></div></div>`;

	} else {
		return `<div class="pulldownsearch"><div class="searchbut" id="searchbut" ><span class="glyphicons glyph-search"></span></div><div class="searchBox" id="search${id}"><dnn:SEARCH runat="server" id="dnnSEARCH${id}" CssClass="search"  ShowSite="False" ShowWeb="False"  submit=" " /></div></div>`;
	}

});



/*************************************************** Header Row ****************************************************/

ShortcodeBack.register('headerrow', function (attr, content) {
	var newCode = restoreSource("[headerrow] [/headerrow]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');

	var bgimages = attr.bgimages ? "background-image: url('" + decodeURIComponent(attr.bgimages) + "');" : "";
	var bgcolor = attr.bgcolor ? "background-color:" + attr.bgcolor + ";" : "";
	var full = "";
	var active = "";
	var mode = "";
	var title = attr.name + " Settings";
	if (attr.active) {
		active = `<span class="eye-el active" title="Active"><i class="fa fa-eye"></i></span> `;
	} else {
		active = `<span class="eye-el" title="Active"><i class="fa fa-eye-slash"></i></span> `;
	}
	if (attr.fullwidth) {
		full = ' <span class="icon fa fa-expand"></span>';
	}
	var control = controlbox({
		type: 'headerrow',
		title: title,
		close: false,
		drag: false,
		other: `${full}<span class="bg" style="${bgcolor}${bgimages}"></span>${active}`
	});

	if (attr.areaname == "header-mobile") {
		mode = "mobile-mode-lyrow";
	} else {
		mode = "desktop-mode-lyrow";
	}
	return `<div class="lyrow ${mode} ui-draggable" style="display: block;"> 
				${control}
				<div class="view">
					<div class="row-fluid clearfix codetag header-row" code="${newCode}"><span class="name preview">${attr.name}</span>
						${content}
					</div>
				</div>
			</div>`;
});
Shortcode.register('headerrow', function (attr, content) {
	if (!attr.active) {
		return "";
	}
	var id = attr.id ? attr.id : randomNumber(),
		className = [],
		space = attr.space ? attr.space : 8,
		space2 = attr.space2 ? attr.space2 : 25;

	if (attr.classname) {
		className.push(attr.classname)
	}

	if (attr.id) {
		id = "headerrow-" + attr.id;
		designOptionsCSS(attr, id);
		var style = "";

		if (attr.height) {
			style += `#${id},#${id} .${attr.areaname},#${id} .${attr.areaname} .logo{height:${attr.height}px}#${id} .${attr.areaname} .logo{line-height:${attr.height}px!important}`;
		}
		if (attr.atyheight) {
			style += `.floating-active #${id},.floating-active #${id} .${attr.areaname}{height:${attr.height}px}`;
		}



		if (attr.layout == "wide") {
			style += `#${id} > .container {width: auto!important;}`;
		}
		style += `
			#${id} .area-left{
				padding-right:${space}px;
			}
			#${id} .area-center{
				padding-left:${space}px;
				padding-right:${space}px;
			}
			#${id} .area-right{
				padding-left:${space}px;
			}
			#${id} .area-left .header-content-wrap > div{
				margin-right:${space2}px;
			}
			#${id} .area-center .header-content-wrap > div,
			#${id} .area-right .header-content-wrap > div{
				margin-left:${space2}px;
			}
		`;
		if (attr.shadow) {
			style += `
		#${id}:after{
			content:"";
			position:absolute;
			top: 0;
			left: -20px;
			bottom: 0;
			right: 0;
			z-index: -1;
			pointer-events:none; 
			-webkit-box-shadow: 10px 10px 10px -11px rgba(0,0,0,0.2);
			box-shadow: 10px 10px 10px -11px rgba(0,0,0,0.2);
			}
		
		`;
		}
		if (attr.styshadow) {
			style += `
			 .floating-active #${id}:after{
			   content:"";
			   position:absolute;
			   top: 0;
			   left: -20px;
			   bottom: 0;
			   right: 0;
			   z-index: -1;
			   pointer-events:none; 
			   -webkit-box-shadow: 10px 10px 10px -11px rgba(0,0,0,0.2);
			   box-shadow: 10px 10px 10px -11px rgba(0,0,0,0.2);
			 }
			 `;
		} else {
			style += `
			.floating-active #${id}:after{
				content:none;
			}
			`;
		}
		var floatingbg = backgroundstyle(attr, "sty");
		if (floatingbg) {
			style += `.floating-active #${id}{`;
			style += floatingbg;
			style += `}`;
		}

 

		typographystyle(attr,'',
		`#${id} .dngTextBox,
		#${id} .header-content-wrap >*:not(.nav-bar),
		#${id} .Normal,
		#${id} .Normal > a,
		#${id} .Normal > a:link,
		#${id} .Normal > a:active,
		#${id} .Normal > a:visited,
		#${id} .dngTextBox a,
		#${id} .dngTextBox a:link,
		#${id} .dngTextBox a:active,
		#${id} .dngTextBox a:visited`);


		//if (attr.acccolor) {	}
		style += `#${id} .Normal > a:hover,
			#${id} .dngTextBox a:hover,
			#${id} .hover-accent:hover,
			#${id} .Login a:hover,
			#${id} .Login a.active{
				color:${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour}
			}
			#${id} .Login .userProfile .userMessages,
			#${id} .Login .userProperties ul.userMenu a span{
				background-color:${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour}
			}`;

		if (attr.styheight) {
			style += `
				.floating-nav.floating-active #${id} .header-container-box,
				.floating-nav.floating-active #${id} .header-bg-box,
				.floating-nav.floating-active #${id} {
					height:${attr.styheight}px;
				}
				.floating-nav.floating-active #${id} .logo{
					height:${attr.styheight}px;
					line-height:${attr.styheight}px!important;
				}
			`;
		}

		if (style) {
			$("#style-layout").append(style);
		}
		id = " id=\"headerrow-" + attr.id + "\"";
	}



	if (attr.line && attr.line != "off") {
		className.push(attr.line + "-split-line");
	}
	if (attr.bottomline && attr.bottomline != "off") {
		className.push(attr.bottomline + "-bottom-line");
	}
	if (attr.styline) {
		className.push("floating-" + attr.styline + "-split-line");
	}
	if (attr.stybottomline) {
		className.push("floating-" + attr.stybottomline + "-bottom-line");
	}
	if (attr.stycolor) {
		className.push("floating-" + attr.stycolor + "-color");
	}
	if (!attr.hidesticky) {
		className.push("floating-display-none");
	}



	className = className.join(" ");

	content = `<div class="${attr.areaname}-bg ${className} header-bg-box" data-height="${attr.styheight?attr.styheight:0}" ${id}><div class="container"><div class="${attr.areaname} header-container-box">${content}</div></div></div>`;


	return content;
});

/*************************************************** Header Column ****************************************************/

ShortcodeBack.register('headercolumn', function (attr, content) {
	var newCode = restoreSource("[headercolumn] [/headercolumn]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;'),
		sm = attr.col;
	var bgimages = attr.bgimages ? "background-image: url('" + decodeURIComponent(attr.bgimages) + "');" : "";
	var bgcolor = attr.bgcolor ? "background-color:" + attr.bgcolor + ";" : "";

	var control = controlbox({
		close: false,
		drag: false,
		type: 'headercolumn',
		title: "header Column Settings",
		other: `<span class="bg" style="${bgcolor}${bgimages}"></span>`,
	});

	return `<div class="col-sm-${sm} column ui-sortable codetag header-column" col="${sm}" code="${newCode}"> 
				<span class="name preview">${attr.name}</span>
					${control}
					<div class="col-content">
					${content}
					</div>
				</div>`;
});
Shortcode.register('headercolumn', function (attr, content) {
	var sm = attr.col,
		id = attr.id ? attr.id : randomNumber(),
		innerid = "",
		width = "";

	id = "column-" + id;
	designOptionsCSS(attr, id);
	id = " id=\"" + id + "\"";

	var className = [];
	if (attr.sizelg) className.push(attr.sizelg);
	if (attr.sizemd) className.push(attr.sizemd);
	if (attr.sizexs) className.push(attr.sizexs);
	if (attr.classname) className.push(attr.classname);


	className.push("header-" + attr.dir);
	attr.align && className.push("text-" + attr.align);

	className = className.join(" ");


	if (attr.width) {
		width = `style="width:${attr.width}"`;
	}

	attr.dir = attr.dir ? attr.dir : "vertical";
	var align = attr.align ? "text-" + attr.align : "";

	//return `<div class="${className}"><div class="dng-column-inner"${id}>${content}</div></div>`;
	return `<div class="header-area ${attr.areaname} header-${attr.dir} ${align} ${className}" ${width} ${id}><div class="header-content-wrap">${content}</div></div>`;

});

/*************************************************** Mobile Header Row ****************************************************/

ShortcodeBack.register('mobileheaderrow', function (attr, content) {
	var newCode = restoreSource("[mobileheaderrow] [/mobileheaderrow]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');

	var bgimages = attr.bgimages ? "background-image: url('" + decodeURIComponent(attr.bgimages) + "');" : "";
	var bgcolor = attr.bgcolor ? "background-color:" + attr.bgcolor + ";" : "";
	var full = "";
	var active = "";
	var mode = "";
	if (attr.active) {
		active = `<span class="eye-el active" title="Active"><i class="fa fa-eye"></i></span> `;
	} else {
		active = `<span class="eye-el" title="Active"><i class="fa fa-eye-slash"></i></span> `;
	}

	if (attr.fullwidth) {
		full = ' <span class="icon fa fa-expand"></span>';
	}

	var control = controlbox({
		type: 'mobileheaderrow',
		close: false,
		drag: false,
		title: "Mobile Header Settings",
		other: `${full}<span class="bg" style="${bgcolor}${bgimages}"></span>${active}`
	});

	if (attr.areaname == "header-mobile") {
		mode = "mobile-mode-lyrow";
	} else {
		mode = "desktop-mode-lyrow";
	}

	return `<div class="lyrow ${mode} ui-draggable" style="display: block;"> 
				${control}
				<div class="view">
					<div class="row-fluid clearfix codetag header-row" code="${newCode}"><span class="name preview">${attr.name}</span>
						${content}
					</div>
				</div>
			</div>`;
});
Shortcode.register('mobileheaderrow', function (attr, content) {
	if (!attr.active) {
		return "";
	}
	var id = attr.id ? attr.id : randomNumber(),
		className = [],
		space = attr.space ? attr.space : 8,
		space2 = attr.space2 ? attr.space : 25;

	if (attr.classname) {
		className.push(attr.classname)
	}

	if (attr.id) {
		id = "mobileheader-" + attr.id;
		designOptionsCSS(attr, id);
		var style = "";


		if (attr.height) {
			style += `
			#${id},#${id} .header-area{height:${attr.height}px}
			#${id} .dng-mobilemenu.mobile_menu.mm-menu{
				top:${attr.height}px
			}
			#${id} .header-area .logo img{max-height:${attr.height-8}px}
			`;
		}
		if (attr.color || attr.family || attr.style || attr.weight || attr.spacing || attr.fontsize) {
			style += `#${id} .dngTextBox,
		#${id} .header-content-wrap >*:not(.nav-bar),
		#${id} .Normal,
		#${id} .Normal > a,
		#${id} .Normal > a:link,
		#${id} .Normal > a:active,
		#${id} .Normal > a:visited,
		#${id} .dngTextBox a,
		#${id} .dngTextBox a:link,
		#${id} .dngTextBox a:active,
		#${id} .dngTextBox a:visited{`
			if (attr.color) {
				style += `color:${attr.color};`
			}
			if (attr.family) {
				style += `font-family:"${attr.family}";`
			}
			if (attr.style) {
				style += `font-style:${attr.style};`
			}
			if (attr.weight) {
				style += `font-weight:${attr.weight};`
			}
			if (attr.spacing) {
				style += `letter-spacing:${attr.spacing};`
			}
			if (attr.fontsize) {
				style += `font-size:${attr.fontsize};`
			}
			style += `}`;
		}

		style += `#${id} .header-content-wrap .Normal > a:hover,
				#${id} .header-content-wrap .dngTextBox a:hover,
				#${id} .Normal > a:hover,
				#${id} .dngTextBox a:hover,
				#${id} .hover-accent:hover,
				#${id} .search-popup-box .icon.active,
				#${id} .search-popup-box:hover .icon,
				#${id} .mobile-menu-icon:hover .fa-bars:before,
				#${id} .search-popup-box .submit:hover,
				#${id} .search-popup-box .popup-close:hover,
				#${id} .shop-cart-list .shop-list .remove:hover,
				#${id} .shop-cart-list .shop-list .price-info span,
				#${id} .shop-cart-list .shop-list .number-box .number-up:hover,
				#${id} .mobile-header .shop-cart-list .shop-list .number-box .number-down:hover,
				#${id} .search-popup-box .icon:hover{
					color:${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour};
				}`;

		if (style) {
			$("#style-layout").append(style);
		}
	}
	if (attr.shadow) {
		className.push("mobile-header-shadow");
	}
	className = className.join(" ");

	content = `<div class="${attr.areaname}-bg ${className}" id="${id}"><div class="${attr.areaname}">${content}</div></div>`;


	return content;
});


/*************************************************** Header ****************************************************/

ShortcodeBack.register('header', function (attr, content) {
	var newCode = restoreSource("[header] [/header]", attr);

	$(".layout-demo").attr("code", newCode);

	return content;

});
Shortcode.register('header', function (attr, content) {
	var className = [],
		position = "";

	className.push("header_bg header-wrap header-default");

	if (attr.sticky) {
		className.push("floating-nav");
		className.push("floating-nav-" + attr.stickytype);
	}
	if (attr.position) {
		position = "header-position";
	}
	className = className.join(" ");
	if (attr.sticky) {
		content = `<header class="${className}"><div id="megamenuWidthBox" class="container"></div>${content}</header>`;
		return `<div class="header-replace ${position}">${content}</div>`;
	} else {
		content = `<header class="${className} ${position}"><div id="megamenuWidthBox" class="container"></div>${content}</header>`;
		return content;
	}

});

/*************************************************** Mobile Header ****************************************************/

ShortcodeBack.register('mobileheader', function (attr, content) {
	var newCode = restoreSource("[mobileheader] [/mobileheader]", attr);
	$(".layout-mobile-demo").attr("code", newCode);

	return content;

});
Shortcode.register('mobileheader', function (attr, content) {
	var className = [],
		position = "";

	className.push("mobile-header");

	if (attr.sticky) {
		className.push("floating-nav");
	}
	if (attr.position) {
		className.push("header-position");
	}

	className = className.join(" ");
	content = `<header class="${className}">${content}</header>`;
	if (attr.sticky && !attr.position) {
		return `<div class="mobile-header-replace">${content}</div>`;
	} else {
		return content;
	}
});


/*************************************************** Side Panel ****************************************************/
ShortcodeBack.register('sidepanel', function (attr) {
	var newCode = restoreSource("[sidepanel /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var info = "Style: " + (attr.style ? "Popup" : "Default");
	var control = controlbox({
		type: 'sidepanel',
		title: "Side Panel Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				${control}
				<div class="view viewbox-dotted">
				<div class="codetag panebox" code="${newCode}">	
				<h4><span class="fa fa-dropbox"></span> Side Panel</h4>
				<p>${info}</p>
				</div>			
				</div>
			</div>`;
});
Shortcode.register('sidepanel', function (attr) {
	var id = attr.id ? attr.id : randomNumber();
	var html = "",
		style = "",
		bgimages = "",
		btnname = "";
	var idname = `${attr.paneleffect}${id}`;

	var defaultValue = {
		borderwidth: 1,
		borderunit: "px",
		borderstyle: "solid",
		bordercolor: "#e3e3e3"
	};
	attr = $.extend(defaultValue, attr);


	if (attr.bgcolor || attr.bgimages) {
		style += `
		#${idname} .side-panel-main{`;
		if (attr.bgcolor) style += `background-color:${attr.bgcolor};`;
		if (attr.bgrepeat) style += `background-repeat:${attr.bgrepeat};`;
		if (attr.bgattachment) style += `background-attachment:${attr.bgattachment};`;
		if (attr.bgposition) style += `background-position:${attr.bgposition};`;
		if (attr.bgsize) style += `background-size:${attr.bgsize};`;
		if (attr.bgimages) bgimages = decodeURIComponent(attr.bgimages), style += `background-image:url("${bgimages}");`;
		style += `}`;
	}

	if (attr.width) {
		width = attr.width;
		width12 = parseInt(width) + 12;
		style += `		
		.side-panel {
			left: -${width}px;
			width: ${width}px;
		  }
			
		  .side-panel.side-right {
			right: -${width}px;
		  }  
		  .side-panel-active.side-panel.side-left .close-panel > .fa{
			left: ${width12}px;
		  }
		
		  .side-panel-active.side-panel.side-right .close-panel > .fa{
			right: ${width12}px;
		  } 
		  .side-panel.side-push-right {
			right: -${width}px;
		  }
		  .side-push-left-active body{
			-webkit-transform: translateX(${width}px);
			transform: translateX(${width}px);
		  }
		  .side-push-right-active body{
			-webkit-transform: translateX(-${width}px);
			transform: translateX(-${width}px);
		  }
		  .side-push-left-active .side-panel .close-panel > .fa{
		   transform: translateX(${width}px);
			-webkit-transform: translateX(${width}px);
		  }
		  .side-push-right-active .side-panel .close-panel > .fa{
			transform: translateX(-${width}px);
			-webkit-transform: translateX(-${width}px);
		  }
		  .side-panel-main,
		  .side-reval-left-active .side-reval-left,
		  .side-reval-right-active .side-reval-right{
			width: ${width}px;
		  }
		 .side-reval-left-active body {
			transform: translateX(${width}px);
			-webkit-transform: translateX(${width}px);
		  }
		  .side-reval-right-active body {
			transform: translateX(-${width}px);
			-webkit-transform: translateX(-${width}px);
		  }
		  .body-side-static-left {
			margin-left:${width}px;
		  }
		  .body-side-static-right {
			margin-right: ${width}px;
		  }
		  .side-static-left.side-panel-active {
			left: -${width}px;
		  }
		  .side-static-right.side-panel-active {
			right: -${width}px;
		  }
		  .side-panel .close-panel > .fa {
			left: ${width12}px;
		  }
		  .body-side-static-left .sticky-fixed .floating-nav.floating-nav-sticky, 
		  .body-side-static-left .floating-nav.floating-active{
			padding-left: ${width}px;
		  }
		  .body-side-static-right .sticky-fixed .floating-nav.floating-nav-sticky, 
		  .body-side-static-right .floating-nav.floating-active{
			padding-right: ${width}px;
		  }
		  `;
	}


	typographystyle(attr,'',
	`#${idname} .side-panel-main,
	#${idname} .side-panel-main a,
	#${idname} .side-panel-main a:link,
	#${idname} .side-panel-main a:active,
	#${idname} .side-panel-main a:visited`);


	style += `
			#${idname} .side-panel-main a:hover{
				color:${attr.acolor?attr.acolor:ThemeOptions.AccentColour};
			}
			`;
	if (attr.shadow) {
		style += `
		#${idname}{
		  -webkit-box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
		  box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
		}
		`;
	}
	if (attr.splitline) {
		style += `
		#${idname} .nav-top{
			border-bottom:${attr.borderwidth}${attr.borderunit} ${attr.borderstyle} ${attr.bordercolor};
		}
		#${idname} .nav-bottom{
			border-top:${attr.borderwidth}${attr.borderunit} ${attr.borderstyle} ${attr.bordercolor};
		}
		`;
	}

	if (attr.iconstyle == "custom") {
		style += `#side-panel-btn${id}.style_custom{
					background-color: ${attr.btnbg};
				}
				#side-panel-btn${id}.style_custom .icons i{
					background-color: ${attr.linecolor};
				}
				#side-panel-btn${id}.style_custom.active,
				#side-panel-btn${id}.style_custom:hover{
					background-color: ${attr.btnhoverbg};
				}
				#side-panel-btn${id}.style_custom.active .icons i,
				#side-panel-btn${id}.style_custom:hover .icons i{
					background-color: ${attr.linehovercolor};
				}
		`;
	}
	if (attr.panellayout == "menu") {

		typographystyle(attr,'menu',
		`#${idname} .dng-sidepanemenu .dropdown > li > a,  
		#${idname} .dng-sidepanemenu .dropdown > li > a:link,  
		#${idname} .dng-sidepanemenu .dropdown > li > a:active,  
		#${idname} .dng-sidepanemenu .dropdown > li > a:visited`);
	

		typographystyle(attr,'submenu',
		`#${idname} .dng-sidepanemenu li li a,  
		#${idname} .dng-sidepanemenu li li a:link,  
		#${idname} .dng-sidepanemenu li li a:active,  
		#${idname} .dng-sidepanemenu li li a:visited`);


		style += `
			#${idname} .dng-sidepanemenu ul.dropdown li.current > a ,
			#${idname} .dng-sidepanemenu ul.dropdown li:hover > a ,
			#${idname} .dng-sidepanemenu ul.dropdown li > a:hover,
			#${idname} .dng-sidepanemenu ul.dropdown li.current > a ,
			#${idname} .dng-sidepanemenu ul.dropdown li > a.current-anchor ,
			#${idname} .dng-sidepanemenu ul.dropdown li > a.arrow_closed {
				color:${attr.acolor?attr.acolor:ThemeOptions.AccentColour}!important;
			}
			#${idname} .dng-sidepanemenu ul.dropdown li:hover > span:after,
			#${idname} .dng-sidepanemenu ul.dropdown li > span.active:after {
				border-color:${attr.acolor?attr.acolor:ThemeOptions.AccentColour}!important;
			}
			`;
		if (attr.ptt || attr.ptr || attr.ptb || attr.ptl) {
			style += `#${idname} .nav-top{`;
			if (attr.ptt) style += `padding-top:${attr.ptt}px;`;
			if (attr.ptr) style += `padding-right:${attr.ptr}px;`;
			if (attr.ptb) style += `padding-bottom:${attr.ptb}px;`;
			if (attr.ptl) style += `padding-left:${attr.ptl}px;`;
			style += `}`;
		}
		if (attr.pmt || attr.pmr || attr.pmb || attr.pml) {
			style += `#${idname} .nav-center{`;
			if (attr.pmt) style += `padding-top:${attr.pmt}px;`;
			if (attr.pmr) style += `padding-right:${attr.pmr}px;`;
			if (attr.pmb) style += `padding-bottom:${attr.pmb}px;`;
			if (attr.pml) style += `padding-left:${attr.pml}px;`;
			style += `}`;
		}
		if (attr.pbt || attr.pbr || attr.pbb || attr.pbl) {
			style += `#${idname} .nav-bottom{`;
			if (attr.pbt) style += `padding-top:${attr.pbt}px;`;
			if (attr.pbr) style += `padding-right:${attr.pbr}px;`;
			if (attr.pbb) style += `padding-bottom:${attr.pbb}px;`;
			if (attr.pbl) style += `padding-left:${attr.pbl}px;`;
			style += `}`;
		}
	} else {
		if (attr.panet || attr.paner || attr.paneb || attr.panel) {
			style += `#${idname} .side-panel-main{`;
			if (attr.panet) style += `padding-top:${attr.panet}px;`;
			if (attr.paner) style += `padding-right:${attr.paner}px;`;
			if (attr.paneb) style += `padding-bottom:${attr.paneb}px;`;
			if (attr.panel) style += `padding-left:${attr.panel}px;`;
			style += `}`;
		}

	}
	if (style) {
		$("#style-layout").append(style);
	}

	if (attr.iconstyle == "custom") {
		btnname = "style_custom";
	}
	switch (attr.paneleffect) {
		case "side-left":
			html += `<div class="side-panel-btn btn-left hover-accent ${btnname}" id="side-panel-btn${id}" data-target="body" data-panel="#side-left${id}" data-class=''><span class="icons"><i class="l_1"></i><i class="l_2"></i><i class="l_3"></i></span></div>`;
			break;
		case "side-right":
			html += `<div class="side-panel-btn btn-right hover-accent ${btnname}" id="side-panel-btn${id}" data-target="body" data-panel="#side-right${id}" data-class=''><span class="icons"><i class="l_1"></i><i class="l_2"></i><i class="l_3"></i></span></div>`;
			break;
		case "side-push-left":
			html += `<div class="side-panel-btn btn-push-left hover-accent ${btnname}" id="side-panel-btn${id}" data-target="html" data-panel="#side-push-left${id}" data-class="side-push-left-active"><span class="icons"><i class="l_1"></i><i class="l_2"></i><i class="l_3"></i></span></div>`;
			break;
		case "side-push-right":
			html += `<div class="side-panel-btn btn-push-right hover-accent ${btnname}" id="side-panel-btn${id}" data-target="html" data-panel="#side-push-right${id}" data-class="side-push-right-active"><span class="icons"><i class="l_1"></i><i class="l_2"></i><i class="l_3"></i></span></div>`;
			break;
		case "side-reval-left":
			html += `<div class="side-panel-btn btn-reval-left hover-accent ${btnname}" id="side-panel-btn${id}" data-target="html" data-panel="#side-reval-left${id}" data-class="side-reval-left-active"><span class="icons"><i class="l_1"></i><i class="l_2"></i><i class="l_3"></i></span></div>`;
			break;
		case "side-reval-right":
			html += `<div class="side-panel-btn btn-reval-right hover-accent ${btnname}" id="side-panel-btn${id}" data-target="html" data-panel="#side-reval-right${id}" data-class="side-reval-right-active"><span class="icons"><i class="l_1"></i><i class="l_2"></i><i class="l_3"></i></span></div>`;
			break;
	}

	html += `<div class="header-wrap header-default ${attr.paneleffect}"  style="display:none" >	 
			<div class="clearfix side-panel-box side-panel hidden-sm hidden-xs ${attr.paneleffect}" id="${idname}" >
			<div class="close-panel" style="cursor: url(<%= SkinPath %>resource/images/cursor-close.cur), crosshair;">  </div>
		    <div class="side-panel-main">`;

	if (attr.panellayout == 'menu') {
		var logo = "",
			menu = "";
		if (attr.displaylogo) {
			var srcset = "";
			if (attr.hdurl) {
				srcset = ` srcset="${decodeURIComponent(attr.hdurl)} 2x"`;
			}
			logo = `<div class="logo-main">
			<a href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId).ToString()%>" title="<%=PortalSettings.PortalName %>">
			<img src="${decodeURIComponent(attr.url)}" ${srcset} alt="<%=PortalSettings.PortalName %>">
				</a>
			</div> `;
		}
		if (attr.displaymenu) {
			menu = `<div class="dng-sidepanemenu">
					<dnn:MOBILEMENU runat="server" id="dnnGOMENU${id}" Effect="MultiMenu" />
			 		</div>`;
		}
		html += `<div class="nav-top">
					${logo}
					 <div class="SideTopPane${id}" id="SideTopPane${id}" runat="server"></div>
				</div>
		        <div class="nav-center">
					${menu}
					<div class="SideMiddlePane${id}" id="SideMiddlePane${id}" runat="server"></div>
			    </div>
			  <div class="nav-bottom">
			  	<div class="SideBottomPane${id}" id="SideBottomPane${id}" runat="server"></div>
			  </div>
			`;
	} else {
		html += `<div class="SidePane${id}" id="SidePane${id}" runat="server"></div>`;
	}
	html += `</div></div></div>`;
	return html;


});

/*************************************************** Overlay Menu ****************************************************/
ShortcodeBack.register('overlaymenu', function (attr) {
	var newCode = restoreSource("[overlaymenu /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'overlaymenu',
		title: "Overlay Menu Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				  ${control}
				  <div class="view viewbox-dotted">
					<div class="codetag panebox" code="${newCode}">	
					<h4><span class="fa fa-reorder"></span> Overlay Menu</h4>
					<p></p>
					</div>			
				  </div>
				</div>`;
});
Shortcode.register('overlaymenu', function (attr, content) {
	var id = attr.id ? attr.id : randomNumber();
	var html = "",
		style = "";
	if (attr.bgcolor || attr.bgimages) {
		style += `
		#dng-overlay${id},
		#dng-overlay-reveal${id}{`;
		if (attr.bgcolor) style += `background-color:${attr.bgcolor};`;
		if (attr.bgrepeat) style += `background-repeat:${attr.bgrepeat};`;
		if (attr.bgattachment) style += `background-attachment:${attr.bgattachment};`;
		if (attr.bgposition) style += `background-position:${attr.bgposition};`;
		if (attr.bgsize) style += `background-size:${attr.bgsize};`;
		if (attr.bgimages) bgimages = decodeURIComponent(attr.bgimages), style += `background-image:url("${bgimages}");`;
		style += `}`;
	}

 

	typographystyle(attr,'menu',
	`#dng-overlay${id} .mm-menu .mm-listview, 
	#dng-overlay${id} .mm-menu .mm-navbar a, 
	#dng-overlay${id} .mm-menu .mm-navbar > *, 
	#dng-overlay${id} .mm-title:after, 
	#dng-overlay${id} .mm-next:after,
	#dng-overlay${id} .mm-listview>li>a,
	#dng-overlay${id} .mm-listview>li>a:link, 
	#dng-overlay${id} .mm-listview>li>a:active,
	#dng-overlay${id} .mm-listview>li>a:visited`);



	if (attr.menucolor) {
		style += `#dng-overlay${id} .lnr,#dng-overlay${id} .fa{
			color:${attr.menucolor}
		}`;
	}

 
	typographystyle(attr,'',
	`#dng-overlay${id} .overlay-menu-html,  
	#dng-overlay${id} .overlay-menu-html .Normal,
	#dng-overlay${id} .overlay-menu-html .widget-title,  
	#dng-overlay${id} .overlay-menu-html a,  
	#dng-overlay${id} .overlay-menu-html a:link,   
	#dng-overlay${id} .overlay-menu-html a:active,   
	#dng-overlay${id} .overlay-menu-html a:visited`);



	style += `#dng-overlay${id} .mm-navbar .mm-title:hover:after,
		#dng-overlay${id} .mm-menu a:hover,
		#dng-overlay${id} .lnr:hover,
		#dng-overlay${id} .overlay-menu-html a:hover,
		.dng-overlay${id} .overlay-menu-html a:hover,
		#dng-overlay${id} li.current-menu-parent > a ,
		#dng-overlay${id} li.current-menu-ancestor > a ,
		#dng-overlay${id} li.current-menu-item > a,
		#dng-overlay${id} .mm-listview>li>a:hover ,
		#dng-overlay${id} .mm-listview>li>a:hover:after,
		#dng-overlay${id} li.current > a,
		#dng-overlay${id} li.current-menu-parent > .mm-next:after,
		#dng-overlay${id} li.current-menu-ancestor > .mm-next:after,
		#dng-overlay${id} li.current-menu-item > .mm-next:after{
			color:${attr.acolor?attr.acolor:ThemeOptions.AccentColour}!important;
		}
		`;

	if (style) {
		$("#style-layout").append(style);
	}

	return `<div class="overlay-menu-box">
				<div class="overlay-button hover-accent" id="overlaymenu-btn${id}">
					<span class="dg-menu-anime"><i></i></span>
				</div>
				<div class="overlay-menu" id="overlaymenu-menu${id}" data-id="${id}">
					<dnn:MOBILEMENU runat="server" id="MOBILEMENU${id}" Effect="Mobile" />
				</div>
			 	${attr.content?'<div class="overlay-menu-html"><div class="widget">'+Base64.decode(attr.content)+'</div></div>':""}
			</div>`;

});

/*************************************************** Overlay Panel ****************************************************/
ShortcodeBack.register('overlaypanel', function (attr) {
	var newCode = restoreSource("[overlaypanel /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'overlaypanel',
		title: "Overlay Panel Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				${control}
				<div class="view viewbox-dotted">
				<div class="codetag panebox" code="${newCode}">	
				<h4><span class="fa fa-th"></span> Overlay Panel</h4>
				</div>			
				</div>
			</div>`;
});

Shortcode.register('overlaypanel', function (attr, content) {
	var id = attr.id ? attr.id : randomNumber();
	var html = "",
		style = "",
		icon = "",
		logo = "",
		paneid = "";

	if (attr.iconstyle != "default") {
		icon = `<span class="icon_list">
			<i class="l_1"></i><i class="l_2"></i><i class="l_3"></i>
		  </span>`;
	} else {
		icon = `<span class="icons">
			<i class="l_1"></i><i class="l_2"></i><i class="l_3"></i>
			<i class="l_4"></i><i class="l_5"></i><i class="l_6"></i>
			<i class="l_7"></i><i class="l_8"></i><i class="l_9"></i>
		  </span>`;
	}
	if (attr.opacity || attr.startcolor || attr.endcolor) {
		style += `#overlay-panel-content${id}:before{`;
		if (attr.opacity) style += `opacity:${attr.opacity};`;
		if (attr.startcolor) style += `background-color: ${attr.startcolor};`;
		if (attr.endcolor) style += `background: -webkit-linear-gradient(right top, ${attr.startcolor}, ${attr.endcolor});  
					background: -o-linear-gradient(right top, ${attr.startcolor}, ${attr.endcolor});   
					background: -moz-linear-gradient(right top, ${attr.startcolor}, ${attr.endcolor});   
					background: linear-gradient(to right top,${attr.startcolor},${attr.endcolor});`;
		style += `}`;
	}
	if (attr.btnbg) {
		style += `#overlay-panel-box${id} .icon_list{
		background-color:${attr.btnbg};
		}`;
	}
	if (attr.btnhoverbg) {
		style += `#overlay-panel-box${id} .icon_list:hover{
			background-color:${attr.btnhoverbg};
		}`;
	}

	if (style) {
		$("#style-layout").append(style);
	}

	if (attr.logo) {
		logo = `data-logo="${decodeURIComponent(attr.url)}"`;
		if (attr.hdurl) {
			logo += ` data-srcset="srcset='${decodeURIComponent(attr.hdurl)} 2x'"`;
		}
	}
	if (overlaypanelnumber) {
		paneid = overlaypanelnumber;
	}
	overlaypanelnumber++;
	return `<dnn:DnnCssInclude runat="server" FilePath="resource/vendor/revealer/revealer.css" PathNameAlias="SkinPath" Priority="10"  /><dnn:DnnJsInclude runat="server" FilePath="resource/vendor/revealer/revealer.js" PathNameAlias="SkinPath" Priority="10"  /><div class="overlay-panel-box" id="overlay-panel-box${id}" data-direction="${attr.direction}" data-effect="${attr.effect}" data-bg1="${attr.effectcolor1}" data-bg2="${attr.effectcolor2}" data-bg3="${attr.effectcolor3}" ${logo} >
		<div class="icon hover-accent" id="overlay-panel-icon${id}">
			${icon}
		</div>
		<div class="overlay-panel-content" id="overlay-panel-content${id}">
			<div class="overlay-panel-close hover-accent ${attr.buttoncolor}">
				<span class="lnr lnr-cross"></span>
			</div>
			<div class="overlay-panel-center">
				<div class="OverlayPanelPaneA${paneid}" id="OverlayPanelPaneA${paneid}" runat="server"></div>
				<div class="container">
					<div class="OverlayPanelPaneB${paneid}" id="OverlayPanelPaneB${paneid}" runat="server"></div>
				</div>
				<div class="full-container">
					<div class="row-flex equal-height dng-row row cont-pos-middle">
						<div class="dng-column col-sm-6">
							<div class="dng-column-inner">
								<div class="OverlayPanelPaneC${paneid}" id="OverlayPanelPaneC${paneid}" runat="server"></div>
							</div>
						</div>
						<div class="dng-column col-sm-6">
							<div class="dng-column-inner">
								<div class="OverlayPanelPaneD${paneid}" id="OverlayPanelPaneD${paneid}" runat="server"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row-flex equal-height dng-row row cont-pos-middle">
						<div class="dng-column col-sm-6">
							<div class="dng-column-inner">
								<div class="OverlayPanelPaneE${paneid}" id="OverlayPanelPaneE${paneid}" runat="server"></div>
							</div>
						</div>	
						<div class="dng-column col-sm-6">
							<div class="dng-column-inner">
								<div class="OverlayPanelPaneF${paneid}" id="OverlayPanelPaneF${paneid}" runat="server"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="OverlayPanelPaneG${paneid}" id="OverlayPanelPaneG${paneid}" runat="server"></div>
				</div>
				<div class="OverlayPanelPaneH${paneid}" id="OverlayPanelPaneH${paneid}" runat="server"></div>
			</div>
		</div>
	</div>`;
});

/*************************************************** Line ****************************************************/
ShortcodeBack.register('line', function (attr) {
	var newCode = restoreSource("[line /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'line',
		editor: false,
		title: "Vertical Separator Line Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				  ${control}
				  <div class="view viewbox-dotted">
					<div class="codetag panebox" code="${newCode}">	
						<h4><span class="fa  fa-ellipsis-v"></span> Vertical Separator Line</h4>
						<p></p>
					</div>			
				  </div>
				</div>`;
});
Shortcode.register('line', function (attr, content) {
	return `<div class="header-line"></div>`;
});

/*************************************************** Overlay Panel ****************************************************/
ShortcodeBack.register('textarea', function (attr) {
	var newCode = restoreSource("[textarea /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'textarea',
		//	editor:false,
		title: "Text Box Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				  ${control}
				  <div class="view viewbox-dotted">
					<div class="codetag panebox" code="${newCode}">	
						${attr.content?Base64.decode(attr.content):'<h4><span class="fa fa-dropbox"></span> Text Box</h4>'}
						<div class="clear"></div>
					</div>			
				  </div>
				</div>`;
});
Shortcode.register('textarea', function (attr) {
	if (attr.content) {
		return "<div class=\"dngTextBox\">" + Base64.decode(attr.content) + "</div>";
	}
});

/*************************************************** Copyright ****************************************************/
ShortcodeBack.register('copyright', function (attr) {
	var newCode = restoreSource("[copyright /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'copyright',
		//	editor:false,
		title: "Copyright Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				${control}
				<div class="view viewbox-dotted">
				<div class="codetag panebox" code="${newCode}">	
					<h4><span class="fa fa-dropbox"></span> Copyright</h4>
					<div class="clear"></div>
				</div>			
				</div>
			</div>`;
});
Shortcode.register('copyright', function (attr) {
	var index = false;
	var html = '';
	var id = attr.id ? attr.id : randomNumber();
	var style = "";

	if (attr.itemspacing) {
		style += `
		#footerinfo${id} .sep{
			margin:0px ${attr.itemspacing}px;
		}
		`;
	}
 
	typographystyle(attr,'',
	`#footerinfo${id},
	#footerinfo${id} a,  
	#footerinfo${id} a:link,   
	#footerinfo${id} a:active,   
	#footerinfo${id} a:visited`);


	style += `
		#footerinfo${id} a:hover{
			color: ${attr.hovercolor?attr.hovercolor:ThemeOptions.AccentColour};
			text-decoration: none;
		}`;

	if (style) {
		$("#style-layout").append(style);
	}


	if (attr.copyright) {
		index = true;
		html += `<dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT${id}" CssClass="footer" />`;
	}
	if (attr.privacy) {
		if (index) {
			html += '<span class="sep">|</span>';
		}
		index = true;
		if (attr.privacyurl) {
			html += `<a class="terms" href="${decodeURIComponent(attr.privacyurl)}">${attr.privacytext?attr.privacytext:"Privacy Statement"}</a>`;
		} else {
			html += `<dnn:PRIVACY runat="server" id="dnnPRIVACY${id}" CssClass="terms" text="${attr.privacytext?attr.privacytext:""}" />`;
		}
	}
	if (attr.terms) {
		if (index) {
			html += '<span class="sep">|</span>';
		}
		index = true;
		if (attr.termsurl) {
			html += `<a class="terms" href="${decodeURIComponent(attr.termsurl)}">${attr.termsytext?attr.termsytext:"Terms Of Use"}</a>`;
		} else {
			html += `<dnn:TERMS runat="server" id="dnnTERMS${id}" CssClass="terms"  text="${attr.termsytext?attr.termsytext:""}" />`;
		}

	}
	html = html ? `<div class="footer-info-box" id="footerinfo${id}">${html}</div>` : false;
	return html;
});

/*************************************************** Links ****************************************************/
ShortcodeBack.register('links', function (attr) {
	var newCode = restoreSource("[links /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'links',
		//editor:false,
		title: "Links Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				${control}
				<div class="view viewbox-dotted">
				<div class="codetag panebox" code="${newCode}">	
					<h4><span class="fa fa-link"></span> Links</h4>
					<div class="clear"></div>
				</div>			
				</div>
			</div>`;
});
Shortcode.register('links', function (attr) {
	var id = attr.id ? attr.id : randomNumber();
	var style = "";

	designOptionsCSS(attr, id);

	if (attr.itemspacing) {
		style += `
		#footerlinks${id} a{
			margin:0px ${attr.itemspacing/2}px ;
		}
		`;
	}

	typographystyle(attr,'',
	`#footerlinks${id} a,  
	#footerlinks${id} a:link,   
	#footerlinks${id} a:active,   
	#footerlinks${id} a:visited`);

	style += `
		#footerlinks${id} a:hover{
			color:${attr.hovercolor?attr.hovercolor:ThemeOptions.AccentColour};;
			text-decoration: none;
		}`;
	if (style) {
		$("#style-layout").append(style);
	}

	return `<div class="footer-links" id="footerlinks${id}"><dnn:LINKS runat="server" id="dnnLINKS${id}" CssClass="links" Level="root" ForceLinks="true"/></div>`;
});




/***************************************************  header side nav ****************************************************/

ShortcodeBack.register('headersidenav', function (attr) {
	var newCode = restoreSource("[headersidenav /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'headersidenav',
		title: "Side Nav Settings"
	});
	return `<div class="box box-element ui-draggable"> 
					${control}
					<div class="view viewbox-dotted">
						<div class="codetag panebox" code="${newCode}"><h4><span class="fa fa-ellipsis-v"></span> Side Nav</h4></div>
					</div>
				</div>`;
});
Shortcode.register('headersidenav', function (attr) {
	var id = attr.id ? attr.id : randomNumber();




	var style = `
	
	@media only screen and (min-width: 993px){
		body{
			padding-left:${attr.width}px!important;
		}
	}

	#leftslidemenu${id}{
    left:${attr.width}px;
	}

	#headersidenav${id}{
		width:${attr.width}px!important;
	}
	#leftslidemenu${id} + .slide-shade{
		background-color: ${attr.shade?attr.shade:ThemeOptions.AccentColour};
	}
	#leftslidemenu${id} li:hover,
	#leftslidemenu${id} li.current,
	#search-popup-box${id} .popup-close:hover{
		color: ${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour2};
	}
	#leftslidemenu${id} li:hover > a .menu_arrow::before,
	#leftslidemenu${id} li:hover > a .menu_arrow::after,
	#leftslidemenu${id} li.current > a .menu_arrow::before,
	#leftslidemenu${id} li.current > a .menu_arrow::after{
		border-color: ${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour2};
	}
	
	
	`;



	var logo = '',
		search = '';
		var html= '';
	if (attr.source) {
		if (attr.source == "dnn") {
			logo = `<div class="logo"><dnn:LOGO runat="server" id="dnnLOGO${id}" BorderWidth="0" /></div>`;
		} else {
			var srcset = attr.hdurl ? `srcset="${decodeURIComponent(attr.hdurl)} 2x" ` : "";
			logo = `<div class="logo"><a href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId).ToString()%>" title="<%=PortalSettings.PortalName %>"><img src="${decodeURIComponent(attr.url)}" ${srcset} alt="<%=PortalSettings.PortalName %>"></a></div>`;
		}
	}
	var menubar = `<div class="wrap-nav"><div class="icon-line-animate"><i class="l_1"></i><i class="l_2"></i><i class="l_3"></i></div><div class="leftslidemenu" id="leftslidemenu${id}"><dnn:MOBILEMENU runat="server" id="dnnGOMENU${id}" Effect="MultiMenu" /></div></div>`;

	if (attr.content) {
		var html = Base64.decode(attr.content);
	}
	if (attr.search) {
		search = `<div class="search-popup-box leftslidesearch" id="search-popup-box${id}" placeholder="${attr.placeholder?attr.placeholder:""}"><div class="icon hover-accent"><span class="magnifier"><i></i></span></div><div class="popup-reveal color-dark "></div><div class="popup-content color-${attr.color}"><div class="popup-close hover-accent"><span class="lnr lnr-cross"></span></div><div class="popup-center"><dnn:SEARCH runat="server" id="dnnSEARCH${id}" CssClass="search"  ShowSite="False" ShowWeb="False"  submit=" " /></div></div></div>`;
	}

	if (style) {
		$("#style-layout").append(style);
	}


	return `<div class="headersidenav${attr.classname?" "+attr.classname:""}" id="headersidenav${id}">
		<div class="sidenav-top">
		${logo}
		</div>
		<div class="sidenav-middle">
		${menubar}
		</div>
		<div class="sidenav-bottom">
		<div class="writing-mode-vertical">${html}</div>${search}
		</div>
	</div>`;



});
/***************************************************  Popup Menu ****************************************************/
ShortcodeBack.register('popupmenu', function (attr) {
	var newCode = restoreSource("[popupmenu /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'popupmenu',
		title: "Popup Menu Settings"
	});
	return `<div class="box box-element ui-draggable"> 
					${control}
					<div class="view viewbox-dotted">
						<div class="codetag panebox" code="${newCode}"><h4><span class="fa fa-ellipsis-v"></span> Popup Menu</h4></div>
					</div>
				</div>`;
});
Shortcode.register('popupmenu', function (attr) {
	var id = attr.id ? attr.id : randomNumber();
	var style = "";

	style += `
			#popup-menu${id},
			#popup-menu${id} .dropdown ul ul{
				background-color:${attr.bgcolor?attr.bgcolor:ThemeOptions.AccentColour};
			}
			#popup-menu-wrap${id} .menu-icon{
				background-color:${attr.icolor?attr.icolor:ThemeOptions.AccentColour};
			}
			#popup-menu${id} .dropdown a:hover,
			#popup-menu${id} .dropdown a.active,
			#popup-menu${id} .dropdown li.current  > a,
			#popup-menu${id} .dropdown li:hover > a, 
			#popup-menu${id} .dropdown li:hover > a:link{
				color:${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour2};
			}
			`;
	if (style) {
		$("#style-layout").append(style);
	}

	var menubar = `<div class="popup-menu-wrap" id="popup-menu-wrap${id}"><div class="menu-icon"><div class="icon-line-animate"><i class="l_1"></i><i class="l_2"></i><i class="l_3"></i></div></div><div class="popup-menu" id="popup-menu${id}"><div class="container"><div class="row"><div class="col-sm-8"><dnn:MOBILEMENU runat="server" id="dnnGOMENU${id}" Effect="MultiMenu" /></div><div class="col-sm-4">${attr.content?Base64.decode(attr.content):""}</div></div></div><div class="pagetitle"><%= IIf(String.IsNullOrEmpty( PortalSettings.ActiveTab.Title), PortalSettings.ActiveTab.TabName, PortalSettings.ActiveTab.Title)%></div></div></div>`;
	if (style) {
		$("#style-layout").append(style);
	}
	return `${menubar}`;
});

/***************************************************  Popup Search ****************************************************/

ShortcodeBack.register('popupsearch', function (attr) {
	var newCode = restoreSource("[popupsearch /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var info = ''; //"Style: " + (attr.style ? "Popup" : "Default");
	var control = controlbox({
		type: 'popupsearch',
		title: "Popup Search Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				  ${control}
				  <div class="view viewbox-dotted">
					<div class="codetag panebox" code="${newCode}">	
					<h4><span class="fa fa-search"></span> Popup Search</h4>
					<p>${info}</p>
					</div>			
				  </div>
				</div>`;
});
Shortcode.register('popupsearch', function (attr) {
	var id = attr.id ? attr.id : randomNumber();
	var style = "";

	style += `
			#popup-search-content${id}{
				background-color:${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour};
			}
			#popup-search-box${id}  > .icon{
				background-color:${attr.icolor?attr.icolor:ThemeOptions.AccentColour2};
			}

			`;
	if (style) {
		$("#style-layout").append(style);
	}

	return `<div class="popup-search-box" id="popup-search-box${id}" placeholder="${attr.placeholder?attr.placeholder:""}"><div class="icon hover-accent"><span class="magnifier"><i></i></span></div><div class="popup-reveal color-dark "></div><div class="popup-content" id="popup-search-content${id}"><div class="popup-center"><dnn:SEARCH runat="server" id="dnnSEARCH${id}" CssClass="search" ShowSite="False" ShowWeb="False"  submit=" " /></div></div></div>`;


});

/***************************************************menu 3d popup ****************************************************/
ShortcodeBack.register('menu3dpopup', function (attr) {
	var newCode = restoreSource("[menu3dpopup /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var info = "Style: " + (attr.style ? "Popup" : "Default");
	var control = controlbox({
		type: 'menu3dpopup',
		title: "Menu 3D Popup Settings"
	});
	return `<div class="box box-element ui-draggable"> 
				${control}
				<div class="view viewbox-dotted">
				<div class="codetag panebox" code="${newCode}">	
				<h4><span class="fa fa-dropbox"></span> Menu 3D Popup</h4>
				<p>${info}</p>
				</div>			
				</div>
			</div>`;
});
Shortcode.register('menu3dpopup', function (attr) {
	var id = attr.id ? attr.id : randomNumber();
	var html = "",
			style = "";

	var style = "";

	style += `
			.has-menu-3d-popup.popup-animate-3 body {
				background-color:${attr.bgcolor?attr.bgcolor:"#d3f8ff"};
			}
			#menu-3d-popup-box${id} .icon, 
			#menu-3d-popup-main${id} .menu-3d-popup-close{
				color:${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour} !important;
			}
			#menu-3d-popup-main${id} .menu-3d-popup-text::before{
				border-top-color:${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour};
			}
			#menu-3d-popup-main${id} .multi_menu .dropdown >li.dir > a >span::after{
				border-bottom-color:${attr.linecolor?attr.linecolor:ThemeOptions.AccentColour2};
			}
			#menu-3d-popup-main${id} .multi_menu .dropdown li li ul{
				background-color:${attr.subcolor?attr.subcolor:ThemeOptions.AccentColour2};
			}
			`;
	if (style) {
		$("#style-layout").append(style);
	}

	var logo = '';
	if (attr.source) {
		if (attr.source == "dnn") {
			logo = `<div class="logo"><dnn:LOGO runat="server" id="dnnLOGO${id}" BorderWidth="0" /></div>`;
		} else {
			var srcset = attr.hdurl ? `srcset="${decodeURIComponent(attr.hdurl)} 2x" ` : "";
			logo = `<div class="logo"><a href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId).ToString()%>" title="<%=PortalSettings.PortalName %>"><img src="${decodeURIComponent(attr.url)}" ${srcset} alt="<%=PortalSettings.PortalName %>"></a></div>`;
		}
	}




	html = `<div class="menu-3d-popup-box" id="menu-3d-popup-box${id}" data-brushcolor="${attr.brushcolor?attr.brushcolor:ThemeOptions.AccentColour2}"><div class="icon hover-accent"><span></span></div><div class="popup-reveal color-dark "></div><div class="menu-3d-popup-main" id="menu-3d-popup-main${id}"><div class="menu-3d-popup-close"><span></span></div><div class="container"><div class="popup-top">${logo}</div><div class="popup-center"><dnn:MOBILEMENU runat="server" id="dnnGOMENU${id}" Effect="MultiMenu" /></div><div class="popup-bottom">${attr.content?Base64.decode(attr.content):""}</div></div></div></div>`;
	return html;
});

/***************************************************  Popup Menu 2 ****************************************************/
ShortcodeBack.register('popupmenu2', function (attr) {
	var newCode = restoreSource("[popupmenu2 /]", attr).replace(/\[/g, '&#91;').replace(/\]/g, '&#93;');
	var control = controlbox({
		type: 'popupmenu2',
		title: "Popup Menu 2 Settings"
	});
	return `<div class="box box-element ui-draggable"> 
					${control}
					<div class="view viewbox-dotted">
						<div class="codetag panebox" code="${newCode}"><h4><span class="fa fa-ellipsis-v"></span> Popup Menu 2</h4></div>
					</div>
				</div>`;
});
Shortcode.register('popupmenu2', function (attr) {
	var id = attr.id ? attr.id : randomNumber();
	var style = "";

	style += `
		#popup-menu2${id}{
			background-color:${attr.bgcolor?attr.bgcolor:ThemeOptions.AccentColour};
		}

		#popup-menu2${id} .dropdown a:hover,
		#popup-menu2${id} .dropdown a.active,
		#popup-menu2${id} .dropdown li.current  > a,
		#popup-menu2${id} .dropdown li:hover > a, 
		#popup-menu2${id} .dropdown li:hover > a:link{
			color:${attr.acccolor?attr.acccolor:ThemeOptions.AccentColour2};
		}
		#popup-menu2${id} .dropdown li li.dir ul{
			background-color:${attr.subbg?attr.subbg:"#0f44d3"};
		}
			`;
	if (style) {
		$("#style-layout").append(style);
	}

	var menubar = `<div class="popup-menu2-wrap" id="popup-menu2-wrap${id}"><div class="menu-icon"><i class="l_1"></i><i class="l_2"></i><i class="l_3"></i></div><div class="popup-menu2" id="popup-menu2${id}"><div class="container"><dnn:MOBILEMENU runat="server" id="dnnGOMENU${id}" Effect="MultiMenu" /><div class="popup-last-content">${attr.content?Base64.decode(attr.content):""}</div></div></div></div>`;
	if (style) {
		$("#style-layout").append(style);
	}
	return `${menubar}`;
});


