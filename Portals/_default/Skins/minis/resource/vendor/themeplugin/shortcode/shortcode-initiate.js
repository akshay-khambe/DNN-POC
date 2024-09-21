var layouthistory;

var PaneNameChange ={};
var ServiceGetPanls= false;

function randomNumber() {
	return randomFromInterval(1, 1e6)
}

function randomFromInterval(e, t) {
	return Math.floor(Math.random() * (t - e + 1) + e)
}

var Skintemplate =['mobilemenu','megamenu','row','pane','column','popupmenu','mobileheaderrow','language', 'translation'];




function removeElm() {
	$(".layout-demo,.layout-mobile-demo").delegate(".remove", "click", function (e) {
		e.preventDefault();
		if(confirm("Are you sure you want to delete this item?")){
			$(this).parent().parent().remove();
			if (!$(".layout-demo .lyrow").length > 0) {
				clearDemo()
			}
		}
	})
}

function clearDemo() {
	$(".layout-demo").empty();
	layouthistory = null;
	localStorage.removeItem("layoutdata");
}

function cleanHtml(e) {
	$(e).parent().append($(e).children().html())
}

function getShortCode(h, w) {

	if ($("#download-layout").length) {
		$("#download-layout").html(h.clone(false));
	} else {
		$("body").append("<div id='download-layout'></div>")
		$("#download-layout").html(h);
	}
	if ($("#download-layout").children(".codetag")) {
		var t = $("#download-layout");
	} else {
		var t = $("#download-layout").children();
	}
	t.find(".preview, .configuration, .control-box,button").remove();
	t.find(".lyrow").addClass("removeClean");
	t.find(".box-element").addClass("removeClean");

	if (w) {
		var firststage = t.find(".codetag.column").eq(0).parent().children(".codetag.column");
		firststage.each(function (index) {
			var reg = /col=\'(.+?)\'/;
			var newcode = $(this).attr("code").replace(reg, "col='" + w[index] + "'");
			$(this).attr("code", newcode);
		})
		var length = firststage.length;
		if (length > w.length) {

			firststage.each(function (index) {
				if (index > w.length - 1) {
					firststage.eq(w.length - 1).append($(this).html());
					$(this).remove();
				}
			})
		}
		if (length < w.length) {
			for (var i in w) {				
				if (i > length - 1) {
					firststage.parent().append("[column col='" + w[i] + "'] [/column]")
				}
			}
		}
	}

	t.find(".lyrow .lyrow .lyrow .lyrow .lyrow .removeClean").each(function () {
		cleanHtml(this)
	});
	t.find(".lyrow .lyrow .lyrow .lyrow .removeClean").each(function () {
		cleanHtml(this)
	});
	t.find(".lyrow .lyrow .lyrow .removeClean").each(function () {
		cleanHtml(this)
	});
	t.find(".lyrow .lyrow .removeClean").each(function () {
		cleanHtml(this)
	});
	t.find(".lyrow .removeClean").each(function () {
		cleanHtml(this)
	});
	t.find(".removeClean").each(function () {
		cleanHtml(this);
	});
	t.find(".removeClean").remove();

	$("#download-layout .codetag").each(function () {
		var e = $(this);
		if (e.attr("code").indexOf("[/") > 0) {
			var code = e.attr("code").split("[/");
			if (e.children().length) {
				e.prepend(code[0]);
				e.append("[/" + code[1]);
				e.children().unwrap();
			} else {
				e.after(e.attr("code")).remove();
			}
		} else {
			e.after(e.attr("code")).remove();
		}

	})

	$("#style-layout").html(" ");
	return $("#download-layout").text().replace(/[\r\n]/g, "").replace(/\s+/g, ' ').replace(/\/\] \[/g, '/][');

}

function fixedmessage(a) {
	d = {
		class: "alert-success",
		html: ''
	};
	a = $.extend(d, a);
	var msg = `<div class="alert ${a.class}">${a.html}</div>`;
	msg = $(msg);
	$(".fixedmessage").append(msg.hide());
	msg.fadeIn().delay(1500).slideUp(function () {
		msg.remove()
	});
}

function downloadLayoutSrc() {
	$("#download-layout").html(" ");

	var formatSrc = "";

	if ($(".layout-mobile-demo").length) {
		formatSrc = getShortCode($(".layout-demo")) + getShortCode($(".layout-mobile-demo"));
	} else {
		formatSrc = getShortCode($(".layout-demo"));
	}

	//var html = HTMLFormat(Shortcode.parse(formatSrc)) ;
	var html = Shortcode.parse(formatSrc);
	var style = $("#style-layout").text();
	jQuery.cookie("code", formatSrc)
	var json = $.parseJSON($(".layout-json").html());
	
	json["HTMLData"] = html;
	json["LabelData"] = formatSrc;
	json["CSSData"] = style;
	json["Alias"] = $("#TemplateProjectName").val();
		
 

	$.post($(".layout-json").data("update"), {
		LayoutItem: JSON.stringify(json)

	}, function (data) {
		var data2 =$.parseJSON(data);
		if(data2.Success != undefined && !data2.Success ){
			fixedmessage({
				class: "alert-danger",
				html: '<i class="fa fa-info-circle"></i> '+data2.Message
			});
		}else{
			$(".layout-json").html(data);
			$(".layout-edit").removeClass("loading");
			fixedmessage({
				class: "alert-success",
				html: '<i class="fa fa-check-circle"></i> Save options successfully.'
			});
		}

	})
}

function getRandomString(len) {
	len = len || 32;
	var $chars = 'ABCDEFGHIJKLMNPQRSTWXYZabcdefhijkLmnprstwxyz2345678';
	var maxPos = $chars.length;
	var pwd = '';
	for (i = 0; i < len; i++) {
		pwd += $chars.charAt(Math.floor(Math.random() * maxPos));
	}
	return pwd;
}


var currentDocument = null;
var timerSave = 1000;
var stopsave = 0;
var startdrag = 0;
var demoHtml = $(".layout-demo").html();
var currenteditor = null;
var overlaypanelnumber=0;
var mobileheaderrowheight = 0;
var hasName = [];

$(window).resize(function () {
	$("body").css("min-height", $(window).height() - 90);
	$(".layout-demo").css("min-height", $(window).height() - 160)
});


function columndrag(){
	$(".lyrow .row-fluid").sortable({
		connectWith: ".column",
		opacity: .35,
		handle: ".columndrag",
	///	containment: "parent",
		start: function (e, t) {
			if (!startdrag) stopsave++;
			startdrag = 1;
		},
		stop: function (e, t) {
			if (stopsave > 0) stopsave--;
			startdrag = 0;
			if ($(this).attr("code")) {
				var c = "";
				$(this).children(".column").each(function () {
					c += $(this).attr("col") + "+";
				})
				c = c.substring(0, c.length - 1);
				var reg = /layout=\'(.+?)\'/;
				var data = $(this).attr("code").replace(reg, "layout='" + c + "'");
				$(this).attr("code", data);
			}
		}
	});
} 

function initContainer() {
	$(" .layout-demo .column .col-content").sortable({
		connectWith: ".col-content",
		opacity: .35,
		handle: ".drag",
		start: function (e, t) {
			if (!startdrag) stopsave++;
			startdrag = 1;
		},
		stop: function (e, t) {
			if (stopsave > 0) stopsave--;
			startdrag = 0;
		}
	});
	$(".layout-demo").sortable({
		connectWith: ".lyrow",
		opacity: .35,
		handle: ".rowdrag",
		start: function (e, t) {
			if (!startdrag) stopsave++;
			startdrag = 1;
		},
		stop: function (e, t) {
			if (stopsave > 0) stopsave--;
			startdrag = 0;
		}
	});
	columndrag();
}

function SourceAttrString(attrsString) {
	var synthDiv = document.createElement('div');
	synthDiv.innerHTML = '<span ' + attrsString + '></span>';

	var synthElement = synthDiv.firstChild;
	var synthElementAttrs = synthElement.getAttributeNames();
	var attrs = {};

	synthElementAttrs.forEach(function (attrName) {
		var finalAttrName = attrName;
		finalAttrName = attrName.replace(/\-(\w)/g, (char) => char[1].toUpperCase());
		attrs[finalAttrName] = synthElement.getAttribute(attrName);
	});
	return attrs;
}
function SourceAttr(source) {
	var shortcodes = {};
	if (source) {
		if (source.indexOf("/]") > 0) {
			var reEmptyShortcode = /\[\s*(\w+)([^\]\[]*)?\/\s*]/g;
		} else {
			var reEmptyShortcode = /\[\s*(\S+)([^\]]*)?\]([\s\S]+?)\[\s*\/\s*\1\s*\]/g;
		}

		source.replace(reEmptyShortcode, function (input, name, attrsString) {
			if (attrsString) {
				shortcodes = SourceAttrString(attrsString);
			}
		});
	}
	return shortcodes;
}
function restoreSource(code, arr) { 

	var news = '';

	if(!arr.id){
		arr["id"] =randomNumber();
	}
	for (var p in arr) {
		if (p != "undefined") {
			news += p + "='" + arr[p] + "' "
		}
	}
	if (code.indexOf("/]") > 0) {
		var reEmptyShortcode = /\[\s*(\w+)([^\]\[]*)?\/\s*]/g;
		news = code.replace(reEmptyShortcode, "[$1 " + news + "/]")
	} else {
		var reEmptyShortcode = /\[\s*(\S+)([^\]]*)?\]([\s\S]+?)\[\s*\/\s*\1\s*\]/g;
		news = code.replace(reEmptyShortcode, "[$1 " + news + "] [/$1]")
	}

	

	return news;
}

function layoutSettingList() {
	$("#editorModal .layout-setting-list").each(function () {
		var e = $(this);
		e.find("li[data-value=\"" + e.data("value") + "\"]").addClass("active");
		if (e.find("li[data-value=\"" + e.data("value") + "\"]").length == 0) {
			e.siblings(".dnnOptions").show();
		}

		e.find("li").on("click", function () {
			$(this).addClass("active").siblings().removeClass("active");
			e.siblings(".dnnOptions").val($(this).data("value")).hide();
		})
		e.siblings("a").on("click", function () {
			e.find("li").removeClass("active");
			e.siblings(".dnnOptions").show();
			return false;
		})

	})
}

function selectVal() {
	$("#editorModal select").each(function () {
		if($(this).hasClass("columnWidth")){
			if($(this).data("value")){
				
				var p = String($(this).data("value")).split("/");
				if(p[1]){
					if(p[1]!=5){
						$(this).data("value",12/p[1]*p[0]+"/12")
					}
				}else{
					$(this).data("value",p[0]+"/12")
				}
			}
		}
		$(this).find("option[value=\"" + $(this).data("value") + "\"]").attr("selected", "selected");
		$(this).change();
	})

}

function isArrayDng(arr,value){
    for(var i = 0; i < arr.length; i++){
        if(value === arr[i]){
            return true;
        }
    }
    return false;
}
function sortNumber(a,b){
return a - b
}


function FixedElementHTML(e){
	var v =e.val();
	var add = e.siblings(".addElement");
	var itemWrap =e.siblings(".FixedElementWrap");
	var idlist =[];
	var addElementEvent = function(itemWrap){

		itemWrap.find(".select-image-box input").removeClass("dnnOptions").addClass("dnnElement").attr("data-name","image");
		
		itemWrap.find("select").each(function () {
			if($(this).hasClass("columnWidth")){
				if($(this).data("value")){
					
					var p = String($(this).data("value")).split("/");
					if(p[1]){
						if(p[1]!=5){
							$(this).data("value",12/p[1]*p[0]+"/12")
						}
					}else{
						$(this).data("value",p[0]+"/12")
					}
				}
			}
			$(this).find("option[value=\"" + $(this).data("value") + "\"]").attr("selected", "selected");
			$(this).change();
		})
	
		itemWrap.find(".escape").each(function () {
			if ($(this).val()) {
				$(this).val(decodeURIComponent($(this).val()))
			}
		})

		itemWrap.find('.conditional').conditionize();
		itemWrap.find('.colorpicker:not(".dropdown-menu")').colorpicker().on('changeColor', function (ev) {
			$(ev.currentTarget).siblings("i").css({
				"background-color": ev.color.toHex(),
				"opacity": ev.color.value.a
			});
		});
		itemWrap.find(".select-image-box").each(function (index, domEle) {
			$(domEle).find("input").bind('blur change keypress ', function () {
				$(domEle).find("img").attr("src", $(this).val());
				if ($(this).val() != "" && $(this).val().length > 0) {
					$(domEle).find(".btn-image-select").html("<i class=\"fa fa-folder-open-o\"></i> Change");

					$(domEle).find(".btn-image-remove").show();
				} else {
					$(domEle).find(".btn-image-select").html("<i class=\"fa fa-folder-open-o\"></i> Select Image");
					$(domEle).find(".btn-image-remove").hide();
				}
			});

			$(domEle).find(".btn-image-remove").click(function () {
				$(domEle).find("input").attr("data-urls","").val("").keypress().change();
			});
			$(domEle).find(".btn-image-select").click(function () {

				$("#SelectImage_Iframe").attr("src", $(this).attr("data-href"));

				$("body").one("click", "#SelectImage_Modal .btn-insert", function () { 
					$(domEle).find("input").val($(domEle).find("input").attr("data-urls")).keypress().change();
					$("#SelectImage_Modal").modal('hide');
				});

			});
		});
	}

	if(v){

		v = JSON.parse(v.replace(/`/g,'"'));
		for(var item in v){
			
			$.ajax({
				url: $("#tmpl-url").data("url") + "build/FixedElement.html?v="+ThemeOptions.Version,
				async: false,
				success: function (data) {
					var tmplbox = $('<script type="text/x-jquery-tmpl">');
					tmplbox.html(data);
					v[item]["image"+v[item].id] =v[item]["image"];
					itemWrap.append(tmplbox.tmpl(v[item]));
					idlist.push(v[item].id);
					addElementEvent($(".panel-collapse"+v[item].id));
					delete v[item]["image"+v[item].id];
				}
			})

		}

	}else{
		v={};
	}
		
	add.on("click",function(){
		
		$.ajax({
			url: $("#tmpl-url").data("url") + "build/FixedElement.html?v="+ThemeOptions.Version,
			async: true,
			success: function (data) {
				var tmplbox = $('<script type="text/x-jquery-tmpl">');
				tmplbox.html(data);

				if(idlist.length!==0){
				 var id=idlist.sort(sortNumber).reverse()[0] + 1;
				}else{
				 var id=1;
				}
				idlist.push(id);

				var item={"title":"Element "+itemWrap.children(".panel-heading").length+1,"id":id,"id2":randomNumber()};
					
					itemWrap.append(tmplbox.tmpl(item));

					itemWrap.children(".panel-heading").last().click();
					addElementEvent($(".panel-collapse"+id));
					v[id]=item;
			}
		})

	})
	itemWrap.on("change","input,select",function(){
			var parents = $(this).parents(".panel-collapse").eq(0);
			var id  = parents.data("id"), id2 = parents.data("id2");
				v[id] ={"id":id,"id2":id2};
				parents.find(".dnnElement").each(function(){ 
					
					if( $(this).val() && ($(this).parents(".conditional").length==0 || ($(this).parents(".conditional").length !=0 && $(this).parents(".conditional").css("display")!=="none"))){

						if($(this).attr("type")=="checkbox"){
							if ($(this).is(':checked')) {
								v[id][$(this).data("name")] = "checked";
							} else {
								delete v[id][$(this).data("name")];
							}
						}else if($(this).hasClass("escape")) {
							v[id][$(this).data("name")] = encodeURIComponent($(this).val());
						}else{
							v[id][$(this).data("name")] = $(this).val();
						}
					}
				})
			//	console.log(v)
	})

	itemWrap.on("click",".panel-heading",function(){
		$(this).next().slideToggle().siblings(".panel-collapse").slideUp();
		
	})
	itemWrap.on("click",".delete",function(){
		var heading =$(this).parent(".panel-heading");
		var collapse= heading.next(".panel-collapse");
		delete v[collapse.data("id")];
		collapse.remove();
		heading.remove();
	})

	$("#editorModal #savecontent").on("click",function(){
		e.val(JSON.stringify(v).replace(/"/g,"`"));
	})
}

function editorModal() {
	$('.layout-edit .layout-demo,.layout-edit .layout-mobile-demo').on("click", "[data-target=#editorModal]", function (e) {
		e.preventDefault();
		var btn = $(this),
			type = btn.data("codetype");

		var codebox = btn.parent().siblings(".view").children(".codetag");
		if (codebox.length == 0) {
			codebox = btn.parent().parent(".codetag");
		}
		var code = codebox.attr("code");
		var item = SourceAttr(code);

		$("#editorModal .modal-body").html("<div calss=\"setting-Loading\"></div>");
			var	ajaxurl =$("#tmpl-url").data("url") + type + ".html?v="+ThemeOptions.Version ;

		if(Skintemplate.indexOf(type) != -1){
			ajaxurl =SkinPath+"Resource/vendor/themeplugin/shortcode/tmpl/" + type + ".html?v="+ThemeOptions.Version ;
		}

		$.ajax({
			url: ajaxurl,
			async: true,
			success: function (data) {
				var tmplbox = $('<script type="text/x-jquery-tmpl">');
				//	data.replace("/ModulePath/g",$("#tmpl-ModulePath").data("url"));
					data =data.replace(/\{SkinPath\}/g,SkinPath);

					tmplbox.html(data);

					item["ThemeOptions"]= ThemeOptions;

					$("#editorModal .modal-body").html(tmplbox.tmpl(item));
					delete item.ThemeOptions;

					tmplbox.remove();
					$("#editorModal #savecontent").unbind("click");

				layoutSettingList();
				selectVal();
				$('.conditional').conditionize();
				$("#editorModal .dnnOptions.disabled").each(function(){
					if($(this).data("default")!=undefined){
						if($(this).attr("type")=="checkbox"){
							$(this).attr("checked","checked").change();
						}else{
							$(this).val($(this).data("default")).change();
							$(this).hasClass("colorpicker") && $(this).siblings("i").css("background-color",$(this).data("default"));
						}
					}
				})
				$('#editorModal .randomid').each(function () {
					if ($(this).val() == "") {
						$(this).val(randomNumber()).change();
					}
				})				
				$("#editorModal .modal-body .escape").each(function () {
					if ($(this).val()) {
						$(this).val(decodeURIComponent($(this).val()))
					}
				})


				$("#editorModal .modal-body .FixedElementInput").each(function(){
					FixedElementHTML($(this));
				})

				$('.colorpicker:not(".dropdown-menu")').colorpicker().on('changeColor', function (ev) {
					$(ev.currentTarget).siblings("i").css({
						"background-color": ev.color.toHex(),
						"opacity": ev.color.value.a
					});
				});
				$('.colorpicker:not(".dropdown-menu")').colorpicker().on('blur change', function (ev) {
					$(this).siblings("i").css({"background-color":$(this).val()});
				});
				if($(".SelectNodesMenuLevel").length && ThemeOptions.ServiceGetTabs){
					
					function SelectNodesMenuLevel(){

						$(".SelectNodesMenuLevel select").each(function(){
							var box =$(this);
							console.log($(this).data("value"))
							var val = $(this).data("value") &&  String($(this).data("value")).split(",");

							ServiceGetPanls.forEach(function(i){
								var option = $('<option value="'+i.TabID+'" '+ (val.includes(String(i.TabID))?"selected=\"selected\"":"") +'>'+i.TabName+'</option>');
								box.append(option)

								var upon = $('<label><input type="checkbox" '+ (val.includes(String(i.TabID))?"checked":"") +'>'+i.TabName+'</label>');
								box.before(upon);
								upon.find("input").on("change",function(){
									$(this).is(":checked")?option.attr("selected","selected"):option.removeAttr("selected");
								})
							})
						 })
					}


					if(!ServiceGetPanls){
						jQuery.ajax({
							type: "POST",
							url: ThemeOptions.ServiceGetTabs,
							dataType: "json",
							async:false,
							success: function(data){
							  
								 
								function convert(source){
									var tmp={},parent,n;
									 for(n in source){
										 var item=source[n];
										 if(item.TabID==item.ParentId){
											 parent=item.TabID;
										 }
										 if(!tmp[item.TabID]){
											 tmp[item.TabID]={};
										 }
										 tmp[item.TabID].TabName=item.TabName;
										 tmp[item.TabID].TabID=item.TabID;
										 tmp[item.TabID].ParentId=item.ParentId;
										 
										 if(!("children" in tmp[item.TabID]))tmp[item.TabID].children=[];
										 if(item.TabID!=item.ParentId){   
											 if(tmp[item.ParentId]){
												 tmp[item.ParentId].children.push(tmp[item.TabID]);
											 }
											 else{
												 tmp[item.ParentId]={children:[tmp[item.TabID]]};
											 }
										 }
									 }
									 return tmp[-1];
								 }
						 
								 ServiceGetPanls = convert(data)["children"];
							 
							 
								 
								 SelectNodesMenuLevel();


							  
							 }
						});

					}else{

						SelectNodesMenuLevel();

					}
						
				}


				if(btn.data("title")){
					$("#editorModal .modal-title").html(btn.data("title"));				
				}else{				
					if(type=="mobileheader"){	
						$("#editorModal .modal-title").html("Header Settings");		
					}else{
						$("#editorModal .modal-title").html(type.replace(/_/g, " ") + " Settings");		
					}
				}	

				$("#editorModal").validationEngine({
					promptPosition: "topLeft"
				});

				$("#editorModal .select-image-box").each(function (index, domEle) {
					$(domEle).find("input").bind('blur change keypress ', function () {
						$(domEle).find("img").attr("src", $(this).val());
						if ($(this).val() != "" && $(this).val().length > 0) {
							$(domEle).find(".btn-image-select").html("<i class=\"fa fa-folder-open-o\"></i> Change");
		
							$(domEle).find(".btn-image-remove").show();
						} else {
							$(domEle).find(".btn-image-select").html("<i class=\"fa fa-folder-open-o\"></i> Select Image");
							$(domEle).find(".btn-image-remove").hide();
						}
					});
		
					$(domEle).find(".btn-image-remove").click(function () {
						$(domEle).find("input").attr("data-urls","").val("").keypress().change();
					});
					$(domEle).find(".btn-image-select").click(function () {
		
						$("#SelectImage_Iframe").attr("src", $(this).attr("data-href"));
		
						$("body").one("click", "#SelectImage_Modal .btn-insert", function () { 
							$(domEle).find("input").val($(domEle).find("input").attr("data-urls")).keypress().change();
							$("#SelectImage_Modal").modal('hide');
						});
		
					});
				   
		
				});
		

			
				$("#editorModal #savecontent").click(function (e) {

					var tabdom = $("#editorModal .tab-pane:not(.active)");
					tabdom.show().css({
						"visibility": "hidden",
						"position": "absolute"
					});
					if($("#editorModal .modal-body").find(".dnnOptions.panename").length){
						
						codebox.addClass("curr");
					var panebox =$("#editorModal .modal-body").find(".dnnOptions.panename");
					var PaneName =[];
					$(".codetag.panebox:not(.curr)").each(function(){
						if($(this).data("name")){
							PaneName.push($(this).data("name"));
						}
					})
					if(panebox.val()){
						var nameindex =1;
						var paneboxval = panebox.val().replace(/[\-\,\!\|\~\`\(\)\#\$\%\^\&\*\{\}\:\;\"\<\>\?\s+]/g, '');
						panebox.val(paneboxval);
						function panenamechange(){
							if(isArrayDng(PaneName,panebox.val())){
								panebox.val(paneboxval+nameindex);
								nameindex++;
								panenamechange();
							}
						}
						panenamechange();
						var p =panebox.val().split("Pane");
							if(p[0]=="Header" || p[0]=="Footer" || p[0]=="" ){
								hasName.push(p[1]);
							}
					}

					}
					if (!$('#editorModal').validationEngine('validate')) {
						tabdom.removeAttr("style");

						var id = $("#editorModal .formError").eq(0).parents(".tab-pane").eq(0).attr("id");
						$("a[href=\"#" + id + "\"]").click();
						return false;
					} else {
						tabdom.removeAttr("style")
					}


					$("#editorModal .modal-body").find(".dnnOptions").each(function () {
						var t = $(this);
						if (t.hasClass("disabled")) {
							delete item[t.data("name")];
						} else { 
							if (t.attr("type") == "checkbox") {
								if (t.is(':checked')) {
									item[t.data("name")] = "checked";
								} else {
									delete item[t.data("name")];
								}
							}else if(t.attr("type") == "radio") {
								if (t.is(':checked')) {
									item[t.data("name")] = t.val();
								}
							} else {
								var val = t.val();
								if (val) {
									if (t.hasClass("escape")) {
										val = val?encodeURIComponent(val):"";
									}else if(t.hasClass("base64")){
										val = val?Base64.encode(val):"";
									}
									item[t.data("name")] = val;
								} else {
									delete item[t.data("name")];
								}
							}
						}

					})
					var news = "";
					for (var p in item) {
						news += p + "='" + item[p] + "' "
					}
					news = restoreSource(code, item);

					codebox.attr("code", news);

					if (type == "row" || type == "inner_row" || type == "headerrow" || type == "mobileheaderrow") {
						var replacebox = codebox.parents(".lyrow").eq(0);
						var layout;

						if (item.layout) {
							layout = item.layout.split("+");
						}
						if (type == "headerrow" || type == "mobileheaderrow") {
							layout = [4,4,4];
						}

						
						var getcode = getShortCode(replacebox, layout);

					 
						replacebox.after(ShortcodeBack.parse(getcode)).remove();

						$(".layout-demo .col-content").sortable({
							opacity: .35,
							connectWith: ".col-content",
							start: function (e, t) {
								if (!startdrag) stopsave++;
								startdrag = 1;
							},
							stop: function (e, t) {
								if (stopsave > 0) stopsave--;
								startdrag = 0;
							}
						});
						columndrag();

					} else if (type == "column" || type == "headercolumn") {
						var getcode = getShortCode(codebox);
						var parent = codebox.parent(".codetag");
						codebox.after(ShortcodeBack.parse(getcode)).remove();
						$(".layout-demo .col-content").sortable({
							opacity: .35,
							connectWith: ".col-content",
							start: function (e, t) {
								if (!startdrag) stopsave++;
								startdrag = 1;
							},
							stop: function (e, t) {
								if (stopsave > 0) stopsave--;
								startdrag = 0;
							}
						});

						if (parent.attr("code") && !parent.hasClass("header-row")) {
							var c = "";
							parent.children(".column").each(function () {
								c += $(this).attr("col") + "+";
							})
							c = c.substring(0, c.length - 1);
							var reg = /layout=\'(.+?)\'/;
							var data = parent.attr("code").replace(reg, "layout='" + c + "'");
							parent.attr("code", data);
							
							
						}
					} else if (type == "header" || type == "mobileheader") {

					} else {
						codebox.parents(".box.box-element").eq(0).after(ShortcodeBack.parse(codebox.attr("code"))).remove();
					}

					overlaypanelnumber = 0;
					mobileheaderrowheight=0;

				});

				$("#editorModal .dynamic-list").each(function () {
					var box = $(this);
					var item = box.find(".item").eq(0)[0].outerHTML.replace(/\$\$\$\$/g, '}').replace(/\$\$\$/g, '${');



					box.find(".item").eq(0).remove();

					box.find(".dynamic-add").on("click", function () {
						var h = jQuery.tmpl(item, {});
						box.find(".dynamic-footer").before(h);

						h.find("select").each(function () {
							console.log($(this).data("value"))
							$(this)[0].value = $(this).data("value");
						})

					})

					function getData() {
						var j = [];
						box.children(".item").each(function () {
							var i = {};
							$(this).find(".form-control").each(function () {
								i[$(this).attr("name")] = $(this).val();
							})
							j.push(i);
						})
						box.find(".dnnOptions").val(encodeURIComponent(JSON.stringify(j)))
					}

					box.on("change", "select,input", function () {
						getData();
					})
					box.on("click", ".remove", function () {
						$(this).parent().remove();
						getData();
					})


					if (box.find(".dnnOptions").val()) {
						var d = JSON.parse(decodeURIComponent(box.find(".dnnOptions").val()));

						d.forEach(function (i) {

							var h = jQuery.tmpl(item, i);
							box.find(".dynamic-footer").before(h);

							h.find("select").each(function () {
								$(this)[0].value = $(this).data("value");
							})



						})

					}
				})



			}
		});




	});
}

$(document).ready(function () {
	if ($(".layout-edit").length) {

		if(ThemeOptions.LayoutName == "Content"){
			$(".nav-list").eq(0).append(`<div class="lyrow ui-draggable" data-code="[row layout='11/12+1/12'][column col='11/12'] [/column][column col='1/12'] [/column][/row]"><div class="preview"><i class=" fa fa-th-large"></i> 11/12+1/12 </div><span class="drag label ui-draggable-handle"></span></div>`)
		}
		if (ThemeOptions.LayoutName == "Header") {
			$("#token .nav-list").append(`<div class="box box-element ui-draggable code-translation" data-code="[translation style='popup' position='righttop' popupx='30' popupy='150' /]"> <span class="drag label ui-draggable-handle"></span><div class="preview"><i class="fa fa-language"></i>Google Translate</div></div>`)
		}

		$("#tmpl-font-list").each(function(){
			 var list=$(this),font =list.html();
				 font = JSON.parse(font);
			 if(font){
				list.empty();
				var html ='';
				for(var i in font){
					list.append(`&lt;option value="${i}"&gt;${font[i]}&lt;/option&gt;`)
				}
			 }
		})


		$(".ajax-tmpl").each(function () {
			var box = $(this);
			$.ajax({
				url: $("#tmpl-url").data("url") +"build/"+ box.data("name") + ".html?v="+ThemeOptions.Version,
				async: true,
				success: function (data) {
					box.html(data);
				}
			});
		})


		if(ThemeOptions.BootstrapVersion =="v4"){
			$(".nav-list .ui-draggable").each(function(){
				if($(this).data("code-v4")){
					$(this).attr("data-code",$(this).data("code-v4"));
					$(this).removeAttr("data-code-v4");
				}
			})
		}
		var json = $.parseJSON($(".layout-json").html());

		var html = json.LabelData;

		$("#TemplateProjectName").val(json.Alias)

		if (html) {
			html = ShortcodeBack.parse(html);
		} else {
			if ($(".layout-edit").data("type") == "Header") {
				
				html = "[header sticky='checked' stickytype='sticky' position='floating' ] [headerrow layout='boxed' name='Header Top' areaname='header-top' space='8' space2='25' line='off' bottomline='off' height='42' bgcolor='#f4f4f4' color='#424242' bgposition='center center' ] [headercolumn col='4' name='Left' areaname='area-left' ] [/headercolumn] [headercolumn col='4' name='Middle' areaname='area-center' ] [/headercolumn] [headercolumn col='4' name='Right' areaname='area-right' ] [/headercolumn] [/headerrow] [headerrow layout='boxed' active='active' name='Header Middle' areaname='header-center' height='100' space='8' space2='20' line='off' bottomline='off' bgcolor='rgba(255,255,255,0)' hidesticky='checked' styheight='70' styshadow='checked' color='#ffffff' stybgcolor='#ffffff' modulepath='/DesktopModules/DNNGo_ThemePluginPro/' stycolor='dark' ] [headercolumn col='4' name='Left' areaname='area-left' width='155px' dir='vertical' ] [logo /][/headercolumn] [headercolumn col='4' name='Middle' areaname='area-center' dir='vertical' align='right' ] [megamenu menu_hover_style='hoverstyle_1' color='#ffffff' fontsize='18px' st='10' sr='22' sb='10' sl='22' menubw='2' fmcolor='#666666' fmfontsize='13px' fmlineheight='39px' fmshadow='checked' mmcolor='#666666' mmfontsize='13px' mmlineheight='35px' mmtcolor='#424242' mmtfontsize='15px' mmtlineheight='35px' mmshadow='checked' mmlinecolor='#dcdcdc' fmbgcolor='#ffffff' mmbgcolor='#ffffff' weight='600' mmtweight='600' /][/headercolumn] [headercolumn col='4' name='Right' areaname='area-right' dir='horizontal' width='70px' ] [line /][search style='popup' placeholder='Enter any key words to search' color='dark' /][/headercolumn] [/headerrow] [headerrow layout='boxed' name='Header Bottom' areaname='header-bottom' space='8' space2='15' line='off' bottomline='off' height='42' bgcolor='#f4f4f4' color='#424242' ] [headercolumn col='4' name='Left' areaname='area-left' ] [/headercolumn] [headercolumn col='4' name='Middle' areaname='area-center' ] [/headercolumn] [headercolumn col='4' name='Right' areaname='area-right' ] [/headercolumn] [/headerrow] [/header][mobileheader sticky='checked' ] [mobileheaderrow layout='4+4+4' name='Mobile Header Top' areaname='header-mobile-top' line='off' bottomline='off' bgcolor='#1abc9c' color='#ffffff' hidesticky='checked' stybgcolor='#7a2727' height='36' ] [headercolumn col='4' name='Left' areaname='area-left' dir='horizontal' align='left'] [/headercolumn] [headercolumn col='4' name='Middle' areaname='area-center' dir='horizontal' ] [/headercolumn] [headercolumn col='4' name='Right' areaname='area-right' dir='horizontal' align='right' ] [/headercolumn] [/mobileheaderrow] [mobileheaderrow active='active' layout='4+4+4' name='Mobile Header' areaname='header-mobile' line='off' bottomline='off' bgcolor='#ffffff' shadow='checked' color='#272727' hidesticky='checked' stybgcolor='#7a2727' height='66'] [headercolumn col='4' name='Left' areaname='area-left' dir='horizontal' align='left' ] [search style='popup' placeholder='Enter any key words to search' color='dark' /][/headercolumn] [headercolumn col='4' name='Middle' areaname='area-center' dir='horizontal' ] [logo /][/headercolumn] [headercolumn col='4' name='Right' areaname='area-right' dir='horizontal' align='right' ] [mobilemenu color='#ffffff' fontsize='18px' bgcolor='#2c5cda' lv1color='#272727' lv1fontsize='20px' ticolor='#ffffff' tifontsize='18px' linecolor='rgba(255,255,255,0.2)' navbartitle='Menu' tiweight='600' lv1weight='600' accentcolor='#ffffff' weight='400' current='#901dd6' currentcolor='#f8f363' lv2color='#272727' lv2weight='600' lv2fontsize='20px' lv3color='#484848' lv3weight='600' lv3fontsize='18px' lv4color='#787878' lv4weight='600' lv4fontsize='16px' lv5color='#787878' lv5weight='600' lv5fontsize='16px' /][/headercolumn] [/mobileheaderrow] [mobileheaderrow layout='4+4+4' name='Mobile Header Bottom' areaname='header-mobile-bottom' line='off' bottomline='off' bgcolor='#1abc9c' color='#ffffff' hidesticky='checked' stybgcolor='#7a2727' height='36' ] [headercolumn col='4' name='Left' areaname='area-left' dir='horizontal' align='left' ] [/headercolumn] [headercolumn col='4' name='Middle' areaname='area-center' dir='horizontal'] [/headercolumn] [headercolumn col='4' name='Right' areaname='area-right' dir='horizontal' align='right'] [/headercolumn] [/mobileheaderrow] [/mobileheader]";
			
			}else if ($(".layout-edit").data("type") == "Content") {
				html = "[row layout='1/1' fullwidth='stretch_row_content_no_spaces' gap='0' ] [column col='1/1' ] [pane name='FullScreenPaneA' mbottom='40' /][/column] [/row] [row layout='1/1' ] [column col='1/1' ] [pane name='TopPane' mbottom='40' /][/column] [/row] [row layout='1/1' fullwidth='stretch_row_content_no_spaces' gap='0' ] [column col='1/1' ] [pane name='FullScreenPaneB' mbottom='40' /][/column] [/row] [row layout='3/12+9/12' gap='0' ] [column col='3/12' ] [pane name='RowOneGrid3Pane' mbottom='40' /][/column][column col='9/12' ] [pane name='RowOneGrid9Pane' mbottom='40' /][/column] [/row] [row layout='4/12+8/12' ] [column col='4/12' ] [pane name='RowTwoGrid4Pane' mbottom='40' /][/column][column col='8/12' ] [pane name='RowTwoGrid8Pane' mbottom='40' /][/column] [/row] [row layout='5/12+7/12' ] [column col='5/12' ] [pane name='RowThreeGrid5Pane' mbottom='40' /][/column][column col='7/12' ] [pane name='RowThreeGrid7Pane' mbottom='40' /][/column] [/row] [row layout='6/12+6/12' ] [column col='6/12' ] [pane name='RowFourGrid6Pane1' mbottom='40' /][/column][column col='6/12' ] [pane name='RowFourGrid6Pane2' mbottom='40' /][/column] [/row] [row layout='7/12+5/12' ] [column col='7/12' ] [pane name='RowFiveGrid7Pane' mbottom='40' /][/column][column col='5/12' ] [pane name='RowFiveGrid5Pane' mbottom='40' /][/column] [/row] [row layout='8/12+4/12' ] [column col='8/12' ] [pane name='RowSixGrid8Pane' mbottom='40' /][/column][column col='4/12' ] [pane name='RowSixGrid4Pane' mbottom='40' /][/column] [/row] [row layout='9/12+3/12' ] [column col='9/12' ] [pane name='RowSevenGrid9Pane' mbottom='40' /][/column][column col='3/12' ] [pane name='RowSevenGrid3Pane' mbottom='40' /][/column] [/row] [row layout='1/1' fullwidth='stretch_row_content_no_spaces' gap='0' ] [column col='1/1' ] [pane name='FullScreenPaneC' mbottom='40' /][/column] [/row][row layout='12/12' fullwidth='stretch_row_content_no_spaces' gap='0' ] [column col='12/12' ][pane name='ContentBuilderPane' /][/column] [/row] [row layout='4/12+4/12+4/12' ] [column col='4/12' ] [pane name='RowEightGrid4Pane1' mbottom='40' /][/column][column col='4/12' ] [pane name='RowEightGrid4Pane2' mbottom='40' /][/column][column col='4/12' ] [pane name='RowEightGrid4Pane3' mbottom='40' /][/column] [/row] [row layout='3/12+6/12+3/12' ] [column col='3/12' ] [pane name='RowNineGrid3Pane1' mbottom='40' /][/column][column col='6/12' ] [pane name='RowNineGrid6Pane' mbottom='40' /][/column][column col='3/12' ] [pane name='RowNineGrid3Pane2' mbottom='40' /][/column] [/row] [row layout='3/12+3/12+3/12+3/12' ] [column col='3/12' ] [pane name='RownTenGrid3Pane1' mbottom='40' /][/column][column col='3/12' ] [pane name='RownTenGrid3Pane2' mbottom='40' /][/column][column col='3/12' ] [pane name='RownTenGrid3Pane3' mbottom='40' /][/column][column col='3/12' ] [pane name='RownTenGrid3Pane4' mbottom='40' /][/column] [/row] [row layout='1/1' fullwidth='stretch_row_content_no_spaces' gap='0' ] [column col='1/1' ] [pane name='FullScreenPaneD' /][/column] [/row]";
			}else if ($(".layout-edit").data("type") == "Footer") {
				html = "[row layout='1/1' fullwidth='stretch_row_content_no_spaces' gap='0' fixedelement='{}' bgstyle='single' paxcolor='#1e1e1e' ] [column col='1/1' ] [pane name='FooterPaneFull' /][/column] [/row] [row layout='3/12+3/12+3/12+3/12' gap='0' bgstyle='single' paxcolor='rgba(30,30,30,1)' fullwidth='stretch_row' color='rgba(255,255,255,1)' ] [column col='3/12' ] [pane name='FooterPaneA' css_mb='mb-50' css_mt='mt-50' /][/column][column col='3/12' ] [pane name='FooterPaneB' css_mb='mb-50' css_mt='mt-50' /][/column][column col='3/12' ] [pane name='FooterPaneC' css_mb='mb-50' css_mt='mt-50' /][/column][column col='3/12' ] [pane name='FooterPaneD' css_mb='mb-50' css_mt='mt-50' /][/column] [/row] [row layout='8/12+4/12' gap='0' fullwidth='stretch_row' bgstyle='single' paxcolor='rgba(18,18,18,1)' ptop='25' pbottom='25' color='rgba(170,170,170,1)' ] [column col='8/12' ] [copyright copyright='checked' privacy='checked' terms='checked' itemspacing='5' privacylink='Default' termslink='Default' color='rgba(170,170,170,1)' /][/column] [column col='4/12' css_text_align='text-right' ] [pane name='FooterPaneE' /][/column] [/row]";
			}

			html = ShortcodeBack.parse(html);
		}

		$(".layout-demo").html(html);

		
		if ($(".layout-edit").data("type") == "Header") {


			$(".layout-demo").append('<div class="control-box"><button type="button" class="editor" data-target="#editorModal" role="button" data-codetype="header" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button></div>');
			$(".layout-mobile-demo").append('<div class="control-box"><button type="button" class="editor" data-target="#editorModal" role="button" data-codetype="mobileheader" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button></div>');




		}





		$(".codetag.panebox").each(function () {
			if ($(this).data("name") && typeof $(this).data("name") != 'number') {
				var panenamearr =$(this).data("name").split("Pane");
				if(panenamearr[0]=="Header" || panenamearr[0]=="Footer" || panenamearr[0]=="" ) hasName.push(panenamearr[1]);
			}
		})

		function IsInArray(arr, val) {
			var testStr = ',' + arr.join(",") + ",";
			return testStr.indexOf("," + val + ",") != -1;
		}

		function getPaneName() {
			for (var i = 0; i < 126; i++) {
				var coding = i < 26 ? String.fromCharCode((65 + i)) : String.fromCharCode((65 + parseInt(i / 26) - 1)) + String.fromCharCode((65 + (i % 26)));
 				if (hasName.indexOf(coding) == '-1') {
					hasName.push(coding);
					if ($(".layout-edit").data("type") == "Header") {
						return "HeaderPane" + coding;
					} else if ($(".layout-edit").data("type") == "Footer") {
						return "FooterPane" + coding;
					} else {
						return "Pane" + coding;
					}
				}
			}
		}

		$("body").css("min-height", $(window).height() - 90);
		$(".layout-demo").css("min-height", $(window).height() - 160);



		
		if ($(".layout-edit").data("type") == "Header") {

		//	console.log($(".mobile-mode-lyrow").html())
			if($(".mobile-mode-lyrow").length && $(".mobile-mode-lyrow").length == 1){
				$(".mobile-mode-lyrow").before(`<div class="lyrow mobile-mode-lyrow ui-draggable" style="display: block;"> 
				<div class="control-box"><span class="bg" style="background-color:#1abc9c;"></span><span class="eye-el" title="Active"><i class="fa fa-eye-slash"></i></span> <button type="button" class="editor" data-title="Mobile Header Settings" data-target="#editorModal" role="button" data-codetype="mobileheaderrow" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button></div>
				<div class="view">
					<div class="row-fluid clearfix codetag header-row ui-sortable" code="[mobileheaderrow layout='4+4+4' name='Mobile Header Top' areaname='header-mobile-top' line='off' bottomline='off' bgcolor='#1abc9c' color='#ffffff' hidesticky='checked' stybgcolor='#7a2727' height='36' id='229653' ] [/mobileheaderrow]"><span class="name preview">Mobile Header</span>
						<div class="col-sm-4 column ui-sortable codetag header-column" col="4" code="[headercolumn col='4' name='Left' areaname='area-left' dir='horizontal' align='left' id='431895' ] [/headercolumn]"> 
				<span class="name preview">Left</span>
					<div class="control-box"><span class="bg" style=""></span><button type="button" class="editor" data-title="header Column Settings" data-target="#editorModal" role="button" data-codetype="headercolumn" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button></div>
					<div class="col-content ui-sortable">
					
					</div>
				</div> <div class="col-sm-4 column ui-sortable codetag header-column" col="4" code="[headercolumn col='4' name='Middle' areaname='area-center' dir='horizontal' id='725667' ] [/headercolumn]"> 
				<span class="name preview">Middle</span>
					<div class="control-box"><span class="bg" style=""></span><button type="button" class="editor" data-title="header Column Settings" data-target="#editorModal" role="button" data-codetype="headercolumn" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button></div>
					<div class="col-content ui-sortable">
					
					</div>
				</div> <div class="col-sm-4 column ui-sortable codetag header-column" col="4" code="[headercolumn col='4' name='Right' areaname='area-right' dir='horizontal' align='right' id='798627' ] [/headercolumn]"> 
				<span class="name preview">Right</span>
					<div class="control-box"><span class="bg" style=""></span><button type="button" class="editor" data-title="header Column Settings" data-target="#editorModal" role="button" data-codetype="headercolumn" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button></div>
					<div class="col-content ui-sortable">
					
					</div>
				</div> 
					</div>
				</div>
			</div>`).after(`<div class="lyrow mobile-mode-lyrow ui-draggable" style="display: block;"> 
				<div class="control-box"><span class="bg" style="background-color:#1abc9c;"></span><span class="eye-el" title="Active"><i class="fa fa-eye-slash"></i></span> <button type="button" class="editor" data-title="Mobile Header Settings" data-target="#editorModal" role="button" data-codetype="mobileheaderrow" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button></div>
				<div class="view">
					<div class="row-fluid clearfix codetag header-row ui-sortable" code="[mobileheaderrow layout='4+4+4' name='Mobile Header Bottom' areaname='header-mobile-bottom' line='off' bottomline='off' bgcolor='#1abc9c' color='#ffffff' hidesticky='checked' stybgcolor='#7a2727' height='36' id='212166' ] [/mobileheaderrow]"><span class="name preview">Mobile Header</span>
						<div class="col-sm-4 column ui-sortable codetag header-column" col="4" code="[headercolumn col='4' name='Left' areaname='area-left' dir='horizontal' align='left' id='854369' ] [/headercolumn]"> 
				<span class="name preview">Left</span>
					<div class="control-box"><span class="bg" style=""></span><button type="button" class="editor" data-title="header Column Settings" data-target="#editorModal" role="button" data-codetype="headercolumn" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button></div>
					<div class="col-content ui-sortable">
					
					</div>
				</div> <div class="col-sm-4 column ui-sortable codetag header-column" col="4" code="[headercolumn col='4' name='Middle' areaname='area-center' dir='horizontal' id='946832' ] [/headercolumn]"> 
				<span class="name preview">Middle</span>
					<div class="control-box"><span class="bg" style=""></span><button type="button" class="editor" data-title="header Column Settings" data-target="#editorModal" role="button" data-codetype="headercolumn" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button></div>
					<div class="col-content ui-sortable">
					
					</div>
				</div> <div class="col-sm-4 column ui-sortable codetag header-column" col="4" code="[headercolumn col='4' name='Right' areaname='area-right' dir='horizontal' align='right' id='769703' ] [/headercolumn]"> 
				<span class="name preview">Right</span>
					<div class="control-box"><span class="bg" style=""></span><button type="button" class="editor" data-title="header Column Settings" data-target="#editorModal" role="button" data-codetype="headercolumn" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></button></div>
					<div class="col-content ui-sortable">
					
					</div>
				</div> 
					</div>
				</div>
			</div>`);
			}
		}


		$(".sidebar-nav .lyrow").draggable({
			connectToSortable: ".layout-demo,.column .col-content",
			helper: "clone",
			handle: ".drag",
			start: function (e, t) {
				if (!startdrag) stopsave++;
				startdrag = 1;
				$(this).addClass("new-draggable-box");
			},
			drag: function (e, t) {
				t.helper.addClass("new-draggable-box");
			},
			stop: function (e, t) {
				$(this).removeClass("new-draggable-box");
				if (stopsave === 0) {
					var code = $(this).data("code");
					if (code.indexOf("[row") > -1 && $(".layout-demo .new-draggable-box").parents(".column.codetag").length) {
						code = code.replace(/row/g, "inner_row");
					}
					var addHtml = $(ShortcodeBack.parse(code));
					$(".layout-demo .new-draggable-box,.layout-mobile-demo .new-draggable-box").after(addHtml).remove();
					$(".layout-demo .column .col-content").sortable({
						opacity: .35,
						connectWith: ".col-content",
						handle: ".drag",
						start: function (e, t) {
							if (!startdrag) stopsave++;
							startdrag = 1;
						},
						stop: function (e, t) {
							if (stopsave > 0) stopsave--;
							startdrag = 0;
						}
					});
					columndrag();
					
				}
				if (stopsave > 0) stopsave--;
				startdrag = 0;
			}
		});
		$(".sidebar-nav .box").draggable({
			connectToSortable: ".col-content",
			helper: "clone",
			handle: ".drag",
			start: function (e, t) {
				if (!startdrag) stopsave++;
				startdrag = 1;
				$(this).addClass("new-draggable-box");
			//	t.helper.addClass("new-draggable-box");
			},
			drag: function (e, t) {
				t.helper.addClass("new-draggable-box");
			},
			stop: function (e, t) {
				$(this).removeClass("new-draggable-box");
				if (stopsave === 0) {
					var code = $(this).data("code");
					if (code.indexOf("[pane") == 0) {
						code = "[pane name='" + getPaneName() + "' /]";
					}
					var addHtml = $(ShortcodeBack.parse(code));
					$(".layout-demo .new-draggable-box,.layout-mobile-demo .new-draggable-box").after(addHtml).remove();
				}
				if (stopsave > 0) stopsave--;
				startdrag = 0;
			}
		});
		
		initContainer();

		if ($(".layout-mobile-demo").length) {
			$(".layout-mobile-demo").append($(".mobile-mode-lyrow"));
		}






		$(".sidebar-nav").each(function () {

			var e = $(this);
			e.parent().css("padding-top", e.height());

			if (e.parent().offset().top < $(window).scrollTop()) {
				e.css("top", $(window).scrollTop() - e.parent().offset().top);
			}
			$(window).on("load",function(){
				e.parent().css("padding-top", e.height());
			})
			$(window).scroll(function () {
				if (e.parent().offset().top < $(window).scrollTop()) {
					e.css("top", $(window).scrollTop() - e.parent().offset().top);
				} else {
					e.css("top", 0);
				}
			})
		})
		editorModal();

		$(".layout-demo,.layout-mobile-demo").on("click",".eye-el", function () {
			var codetag = $(this).parent().siblings(".view").children(".codetag");
			if ($(this).hasClass("active")) {
				$(this).removeClass("active").find(".fa").addClass("fa-eye-slash").removeClass("fa-eye active");
				codetag.attr("code", codetag.attr("code").replace(" active='active'", ""))
			} else {
				$(this).addClass("active").find(".fa").addClass("fa-eye").removeClass("fa-eye-slash");
				codetag.attr("code", codetag.attr("code").replace("[headerrow", "[headerrow active='active'").replace("[mobileheaderrow", "[mobileheaderrow active='active'"))
			}

		})

		$("#saveloadModal").click(function (e) {
			e.preventDefault();

			if (!$('#PlaceHolder_container').validationEngine('validate')) {
				return false;
			}
			$(".layout-edit").addClass("loading");
			downloadLayoutSrc();
			overlaypanelnumber=0;
			mobileheaderrowheight=0;
		});

		$(".responsive-control li").click(function (e) {
			e.preventDefault();
			$(this).addClass("active").siblings().removeClass("active");
			if ($(this).data("type") == "mobile") {
				$(".layout-edit").addClass("mobile-mode");
			} else {
				$(".layout-edit").removeClass("mobile-mode");
			}
		});

		$("#clear").click(function (e) {
			e.preventDefault();
			clearDemo()
		});
		if( ThemeOptions.BootstrapVersion == "v4"){
			$(".box-headersidenav").removeClass("hide");
		}
		


		removeElm();
	}
});



// Replace the default value
$(document).ready(function () {

	$("#token .nav-list > .box").each(function(){
		var code = $(this).attr("data-code").split(" ")[0].replace("[","");
		$(this).addClass("code-"+code);
	})
	$(".code-overlaypanel").removeClass("hide-v4");
	
	$(".code-mobilemenu").attr("data-code",`[mobilemenu color='#ffffff' fontsize='18px' bgcolor='#2c5cda' lv1color='#272727' lv1fontsize='20px' ticolor='#ffffff' tifontsize='18px' linecolor='rgba(255,255,255,0.2)' navbartitle='Menu' tiweight='600' lv1weight='600' accentcolor='#ffffff' weight='400' current='#901dd6' currentcolor='#f8f363' lv2color='#272727' lv2weight='600' lv2fontsize='20px' lv3color='#484848' lv3weight='600' lv3fontsize='18px' lv4color='#787878' lv4weight='600' lv4fontsize='16px' lv5color='#787878' lv5weight='600' lv5fontsize='16px' /]`)
	$(".code-search").attr("data-code",`[search style='popup' placeholder='Enter any key words to search' color='dark' /]`)
	$(".code-popupsearch").addClass("hide");

	$(".code-menu3dpopup").removeClass("hide").attr("data-code",`[menu3dpopup id='390055' bgcolor='#e7fffa' content='PGRpdiBjbGFzcz0iaG9tZXBhZ2UwOC1oZWFkZXItdGV4dCI+CjxwPjxiPkVtYWlsOjwvYj4gc2VydmljZS5zaW1wbGVAZ21haWwuY29tPC9wPgo8cD48Yj5Db250YWN0OjwvYj4gKDg0NSkgMzU5LTc3Nzc8L3A+CjwvZGl2Pg==' source='dnn' /]`);

	$(".code-headersidenav").addClass("hide");
	//$(".code-popupmenu").addClass("hide");

	$(".code-popupmenu2").removeClass("hide").attr("data-code",`[popupmenu2 id='900274' acccolor='#ffffff' subbg='#ffffff' content='PGg1PlBob25lPC9oNT4KPHAgY2xhc3M9Im1iLTMwIj4oODQ1KSAzNTktNzc3NzwvcD4KCjxoNT5FbWFpbDwvaDU+CjxwIGNsYXNzPSJtYi0yNSI+c2VydmljZS5zaW1wbGVAZ21haWwuY29tPC9wPgoKPHA+CgkKCTxhIGhyZWY9IiMiIGNsYXNzPSJtci0xMCI+Cgo8c3ZnPjx1c2UgeGxpbms6aHJlZj0iL1BvcnRhbHMvX2RlZmF1bHQvQ29udGVudEJ1aWxkZXIvbWluaXMtcGFnZS9zb2NpYWwtaWNvbi90d2l0dGVyLnN2ZyN0d2l0dGVyIj48L3VzZT48L3N2Zz4KIAo8L2E+IAoJPGEgaHJlZj0iIyIgY2xhc3M9Im1yLTEwIj4KCjxzdmc+PHVzZSB4bGluazpocmVmPSIvUG9ydGFscy9fZGVmYXVsdC9Db250ZW50QnVpbGRlci9taW5pcy1wYWdlL3NvY2lhbC1pY29uL2ZhY2Vib29rLnN2ZyNmYWNlYm9vayI+PC91c2U+PC9zdmc+CiAKPC9hPiAKCTxhIGhyZWY9IiMiIGNsYXNzPSJtci0xMCI+Cgo8c3ZnPjx1c2UgeGxpbms6aHJlZj0iL1BvcnRhbHMvX2RlZmF1bHQvQ29udGVudEJ1aWxkZXIvbWluaXMtcGFnZS9zb2NpYWwtaWNvbi9waW50ZXJlc3Quc3ZnI3BpbnRlcmVzdCI+PC91c2U+PC9zdmc+CiAKPC9hPiAKPC9wPg==' /]`);

	$("body").append("<style>.mobile-mode .eye-el{display:inline-block!important;}.layout-mobile-demo .header-row{opacity: 0.4;}.layout-mobile-demo .header-row[code*=\"active='active'\"]{opacity: 1;}</style>")


})