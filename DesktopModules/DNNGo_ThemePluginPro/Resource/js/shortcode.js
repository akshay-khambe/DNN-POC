"use strict";
var ShortcodeBack = function (document) {
	var shortcodes = {};
	var settings = {
		attributeNameToCamelCase: true
	};
	var InternalAPI = {
		parseSynthElementAttrs: function (attrsString) {
			var synthDiv = document.createElement('div');
			synthDiv.innerHTML = '<span ' + attrsString + '></span>';
			var synthElement = synthDiv.firstChild;
			var synthElementAttrs = synthElement.getAttributeNames();
			var attrs = {};
			synthElementAttrs.forEach(function (attrName) {
				var finalAttrName = attrName;
				if (settings.attributeNameToCamelCase === true) {
					finalAttrName = attrName.replace(/\-(\w)/g, (char) => char[1].toUpperCase())
				}
				attrs[finalAttrName] = synthElement.getAttribute(attrName)
			});
			return attrs
		},
		parseEmptyShortcodes: function (source) {
			
			var reEmptyShortcode = /\[\s*(\w+)([^\]\[]*)?\s\/\s*\]/g;
			
			var parsedSource = source.replace(reEmptyShortcode, function (input, name, attrsString) {
				if (shortcodes[name]) {
					let attrs = InternalAPI.parseSynthElementAttrs(attrsString);
					return shortcodes[name](attrs)
				} else {
					return input
				}
			});
			return parsedSource
		},
		parseContentShortcodes: function (source) {
			var reContentShortcode = /\[\s*(\S+)([^\]]*)?\]([\s\S]+?)\[\s*\/\s*\1\s*\]/g;
			var parsedSource = source.replace(reContentShortcode, function (input, name, attrsString, content) {
				if (shortcodes[name]) {
					let attrs = InternalAPI.parseSynthElementAttrs(attrsString);
					return shortcodes[name](attrs, content)
				} else {
					return input
				}
			});
			return parsedSource
		},
		remainShortcodes: function (source) {
			var shortcodeNames = Object.keys(shortcodes).join('|');
			var reShortcodeNames = new RegExp('\\[\\s*(' + shortcodeNames + ')');
			return reShortcodeNames.test(source)
		},
		safeIterationNumber: function (source) {
			var openingBrackets = source.match(/\[(?!\/)/g) || [];
			return openingBrackets.length
		}
	};
	var PublicAPI = {
		register: function (name, cb) {
			shortcodes[name] = cb
		},
		parse: function (source) {
			var emptyShortcodesPhase = InternalAPI.parseEmptyShortcodes(source);
			var contentShortcodesPhase = InternalAPI.parseContentShortcodes(emptyShortcodesPhase);
			var safeIterationNumber = InternalAPI.safeIterationNumber(source);
			var runIterationNumber = 1;
			while (InternalAPI.remainShortcodes(contentShortcodesPhase)) {
				contentShortcodesPhase = InternalAPI.parseContentShortcodes(contentShortcodesPhase);
				if (++runIterationNumber > safeIterationNumber) break
			}
			return contentShortcodesPhase
		},
		setting: function (option, value) {
			settings[option] = value
		}
	};
	return PublicAPI
};
if (typeof window != 'undefined' && typeof window.document != 'undefined') {
	ShortcodeBack = ShortcodeBack(window.document)
} else if (typeof module != 'undefined' && typeof module.exports != 'undefined') {
	module.exports = ShortcodeBack
}
var Shortcode = function (document) {
	var shortcodes = {};
	var settings = {
		attributeNameToCamelCase: true
	};
	var InternalAPI = {
		parseSynthElementAttrs: function (attrsString) {
			var synthDiv = document.createElement('div');
			synthDiv.innerHTML = '<span ' + attrsString + '></span>';
			var synthElement = synthDiv.firstChild;
			var synthElementAttrs = synthElement.getAttributeNames();
			var attrs = {};
			synthElementAttrs.forEach(function (attrName) {
				var finalAttrName = attrName;
				if (settings.attributeNameToCamelCase === true) {
					finalAttrName = attrName.replace(/\-(\w)/g, (char) => char[1].toUpperCase())
				}
				attrs[finalAttrName] = synthElement.getAttribute(attrName)
			});
			return attrs
		},
		parseEmptyShortcodes: function (source) {
			var reEmptyShortcode = /\[\s*(\w+)([^\]\[]*)?\s\/\s*\]/g;
			var parsedSource = source.replace(reEmptyShortcode, function (input, name, attrsString) {
				if (shortcodes[name]) {
					let attrs = InternalAPI.parseSynthElementAttrs(attrsString);
					return shortcodes[name](attrs)
				} else {
					return input
				}
			});
			return parsedSource
		},
		parseContentShortcodes: function (source) {
			var reContentShortcode = /\[\s*(\S+)([^\]]*)?\]([\s\S]+?)\[\s*\/\s*\1\s*\]/g;
			var parsedSource = source.replace(reContentShortcode, function (input, name, attrsString, content) {
				if (shortcodes[name]) {
					let attrs = InternalAPI.parseSynthElementAttrs(attrsString);
					return shortcodes[name](attrs, content)
				} else {
					return input
				}
			});
			return parsedSource
		},
		remainShortcodes: function (source) {
			var shortcodeNames = Object.keys(shortcodes).join('|');
			var reShortcodeNames = new RegExp('\\[\\s*(' + shortcodeNames + ')');
			return reShortcodeNames.test(source)
		},
		safeIterationNumber: function (source) {
			var openingBrackets = source.match(/\[(?!\/)/g) || [];
			return openingBrackets.length
		}
	};
	var PublicAPI = {
		register: function (name, cb) {
			shortcodes[name] = cb
		},
		parse: function (source) {
			var emptyShortcodesPhase = InternalAPI.parseEmptyShortcodes(source);
			var contentShortcodesPhase = InternalAPI.parseContentShortcodes(emptyShortcodesPhase);
			var safeIterationNumber = InternalAPI.safeIterationNumber(source);
			var runIterationNumber = 1;
			while (InternalAPI.remainShortcodes(contentShortcodesPhase)) {
				contentShortcodesPhase = InternalAPI.parseContentShortcodes(contentShortcodesPhase);
				if (++runIterationNumber > safeIterationNumber) break
			}
			return contentShortcodesPhase
		},
		setting: function (option, value) {
			settings[option] = value
		}
	};
	return PublicAPI
};
if (typeof window != 'undefined' && typeof window.document != 'undefined') {
	Shortcode = Shortcode(window.document)
} else if (typeof module != 'undefined' && typeof module.exports != 'undefined') {
	module.exports = Shortcode
}


(function (global, factory) {
	typeof exports === "object" && typeof module !== "undefined" ? module.exports = factory(global) : typeof define === "function" && define.amd ? define(factory) : factory(global)
})(typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : typeof global !== "undefined" ? global : this, function (global) {
	"use strict";
	var _Base64 = global.Base64;
	var version = "2.4.8";
	var buffer;
	if (typeof module !== "undefined" && module.exports) {
		try {
			buffer = eval("require('buffer').Buffer")
		} catch (err) {
			buffer = undefined
		}
	}
	var b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
	var b64tab = function (bin) {
		var t = {};
		for (var i = 0, l = bin.length; i < l; i++) t[bin.charAt(i)] = i;
		return t
	}(b64chars);
	var fromCharCode = String.fromCharCode;
	var cb_utob = function (c) {
		if (c.length < 2) {
			var cc = c.charCodeAt(0);
			return cc < 128 ? c : cc < 2048 ? fromCharCode(192 | cc >>> 6) + fromCharCode(128 | cc & 63) : fromCharCode(224 | cc >>> 12 & 15) + fromCharCode(128 | cc >>> 6 & 63) + fromCharCode(128 | cc & 63)
		} else {
			var cc = 65536 + (c.charCodeAt(0) - 55296) * 1024 + (c.charCodeAt(1) - 56320);
			return fromCharCode(240 | cc >>> 18 & 7) + fromCharCode(128 | cc >>> 12 & 63) + fromCharCode(128 | cc >>> 6 & 63) + fromCharCode(128 | cc & 63)
		}
	};
	var re_utob = /[\uD800-\uDBFF][\uDC00-\uDFFFF]|[^\x00-\x7F]/g;
	var utob = function (u) {
		return u.replace(re_utob, cb_utob)
	};
	var cb_encode = function (ccc) {
		var padlen = [0, 2, 1][ccc.length % 3],
			ord = ccc.charCodeAt(0) << 16 | (ccc.length > 1 ? ccc.charCodeAt(1) : 0) << 8 | (ccc.length > 2 ? ccc.charCodeAt(2) : 0),
			chars = [b64chars.charAt(ord >>> 18), b64chars.charAt(ord >>> 12 & 63), padlen >= 2 ? "=" : b64chars.charAt(ord >>> 6 & 63), padlen >= 1 ? "=" : b64chars.charAt(ord & 63)];
		return chars.join("")
	};
	var btoa = global.btoa ? function (b) {
		return global.btoa(b)
	} : function (b) {
		return b.replace(/[\s\S]{1,3}/g, cb_encode)
	};
	var _encode = buffer ? buffer.from && Uint8Array && buffer.from !== Uint8Array.from ? function (u) {
		return (u.constructor === buffer.constructor ? u : buffer.from(u)).toString("base64")
	} : function (u) {
		return (u.constructor === buffer.constructor ? u : new buffer(u)).toString("base64")
	} : function (u) {
		return btoa(utob(u))
	};
	var encode = function (u, urisafe) {
		return !urisafe ? _encode(String(u)) : _encode(String(u)).replace(/[+\/]/g, function (m0) {
			return m0 == "+" ? "-" : "_"
		}).replace(/=/g, "")
	};
	var encodeURI = function (u) {
		return encode(u, true)
	};
	var re_btou = new RegExp(["[À-ß][-¿]", "[à-ï][-¿]{2}", "[ð-÷][-¿]{3}"].join("|"), "g");
	var cb_btou = function (cccc) {
		switch (cccc.length) {
			case 4:
				var cp = (7 & cccc.charCodeAt(0)) << 18 | (63 & cccc.charCodeAt(1)) << 12 | (63 & cccc.charCodeAt(2)) << 6 | 63 & cccc.charCodeAt(3),
					offset = cp - 65536;
				return fromCharCode((offset >>> 10) + 55296) + fromCharCode((offset & 1023) + 56320);
			case 3:
				return fromCharCode((15 & cccc.charCodeAt(0)) << 12 | (63 & cccc.charCodeAt(1)) << 6 | 63 & cccc.charCodeAt(2));
			default:
				return fromCharCode((31 & cccc.charCodeAt(0)) << 6 | 63 & cccc.charCodeAt(1))
		}
	};
	var btou = function (b) {
		return b.replace(re_btou, cb_btou)
	};
	var cb_decode = function (cccc) {
		var len = cccc.length,
			padlen = len % 4,
			n = (len > 0 ? b64tab[cccc.charAt(0)] << 18 : 0) | (len > 1 ? b64tab[cccc.charAt(1)] << 12 : 0) | (len > 2 ? b64tab[cccc.charAt(2)] << 6 : 0) | (len > 3 ? b64tab[cccc.charAt(3)] : 0),
			chars = [fromCharCode(n >>> 16), fromCharCode(n >>> 8 & 255), fromCharCode(n & 255)];
		chars.length -= [0, 0, 2, 1][padlen];
		return chars.join("")
	};
	var atob = global.atob ? function (a) {
		return global.atob(a)
	} : function (a) {
		return a.replace(/[\s\S]{1,4}/g, cb_decode)
	};
	var _decode = buffer ? buffer.from && Uint8Array && buffer.from !== Uint8Array.from ? function (a) {
		return (a.constructor === buffer.constructor ? a : buffer.from(a, "base64")).toString()
	} : function (a) {
		return (a.constructor === buffer.constructor ? a : new buffer(a, "base64")).toString()
	} : function (a) {
		return btou(atob(a))
	};
	var decode = function (a) {
		return _decode(String(a).replace(/[-_]/g, function (m0) {
			return m0 == "-" ? "+" : "/"
		}).replace(/[^A-Za-z0-9\+\/]/g, ""))
	};
	var noConflict = function () {
		var Base64 = global.Base64;
		global.Base64 = _Base64;
		return Base64
	};
	global.Base64 = {
		VERSION: version,
		atob: atob,
		btoa: btoa,
		fromBase64: decode,
		toBase64: encode,
		utob: utob,
		encode: encode,
		encodeURI: encodeURI,
		btou: btou,
		decode: decode,
		noConflict: noConflict,
		__buffer__: buffer
	};
	if (typeof Object.defineProperty === "function") {
		var noEnum = function (v) {
			return {
				value: v,
				enumerable: false,
				writable: true,
				configurable: true
			}
		};
		global.Base64.extendString = function () {
			Object.defineProperty(String.prototype, "fromBase64", noEnum(function () {
				return decode(this)
			}));
			Object.defineProperty(String.prototype, "toBase64", noEnum(function (urisafe) {
				return encode(this, urisafe)
			}));
			Object.defineProperty(String.prototype, "toBase64URI", noEnum(function () {
				return encode(this, true)
			}))
		}
	}
	if (global["Meteor"]) {
		Base64 = global.Base64
	}
	if (typeof module !== "undefined" && module.exports) {
		module.exports.Base64 = global.Base64
	} else if (typeof define === "function" && define.amd) {
		define([], function () {
			return global.Base64
		})
	}
	return {
		Base64: global.Base64
	}
});


var designOptionsCSS = function (attr, id) {
	var style = '';
	attr.mtop && (style += `margin-top:${attr.mtop}px;`);
	attr.mright && (style += `margin-right:${attr.mright}px;`);
	attr.mbottom && (style += `margin-bottom:${attr.mbottom}px;`);
	attr.mleft && (style += `margin-left:${attr.mleft}px;`);
	attr.ptop && (style += `padding-top:${attr.ptop}px;`);
	attr.pright && (style += `padding-right:${attr.pright}px;`);
	attr.pbottom && (style += `padding-bottom:${attr.pbottom}px;`);
	attr.pleft && (style += `padding-left:${attr.pleft}px;`);
	if (attr.brstop || attr.brsright || attr.brsbottom || attr.brsleft) {
		style += `border-radius:`;
		style += attr.brstop ? ` ${attr.brstop}px` : ' 0px';
		style += attr.brsright ? ` ${attr.brsright}px` : ' 0px';
		style += attr.brsbottom ? ` ${attr.brsbottom}px` : ' 0px';
		style += attr.brsleft ? ` ${attr.brsleft}px` : ' 0px';
		style += ';';
	}
	attr.bgcolor && (style += `background-color:${attr.bgcolor};`);
	var bgimages;
	attr.bgimages && (bgimages = decodeURIComponent(attr.bgimages), style += `background-image:url("${bgimages}");`);
	attr.bgrepeat && (style += `background-repeat:${attr.bgrepeat};`);
	attr.bgsize && (style += `background-size:${attr.bgsize};`);
	if (attr.bgposition) {
		if (attr.bgposition == "percentage") {
			style += `border-position:`;
			style += attr.bgpositionx ? ` ${attr.bgpositionx}` : ' 0';
			style += attr.bgpositiony ? ` ${attr.bgpositiony}` : ' 0';
			style += ';';
		} else {
			attr.bgposition && (style += `background-position:${attr.bgposition};`);
		}
	}
	attr.bgattachment && (style += `background-attachment:${attr.bgattachment};`);


	attr.bwtop && (style += `border-top-width:${attr.bwtop}px;`);
	attr.bstop && (style += `border-top-style:${attr.bstop};`);
	attr.bctop && (style += `border-top-color:${attr.bctop};`);

	attr.bwleft && (style += `border-left-width:${attr.bwleft}px;`);
	attr.bsleft && (style += `border-left-style:${attr.bsleft};`);
	attr.bcleft && (style += `border-left-color:${attr.bcleft};`);

	attr.bwbottom && (style += `border-bottom-width:${attr.bwbottom}px;`);
	attr.bsbottom && (style += `border-bottom-style:${attr.bsbottom};`);
	attr.bcbottom && (style += `border-bottom-color:${attr.bcbottom};`);

	attr.bwright && (style += `border-right-width:${attr.bwright}px;`);
	attr.bsright && (style += `border-right-style:${attr.bsright};`);
	attr.bcright && (style += `border-right-color:${attr.bcright};`);

	if (id && style && style != "") {
		style = `#${id}{` + style + `}`;

		if(attr.bgattachment=="fixed"){
			style += `
			@media only screen and (max-width: 991px) {
				#${id}{background-attachment:scroll}
			}
			`;
		}

		$("#style-layout").append(style);
		return true;
	} else {
		return false;
	}


}
var designCustomCSS = function (attr, className) {
	if (className) {
		if( ThemeOptions.BootstrapVersion=="v4"){
			var device=['xl-','lg-','md-','sm-',''];
			var project=['css_padding','css_margin','css_width','css_align'];
			device.forEach(function(i){
				project.forEach(function(x){
					if(x=="css_padding"){
						var direction=['_pt','_pr','_pb','_pl'];
						direction.forEach(function(y){
							if(attr[x+y+i]) className.push(attr[x+y+i]);
						})
					}else if(x=="css_margin"){
						var direction=['_mt','_mr','_mb','_ml'];
							direction.forEach(function(y){
								if(attr[x+y+i]) className.push(attr[x+y+i]);
							})
					}else{
						if (attr[x+i]) className.push(attr[x+i]);
					}
				})
			})
		}else{
			if (attr.css_pt) {
				className.push(attr.css_pt)
			}
			if (attr.css_pr) {
				className.push(attr.css_pr)
			}
			if (attr.css_pb) {
				className.push(attr.css_pb)
			}
			if (attr.css_pl) {
				className.push(attr.css_pl)
			}
			if (attr.css_mt) {
				className.push(attr.css_mt)
			}
			if (attr.css_mr) {
				className.push(attr.css_mr)
			}
			if (attr.css_mb) {
				className.push(attr.css_mb)
			}
			if (attr.css_ml) {
				className.push(attr.css_ml)
			}
			if (attr.css_width) {
				className.push(attr.css_width)
			}
			if (attr.css_text_align) {
				className.push(attr.css_text_align)
			}
		}
		
	}
	return className;
}
var designHideElement = function (attr, className) {
	if (className) {
		if (ThemeOptions.BootstrapVersion == "v4") {
			if (attr.hide_xs) className.push("hide-xs");
			if (attr.hide_sm) className.push("hide-sm");
			if (attr.hide_md) className.push("hide-md");
			if (attr.hide_lg) className.push("hide-lg");
			if (attr.hide_xl) className.push("hide-xl");
		}else{
			if (attr.hide_xl) {
				className.push("hide_largedesktop")
			}
			if (attr.hide_l) {
				className.push("hide_desktop")
			}
			if (attr.hide_m) {
				className.push("hide_table")
			}
			if (attr.hide_m_p) {
				className.push("hide_table_portrait")
			}
			if (attr.hide_s) {
				className.push("hide_mobile")
			}
			if (attr.hide_s_l) {
				className.push("hide_mobile_landscape")
			}
		}
	}
	return className;
}
var controlbox = function (a) {
	var d = {
		editor: true,
		close: true,
		drag: true,
		type: 'row',
		other: ''
	};
	a = $.extend(d, a);
	var content = '<div class="control-box">';
	if (a.other) content += a.other;
	if (a.editor) content += '<button type="button" class="editor" data-title="' + a.title + '" data-target="#editorModal" role="button" data-codetype="' + a.type + '" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button>';
	if (a.close) content += '<a href="#close" class="remove"><i class="glyphicon glyphicon-remove"></i></a>';

	if (a.drag) {
		var drag = "drag";
		if (d.type == "row") {
			var drag = "drag rowdrag";
		} else if (d.type == "column") {
			var drag = "drag columndrag";
		}
		content += '<span class="' + drag + '"><i class="glyphicon glyphicon-screenshot"></i></span>';
	};

	content += '</div>';
	return content;
}
var backgroundstyle = function (a, n) {
	var style = "";
	a[n + "bgcolor"] && (style += `background-color:${a[n+"bgcolor"]}!important;\n`);
	var stybgimages;

	a[n + "bgimages"] && (stybgimages = decodeURIComponent(a[n + "bgimages"]), style += `background-image:url("${stybgimages}")!important;\n`);
	a[n + "bgsize"] && (style += `background-size:${a[n+"bgsize"]}!important;\n`);
	a[n + "bgrepeat"] && (style += `background-repeat:${a[n+"bgrepeat"]}!important;\n`);
	if (a[n + "bgposition"]) {
		if (a[n + "bgposition"] == "percentage") {
			style += `background-position:`;
			style += a[n + "bgpositionx"] ? " " + a[n + "bgpositionx"] + "%" : ' 0';
			style += a[n + "bgpositiony"] ? " " + a[n + "bgpositiony"] + "%" : ' 0';
			style += '!important;\n';
		} else {
			style += `background-position:${a[n+"bgposition"]}!important;\n`
		}
	}
	a[n + "bgattachment"] && (style += `background-attachment:${a[n+"bgattachment"]}!important;\n`);
	return style;
}

var typographystyle = function (a, n,s) {
	var style = "";
	if (a[n + "color"]) style += `color:${a[n + "color"]};`;
	if (a[n + "family"]) style += `font-family:"${a[n + "family"]}";`;
	if (a[n + "fontsize"]) style += `font-size:${a[n + "fontsize"]};`;
	if (a[n + "style"]) style += `font-style:${a[n + "style"]};`;
	if (a[n + "weight"]) style += `font-weight:${a[n + "weight"]};`;
	if (a[n + "spacing"]) style += `letter-spacing:${a[n + "spacing"]};`;
	if (a[n + "lineheight"]) style += `line-height:${a[n + "lineheight"]};`;
	if (a[n + "texttransform"]) style += `text-transform:${a[n + "texttransform"]};`;
	
	if(style && s){
		style = s+"{"+style+"}";
		$("#style-layout").append(style);
	}
}




var backgroundParallax = function (data, id) {
	if (data.bgstyle) {
		var style = '',attribute='';
		
		switch (data.bgstyle) {
			case 'single':
				data.paxcolor && (style += `background-color:${data.paxcolor}!important;`);
			break;
			case 'gradient':
			var start = data.paxgradientstart?data.paxgradientstart:"#FFFFFF";
			var end = data.paxgradientend?data.paxgradientend:start;
			var type = data.paxgradienttype;
				if(type=="custom"){
					type = data.paxgradientdeg?data.paxgradientdeg+"deg":"45deg";
				}
				style += `background:-webkit-linear-gradient(${type},${start},${end});background:linear-gradient(${type},${start},${end});`;
				
			break;
			case 'image':
				if(data.paximages){
					style += `background-image:url("${decodeURIComponent(data.paximages)}");`;
					if(data.paxrepeat) style += `background-repeat:${data.paxrepeat};`;
					if(data.paxsize) style += `background-size:${data.paxsize};`;
					if (data.paxposition) {
						if (data.paxposition == "percentage") {
							style += `background-position:`;
							style += data.paxpositionx ? " " + data.paxpositionx + "%" : ' 0';
							style += data.paxpositiony ? " " + data.paxpositiony + "%" : ' 0';
							style += '!important;';
						} else {
							style += `background-position:${data.paxposition}!important;`
						}
					}
									
					 
				}
			break;
			case 'parallax':
				if(data.paximages){
					style += `background-image:url("${decodeURIComponent(data.paximages)}");`;
					if(data.paxrepeat) style += `background-repeat:${data.paxrepeat};`;
					if(data.paxsize) style += `background-size:${data.paxsize};`;
					
					if(data.parallax == "js"){
						attribute +=` data-parallax="parallax"`;
						if(data.paxspeed){
							attribute +=` data-paroller-factor="${data.paxspeed}"`;
						}else{
							attribute +=` data-paroller-factor="0.1"`;
						}
						if(data.paxspeedxl) attribute +=` data-paroller-factor-xl="${data.paxspeedxl}"`;
						if(data.paxspeedlg) attribute +=` data-paroller-factor-lg="${data.paxspeedlg}"`;
						if(data.paxspeedmd) attribute +=` data-paroller-factor-md="${data.paxspeedmd}"`;
						if(data.paxspeedsm) attribute +=` data-paroller-factor-sm="${data.paxspeedsm}"`;
						if(data.paxspeedxs) attribute +=` data-paroller-factor-xs="${data.paxspeedxs}"`;
					}else{
						style += `background-attachment: fixed;`;
						if(data.paxposition){
							if (data.paxposition == "percentage") {
								style += `background-position:`;
								style += data.paxpositionx ? " " + data.paxpositionx + "%" : ' 0';
								style += data.paxpositiony ? " " + data.paxpositiony + "%" : ' 0';
								style += '!important;\n';
							} else {
								style += `background-position:${data.paxposition}!important;\n`
							}
						}
					}
				}
			break;
			case 'youtube':
				attribute +=` data-parallax="youtube"`;
				if(data.paxyoutube) attribute +=` data-url="${decodeURIComponent(data.paxyoutube)}"`;
				if(data.paxyoutubecover){
					attribute +=` data-cover="${data.paxyoutubecover}"`;
					style += `background-image:url("${decodeURIComponent(data.paxyoutubecover)}");background-repeat:no-repeat;background-size:cover`;
			   }
			   if(data.paxloop) attribute +=` data-loop="${data.paxloop}"`;
				if(data.paxmuted) attribute +=` data-muted="${data.paxmuted}"`;
				if(data.paxstart) attribute +=` data-start="${data.paxstart}"`;
				if(data.paxend)	attribute +=` data-end="${data.paxend}"`;
				if(data.paxviewport) attribute +=` data-viewport="${data.paxviewport}"`;
				
				attribute +=` data-id="${randomNumber()}"`;

				break;
			case 'video':
				attribute +=` data-parallax="video"`;
				if(data.paxmp4)	attribute +=` data-mp4="${decodeURIComponent(data.paxmp4)}"`;
				if(data.paxogg)	attribute +=` data-ogg="${decodeURIComponent(data.paxogg)}"`;
				if(data.paxwebm) attribute +=` data-webm="${decodeURIComponent(data.paxwebm)}"`;
				if(data.paxyoutubecover){
					 attribute +=` data-cover="${data.paxyoutubecover}"`;
					 style += `background-image:url("${decodeURIComponent(data.paxyoutubecover)}");background-repeat:no-repeat;background-size:cover`;
				}
				if(data.paxloop) attribute +=` data-loop="${data.paxloop}"`;
				if(data.paxmuted) attribute +=` data-muted="${data.paxmuted}"`;
				if(data.paxviewport) attribute +=` data-viewport="${data.paxviewport}"`;
			break;

		}

		if (id && style && style != "") {
			style = `#${id}{` + style + `}`;
			if(data.bgstyle=="parallax" && data.parallax=="auto"){
				style += `
				@media only screen and (max-width: 991px) {
					#${id}{background-attachment:scroll}
				}
				`;
			}

			$("#style-layout").append(style);
		} 

		if(data.masklayer && data.masklayercolor){

			var style2 = `#${id}{position:relative}#${id}:before{
				content:"";
				position: absolute;
				top:0;
				left:0;
				right:0;
				bottom:0;
				display: block;
				pointer-events:none;
				background-color:${data.masklayercolor};
			}`;
			$("#style-layout").append(style2);
		}
		if(data.tilt && data.tiltdegree){
			var style2 = `#${id}{
							-webkit-transform: skewY(${data.tiltdegree}deg)!important;
							transform: skewY(${data.tiltdegree}deg)!important;
							-webkit-transform-origin:${data.tiltorigin};
							transform-origin:${data.tiltorigin};
						  }
						  #${id} > div {
							-webkit-transform: skewY(${data.tiltdegree > 0 ? -data.tiltdegree : Math.abs(data.tiltdegree)}deg)!important;
							transform: skewY(${data.tiltdegree > 0 ? -data.tiltdegree : Math.abs(data.tiltdegree)}deg)!important;
							-webkit-transform-origin:${data.tiltorigin};
							transform-origin:${data.tiltorigin};
						 }
						 #${id} > div.dng-video-wrapper {
							-webkit-transform: skewY(${data.tiltdegree > 0 ? -data.tiltdegree : Math.abs(data.tiltdegree)}deg) translate(-50%,-50%)!important;
							transform: skewY(${data.tiltdegree > 0 ? -data.tiltdegree : Math.abs(data.tiltdegree)}deg) translate(-50%,-50%)!important;
						 }
						  `;
			$("#style-layout").append(style2);
		}


		return attribute?attribute:false;

	}
}

var DataAnimationCSS = function (attr, className) {
	var $classname =[] ;
	var $attributes =[] ;

		switch(attr.ain_type){
			case "clipping":

			$classname.push("dng_animate_visible");
			$classname.push(attr.ain_clipping);

			if(attr["ain_clipping_speed"]){
				$attributes.push('data-clipping-duration="'+attr["ain_clipping_speed"]+'"');	
			}
			if(attr["ain_clipping_delay"]){
				$attributes.push('data-clipping-delay="'+attr["ain_clipping_delay"]+'"');	
			}
			if(attr["ain_clipping_timing"]){

				if(attr["ain_clipping_timing"].indexOf("cubic-bezier")!=-1){
					$attributes.push('data-clipping-timing="'+attr["ain_clipping_timing"]+'"');
				}else{
					$classname.push(attr["ain_clipping_timing"]);
				}
			}
			if(attr["ain_clipping_color"]){
				$attributes.push('data-clipping-bg="'+attr["ain_clipping_color"]+'"');	
			}
			break;
			case "pscroll":
			
			var ain = [];
			if(attr.ain_smoothness){ain.push({"smoothness":attr.ain_smoothness})};
			if(attr.ain_x){
				if(attr.parallaxeffect=="toright"){
					ain.push({"x":-attr.ain_x});
				}else{
					ain.push({"x":attr.ain_x});
				}
			};
			if(attr.ain_y){
				if(attr.parallaxeffect=="tobottom"){
					ain.push({"y":-attr.ain_y});
				}else{
					ain.push({"y":attr.ain_y});
				}
			};
			if(attr.ain_z){ain.push({"z":attr.ain_z})};

			if(attr.parallaxeffect=="rotate"){
				if(attr.ain_rotatez){ain.push({"rotate":attr.ain_rotatez})};	
			}else{
				if(attr.ain_rotatex){ain.push({"rotateX":attr.ain_rotatex})};
				if(attr.ain_rotatey){ain.push({"rotateY":attr.ain_rotatey})};
				if(attr.ain_rotatez){ain.push({"rotateZ":attr.ain_rotatez})};	
			}

			
			if(attr.parallaxscale){
				ain.push({"scaleX":attr.parallaxscale});
				ain.push({"scaleY":attr.parallaxscale});
			};

			if(attr.parallaxfade){ain.push({"opacity":0})};
			
			if(ain.length != 0){
				ain = JSON.stringify(ain).replace(/{/g,"").replace(/}/g,"").replace("[","{").replace("]","}")
			}
			$attributes.push('data-parallax2=\''+ain+'\'');	
			break;

			case "parallax":
				$classname.push("scene-item");
				if(attr["ain_depthx"]){
					$attributes.push('data-depth-x="'+attr["ain_depthx"]+'"');	
				}
				if(attr["ain_depthy"]){
					$attributes.push('data-depth-y="'+attr["ain_depthy"]+'"');	
				}
			break;

		}
		return {
			"classname" :$classname.length?$classname:"",
			"attributes" :$attributes.length?$attributes:"",
		};
}

var fixedelementHTML = function (attr) {
	attr = JSON.parse(attr.replace(/`/g,'"'));
	var html ='';
	var style ='';
	var desktop='';
	var laptop='';
	var tablet='';
	var mobile='';
	for(var i in attr){
		var data =attr[i];
		var id2=data.id2?data.id2:randomNumber();
		var ain='';
		var depth='';
		var classname=data.classname?' '+data.classname:'';
		var content='';
		var id='';
		
		if(data.animationtype == "pscroll"){
			if(data.smoothness){ain +="\"smoothness\":\""+data.smoothness+"\",";};
			
			if(data.x){
				if(attr.aeffect=="toright"){
					ain +="\"x\":\""+(-data.x)+"\",";
				}else{
					ain +="\"x\":\""+data.x+"\",";
				}
			};
			if(data.y){ 
				if(data.aeffect=="tobottom"){
					ain +="\"y\":\""+(-data.y)+"\",";
				}else{
					ain +="\"y\":\""+data.y+"\",";
				}
			};

			if(data.z){ain +="\"z\":\""+data.z+"\",";};

			if(data.aeffect=="rotate"){
				if(data.rotatez){ain +="\"rotate\":\""+data.rotatez+"\",";};
			}else{
				if(data.rotatex){ain +="\"rotateX\":\""+data.rotatex+"\",";};
				if(data.rotatey){ain +="\"rotateY\":\""+data.rotatey+"\",";};
				if(data.rotatez){ain +="\"rotateZ\":\""+data.rotatez+"\",";};
			}




			if(data.scale){
				ain +="\"scaleX\":\""+data.scale+"\",";
				ain +="\"scaleY\":\""+data.scale+"\",";
			};
			if(data.fade){
				ain +="\"opacity\":\"0\",";
			}
			if(ain){
				ain=' data-parallax2=\'{'+ain.substring(0,ain.length - 1)+'}\' ';
			}
			
		}else if(data.animationtype == "parallax"){
			if(data["depthx"]){
				depth +=' data-depth-x="'+data["depthx"]+'"';	
			}
			if(data["depthy"]){
				depth += ' data-depth-y="'+data["depthy"]+'"';	
			}
		}
		if(data.hide_xl){
			classname+=' hide-xl';
		};
		if(data.hide_lg){
			classname+=' hide-lg';
		};
		if(data.hide_md){
			classname+=' hide-md';
		};
		if(data.hide_sm){
			classname+=' hide-sm';
		};
		if(data.hide){
			classname+=' hide-xs';
		}		

		switch(data.type){
			case 'font':
			if(data.text){
				var elementHTML = data.text;
					if(data.animationtype == "parallax"){
						elementHTML =`<div class="scene-item"${depth}>${elementHTML}</div>`;
					}
				 content =`<div class="fixed-element element-font${classname}"${ain} id="element-font${id2}">${elementHTML}</div>`;
				 id= "#element-font"+id2;

			}
			break;
			case 'pic':
			if(data.image){
				var elementHTML = `<img src="${decodeURIComponent(data.image)}" alt="" class="img-fluid" />`;
				if(data.animationtype == "parallax"){
					 elementHTML = `<img src="${decodeURIComponent(data.image)}" class="scene-item img-fluid"${depth}  alt="" />`;
				}
				 content =`<div class="fixed-element element-pic${classname}"${ain} id="element-pic${id2}">${elementHTML}</div>`;
				 id= "#element-pic"+id2;
			}
			break;
			case 'shape':
			var elementHTML = '<span class="shape"></span>';
			if(data.animationtype == "parallax"){
				var elementHTML = '<span class="shape scene-item"${depth}></span>';
			}
			 content =`<div class="fixed-element element-shape${classname}"${ain} id="element-shape${id2}">${elementHTML}</div>`;
			 id= "#element-shape"+id2;
			break;
		}

		if(data.fontcolor || data.family){
			style+=`${id}{${data.fontcolor?"color:"+data.fontcolor+";":""}${data.family?"font-family:\""+data.family+"\";":""}}`;
		}

		var Device=["","_sm","_md","_lg","_xl"];

		Device.forEach(function(x){ 
		if(data['maxwidth'+x] || data['width'+x] || data['height'+x] || data['positiony'+x] || data['positionx'+x] || data['fontsize'+x]  ){		
var css =`${id}{${data['maxwidth'+x]?"max-width:"+data['maxwidth'+x]+"px;":""}${data['width'+x]?"width:"+data['width'+x]+"px;":""}${data['height'+x]?"height:"+data['height'+x]+"px;":""}${data['positiony'+x]?data['ydirection']+":"+data['positiony'+x]+"%;":""}${data['positionx'+x]?data['xdirection']+":"+data['positionx'+x]+"%;":""}${data['fontsize'+x]?"font-size:"+data['fontsize'+x]+"px;":""}}`;
				switch(x){
					case '_sm':
					mobile+=css;
					break;
					case '_md':
					tablet+=css;
					break;
					case '_lg':
					laptop+=css;
					break;
					case '_xl':
					desktop+=css;
					break;
					default:
					style+=css;
					break;
				}
		 }
		})
		if(content){
			html+=content;
		 }
	};
	if(mobile){
		style+="@media (min-width: 576px){"+mobile+"}";
	};
	if(tablet){
		style+="@media (min-width: 768px){"+tablet+"}";
	};
	if(laptop){
		style+="@media (min-width: 992px){"+laptop+"}";
	};
	if(desktop){
		style+="@media (min-width: 1200px){"+desktop+"}";
	};
	if(style){
		$("#style-layout").append(style);
	}	
	return html;
}

