<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Layout_Edit.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_Layout_Edit" %>
<script>
  var ThemeOptions = {
      AccentColour:"<%= TemplateXF.ViewGlobalSetting("AccentColour","#20a3f0") %>",
      AccentColour2:"<%= TemplateXF.ViewGlobalSetting("AccentColour2","#fd4ea5") %>",
      AccentColour3:"<%= TemplateXF.ViewGlobalSetting("AccentColour3","#f8f363") %>",
      AccentColour4:"<%= TemplateXF.ViewGlobalSetting("AccentColour4","#22d3a7") %>",
      LayoutName:"<%=LayoutName %>",
      Version: "<%=CrmVersion %>",
      ServiceGetTabs: "<%=ServiceUrl("ServiceGetTabs") %>",
      BootstrapVersion:"<%= TemplateXF.ViewGlobalSetting("bootstrapversion","v3") %>",
  }
</script>

<div class="hide layout-json" data-update="<%=UpdateServiceUrl %>"><%=LayoutDataJSON %></div>
      <!-- start: PAGE HEADER -->
      <div class="row">
        <div class="col-sm-12"> 
          <!-- start: PAGE TITLE & BREADCRUMB -->
           
          <div class="page-header">
            <h1><i class="clip-puzzle-3"></i> <%=ViewResourceText("Header_Title", "Add Layout by")%> <%=LayoutName %> 
                <%--<asp:HyperLink ID="hlReturnLayouts" runat="server" CssClass="btn btn-xs btn-default"  Text="<i class='fa fa-Layout'></i> Return Layouts " resourcekey="hlReturnLayouts" ></asp:HyperLink>--%>
            </h1>
          </div>
          <!-- end: PAGE TITLE & BREADCRUMB --> 
        </div>
      </div>
      <!-- end: PAGE HEADER --> 
 
<div class="fixedmessage"></div>
<div class="layout-edit" data-type="<%=LayoutName %>">
  <div class="container-fluid editor-layout-containers">
    <div class="row-fluid">
      <div class="sidebar-nav">
        <div>
     
          <ul id="menu-layoutit">
            <li>
            Name: <input type="text" value="" placeholder="" id="TemplateProjectName" class="validate[required]">
            </li><!-- <li>
            Group: <select class="form-control">
                        <option value="homepage">HomePage</option>
                        <option value="about-us">About Us</option>
                    </select>
 </li>--><li>
            <button type="button" class="btn btn-primary  btn-sm input[lang='Submit']" id="saveloadModal"  lang='Submit'><i class="glyphicon glyphicon-saved"></i> Save</button>
           </li>
          </ul>
          <!-- Nav tabs -->
          <ul class="nav nav-tabs" role="tablist">
            <% if(LayoutName != "Header"){ %>
            <li role="presentation" class="active"><a href="#layout" aria-controls="layout" role="tab" data-toggle="tab">Layout</a></li>
            <% } %>
            <li role="presentation"><a href="#pane" aria-controls="pane" role="tab" data-toggle="tab">Pane</a></li>
            <% if(LayoutName == "Header"){ %>
            <li role="presentation" class="active"><a href="#token" aria-controls="pane" role="tab" data-toggle="tab">Controls</a></li>
            <% } %>
            <% if(LayoutName == "Footer"){ %>
             <li role="presentation"><a href="#controls" aria-controls="pane" role="tab" data-toggle="tab">Controls</a></li>
            <% } %>
          </ul>
          <!-- Tab panes -->
          <div class="tab-content">
            <% if(LayoutName != "Header"){ %>
            <div role="tabpanel" class="tab-pane active" id="layout">
              <div class="nav-list">
                <div class="lyrow ui-draggable " data-code="[row layout='1/1'][column col='1/1'] [/column][/row]">
                  <div class="preview"><i class="fa fa-th-large"></i> 1/1 </div>
                  <span class="drag label">
                </div>
                <div class="lyrow ui-draggable" data-code="[row layout='3/12+9/12'][column col='3/12'] [/column][column col='9/12'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 3/12+9/12 </div>
                  <span class="drag label"></span>
                </div>
                <div class="lyrow ui-draggable" data-code="[row layout='4/12+8/12'][column col='4/12'] [/column][column col='8/12'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 4/12+8/12 </div>
                  <span class="drag label"></span>
                </div>
                <div class="lyrow ui-draggable" data-code="[row layout='5/12+7/12'][column col='5/12'] [/column][column col='7/12'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 5/12+7/12 </div>
                  <span class="drag label"></span>
                </div>
                <div class="lyrow ui-draggable" data-code="[row layout='6/12+6/12'][column col='6/12'] [/column][column col='6/12'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 6/12+6/12 </div>
                  <span class="drag label"></span>
                </div>
                <div class="lyrow ui-draggable" data-code="[row layout='4/12+4/12+4/12'][column col='4/12'] [/column][column col='4/12'] [/column][column col='4/12'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 1/3+1/3+1/3</div>
                  <span class="drag label"></span>
                </div>
                <div class="lyrow ui-draggable" data-code="[row layout='3/12+3/12+3/12+3/12'][column col='3/12'] [/column][column col='3/12'] [/column][column col='3/12'] [/column][column col='3/12'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 1/4+1/4+1/4+1/4 </div>
                  <span class="drag label"></span>
                </div>
                <div class="lyrow ui-draggable" data-code="[row layout='1/5+1/5+1/5+1/5+1/5'][column col='1/5'] [/column][column col='1/5'] [/column][column col='1/5'] [/column][column col='1/5'] [/column][column col='1/5'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 1/5+1/5+1/5+1/5+1/5 </div>
                  <span class="drag label"></span>
                </div>

                <div class="lyrow ui-draggable" data-code="[row layout='3/12+6/12+3/12'][column col='3/12'] [/column][column col='6/12'] [/column][column col='3/12'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 3/12+6/12+3/12 </div>
                  <span class="drag label"></span>
                </div>
                <div class="lyrow ui-draggable" data-code="[row layout='9/12+3/12'][column col='9/12'] [/column][column col='3/12'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 9/12+3/12 </div>
                  <span class="drag label"></span>
                </div>
                <div class="lyrow ui-draggable" data-code="[row layout='8/12+4/12'][column col='8/12'] [/column][column col='4/12'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 8/12+4/12 </div>
                  <span class="drag label"></span>
                </div>
                <div class="lyrow ui-draggable" data-code="[row layout='7/12+5/12'][column col='7/12'] [/column][column col='5/12'] [/column][/row]">
                  <div class="preview"><i class=" fa fa-th-large"></i> 7/12+5/12 </div>
                  <span class="drag label"></span>
                </div>
              </div>
            </div>
            <% } %>
            <div role="tabpanel" class="tab-pane" id="pane">
              <div class="nav-list">
                <div class="box box-element ui-draggable" data-code="[pane /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-dropbox"></i> Pane</div>
                </div>
              </div>
            </div>
            <% if(LayoutName == "Header"){ %>
            <div role="tabpanel" class="tab-pane active" id="token">
              <div class="nav-list">
                <div class="box box-element ui-draggable desktop-mode-token" data-code="[megamenu menu_hover_style='hoverstyle_1' color='#424242' fontsize='15px' st='10' sr='16' sb='10' sl='16' menubw='2' fmcolor='#666666' fmfontsize='13px' fmlineheight='39px' fmshadow='checked' mmcolor='#666666' mmfontsize='13px' mmlineheight='35px' mmtcolor='#424242' mmtfontsize='15px' mmtlineheight='35px' mmshadow='checked' mmlinecolor='#dcdcdc' fmbgcolor='#ffffff' mmbgcolor='#ffffff' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-reorder"></i> Horizontal Menu</div>
                </div>
              
                <div class="box box-element ui-draggable mobile-mode-token"  data-code="[mobilemenu color='#666666' fontsize='15px' bgcolor='#ffffff' lv1color='#333333' lv1fontsize='18px' ticolor='#333333' tifontsize='20px' linecolor='rgba(134,134,134,0.2)' navbartitle='Menu' /]"  data-code-v4="[mobilemenu color='#ffffff' fontsize='18px' bgcolor='#2c5cda' lv1color='#ffffff' lv1fontsize='18px' ticolor='#ffffff' tifontsize='18px' linecolor='rgba(255,255,255,0.2)' navbartitle='Menu' tiweight='600' lv1weight='400' accentcolor='#ffffff' weight='400' current='#901dd6' currentcolor='#f8f363' /]" >
                
                 <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-reorder"></i> Mobile Menu</div>
                </div>

                <div class="box box-element ui-draggable" data-code="[logo /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-picture-o"></i> Logo</div>
                </div>
                <div class="box box-element ui-draggable" data-code="[Login /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-user"></i> Login User </div>
                </div>
                <div class="box box-element ui-draggable" data-code="[language /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-language"></i> Language</div>
                </div>
                <div class="box box-element ui-draggable" data-code="[search style='popup' placeholder='ENTER KEYWORDS TO SEARCH'/]" data-code-v4="[search style='popup' placeholder='ENTER KEYWORDS TO SEARCH' color='light' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-search"></i> Search</div>
                </div>
                <div class="box box-element ui-draggable desktop-mode-token hide-<%= TemplateXF.ViewGlobalSetting("bootstrapversion","v3") %>" data-code= "[sidepanel iconstyle='custom' panellayout='menu' paneleffect='side-push-left' bgcolor='#ffffff' width='302' id='321618' linecolor='#ffffff' btnbg='#329aeb' linehovercolor='#ffffff' btnhoverbg='#7981e7' displaymenu='checked' menucolor='#424242' submenucolor='#373737' color='#373737' fontsize='14px' shadow='checked' splitline='checked' borderwidth='1' borderunit='px' borderstyle='dashed' bordercolor='#b8b8b8' menufontsize='14px' submenufontsize='14px' ptt='20' ptr='20' ptb='20' ptl='20' pmt='20' pmr='20' pmb='20' pml='20' pbt='20' pbr='20' pbb='20' pbl='20' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-dropbox"></i> Side Panel</div>
                </div>

                <div class="box box-element ui-draggable desktop-mode-token hide" data-code= "[menu3dpopup /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-dropbox"></i> Menu 3D Popup</div>
                </div>


                <div class="box box-element ui-draggable desktop-mode-token hide-<%= TemplateXF.ViewGlobalSetting("bootstrapversion","v3") %>" data-code="[overlaymenu bgcolor='rgba(0,0,0,0.9)' menucolor='#ffffff' color='#ffffff' menufontsize='30px' menulineheight='52px' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-reorder"></i> Overlay Menu</div>
                </div>
                <div class="box box-element ui-draggable desktop-mode-token hide-<%= TemplateXF.ViewGlobalSetting("bootstrapversion","v3") %>" data-code="[overlaypanel panellayout='menu' iconstyle='custom' startcolor='#ffffff' endcolor='#ffffff' buttoncolor='dark' direction='top' effect='effect-3' effectcolor1='#329aeb' effectcolor2='#7981e7' effectcolor3='#a470df' opacity='1' btnhoverbg='#7981e7' btnbg='#329aeb' /] "> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-th"></i> Overlay Panel</div>
                </div>
                <div class="box box-element ui-draggable" data-code="[line /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-ellipsis-v"></i> Vertical Separator Line</div>
                </div>
                <div class="box box-element ui-draggable" data-code="[textarea content='' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-dropbox"></i> Text Box</div>
                </div>

                <div class="box box-element ui-draggable box-headersidenav hide desktop-mode-token" data-code="[headersidenav width='100' placeholder='Enter any key words to search' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-ellipsis-v"></i>Side Nav</div>
                </div>
                <div class="box box-element ui-draggable box-headersidenav hide desktop-mode-token" data-code="[popupmenu /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-reorder"></i>Popup Menu</div>
                </div>
                <div class="box box-element ui-draggable box-headersidenav hide desktop-mode-token" data-code="[popupsearch  placeholder='Enter any key words to search' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-reorder"></i>Popup Search</div>
                </div>
                <div class="box box-element ui-draggable box-headersidenav hide desktop-mode-token" data-code="[popupmenu2 /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-reorder"></i>Popup Menu 2</div>
                </div>

              </div>
            </div>
             <% } %>
            <% if(LayoutName == "Footer"){ %>
            <div role="tabpanel" class="tab-pane" id="controls">
              <div class="nav-list">
                <div class="box box-element ui-draggable" data-code="[copyright copyright='checked' privacy='checked' terms='checked' itemspacing='5' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-dropbox"></i> Copyright</div>
                </div>
                <div class="box box-element ui-draggable" data-code="[links itemspacing='20' color='#aaaaaa' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-link"></i> Links</div>
                </div>          
                <div class="box box-element ui-draggable" data-code="[Login color='#aaaaaa' user='checked' login='checked' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-user"></i> Login User </div>
                </div>
                <div class="box box-element ui-draggable" data-code="[textarea content='' /]"> <span class="drag label"></span>
                  <div class="preview"><i class="fa fa-dropbox"></i> Text Box</div>
                </div>
              </div>
           </div>
           <% } %>

          </div>

          <% if(LayoutName == "Header"){ %>
            <ul class="responsive-control">
                <li class="active" data-type="desktop"><span class="fa fa-desktop"></span></li>
                <li data-type="mobile"><span class="fa fa-mobile" ></span></li>  
            </ul>
          <% } %>



        </div>
      </div>
      <!--/span-->
      <% if(LayoutName == "Header"){ %>
      <div class="layout-demo ui-sortable codetag header-layout" style="min-height: 304px; " code="[header] [/header]"> </div>
      <div class="layout-mobile-demo ui-sortable codetag header-layout" style="min-height: 304px; " code="[mobileheader] [/mobileheader]"> </div>
      <% }else{ %>
      <div class="layout-demo ui-sortable" style="min-height: 304px; "> </div>
      <% } %>
      
      <!-- end demo -->
      <!--/span-->
      <div id="download-layout">
        <div class="container-fluid"></div>
      </div>
      <div id="style-layout" class="hide">
        
      </div>

      <script id="tmpl-design-options" type="type/x-jquery-tmpl" class="ajax-tmpl" data-name="designOptions"></script>
      <script id="tmpl-css-animation" type="type/x-jquery-tmpl" class="ajax-tmpl" data-name="cssAnimation"></script>
      <script id="tmpl-custom-css" type="type/x-jquery-tmpl" class="ajax-tmpl" data-name="customCSS"></script>
      <script id="tmpl-animation2" type="type/x-jquery-tmpl" class="ajax-tmpl" data-name="Animation"></script>
      <script id="tmpl-FixedElement" type="type/x-jquery-tmpl" class="ajax-tmpl" data-name="FixedElement"></script>
      <script id="tmpl-hide-element" type="type/x-jquery-tmpl" class="ajax-tmpl" data-name="HideElement"></script>
      <script id="tmpl-typography" type="type/x-jquery-tmpl" class="ajax-tmpl" data-name="typography"></script>
      <script id="tmpl-background" type="type/x-jquery-tmpl" class="ajax-tmpl" data-name="background"></script>
      <script id="tmpl-backgroundParallax" type="type/x-jquery-tmpl" class="ajax-tmpl" data-name="backgroundParallax"></script>
      <script id="tmpl-font-list" type="type/x-jquery-tmpl" data-name="fontList"> <%=GetSelectFonts()%> </script>
      <script id="tmpl-image" type="type/x-jquery-tmpl">
          <div class="select-image-box" data-name="${options.imgid}" data-id="id_${options.imgid}">
            <div class="input-group">
              <input type="text" name="${options.imgid}" id="id_${options.imgid}" data-name="${options.imgid}" class="form-control input_text dnnOptions form-control escape" style="width:100%;" value="${$data[options.imgid]?decodeURIComponent($data[options.imgid]):""}" />
              <span class="input-group-btn">
                <a data-href="<%=TemplateXF.ViewSelectImageModal("id_${options.imgid}") %>" data-id="id_${options.imgid}" class="btn btn-image-select btn-default" data-toggle="modal" href="#SelectImage_Modal">
                <i class="fa fa-folder-open-o"></i> Select Image
                </a>
                <a type="button" class="btn btn-image-remove btn-default" {{if !$data[options.imgid] }} style="display:none"{{/if}} >
                  <i class="fa fa-times"></i> Remove
                </a>
              </span>
            </div>
            <span class="select-image-span">
              <img src="${$data[options.imgid]?decodeURIComponent($data[options.imgid]):""}" alt="" onerror="this.src='data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVQImWNgYGBgAAAABQABh6FO1AAAAABJRU5ErkJggg=='">
            </span>
          </div>
      </script>

      

      <div id="tmpl-url" data-url="<%=ModulePath %>Resource/tmpl/"></div>
      <div id="tmpl-ModulePath" data-url="<%=ModulePath %>"></div>
    <!--/row-->
  </div>

  <!-- Modal -->
  <div class="modal fade modal-lg" id="downloadModal" tabindex="-1" role="dialog">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4 class="modal-title">Modal title</h4>
    </div>
    <div class="modal-body"></div>
    <div class="modal-footer"> 
      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    </div>
  </div>

  <div class="modal fade validationEngineContainer modal-lg" id="editorModal" tabindex="-1" role="dialog">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4 class="modal-title">Editor</h4>
    </div>
    <div class="modal-body"></div>
    <div class="modal-footer">
      <a class="btn btn-default" data-dismiss="modal">Close</a>
      <a id="savecontent" class="btn btn-primary" data-dismiss="modal">Save</a>
    </div>
  </div>

  <div class="modal fade" id="previewModal" tabindex="-1" role="dialog">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4 class="modal-title">Preview</h4>
    </div>
    <div class="modal-body"></div>
    <div class="modal-footer">
      <a class="btn btn-default" data-dismiss="modal">Close</a>
    </div>
  </div>
</div>
