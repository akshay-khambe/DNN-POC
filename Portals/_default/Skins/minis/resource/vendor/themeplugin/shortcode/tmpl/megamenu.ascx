<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<div class="form-group hide">
  <label for="firstname" class="control-label">ID:</label>
  <div class="control-cont">
    <input type="text" class="dnnOptions form-control randomid" value="${id}" data-name="id">
  </div>
</div>

<ul class="nav nav-tabs" role="tablist">
  <li role="presentation" class="active"><a href="<%= SkinPath %>#MainMenu" aria-controls="pane" role="tab" data-toggle="tab">Main
      Menu</a></li>
  <li role="presentation"><a href="<%= SkinPath %>#Menu" aria-controls="pane" role="tab" data-toggle="tab">Menu Node</a></li>

  <li role="presentation"><a href="<%= SkinPath %>#FlyoutMenu" aria-controls="pane" role="tab" data-toggle="tab">Flyout Menu</a></li>
  <li role="presentation"><a href="<%= SkinPath %>#MegaMenu" aria-controls="pane" role="tab" data-toggle="tab">Mega Menu</a></li>
</ul>
<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="MainMenu">
    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Menu Typography:</label> 
        {{tmpl($data,options ={}) '#tmpl-typography'}}
      </div>
    </div> 

    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Menu Item Spacing:</label>
        <div class="control-cont">
          <label class="sub-label">Top</label>

          <input type="text" class="dnnOptions form-control validate[custom[number]]" value="${st}" placeholder="px"
            data-name="st" />
        </div>
        <div class="control-cont">
          <label class="sub-label">Right</label>

          <input type="text" class="dnnOptions form-control validate[custom[number]]" value="${sr}" placeholder="px"
            data-name="sr" />
        </div>
        <div class="control-cont">
          <label class="sub-label">Bottom</label>

          <input type="text" class="dnnOptions form-control validate[custom[number]]" value="${sb}" placeholder="px"
            data-name="sb" />
        </div>
        <div class="control-cont">
          <label class="sub-label">Left</label>

          <input type="text" class="dnnOptions form-control validate[custom[number]]" value="${sl}" placeholder="px"
            data-name="sl" />
        </div>

      </div>
    </div>
    <div class="form-images-list">
      <div class="form-group">
        <label class="control-label">Menu Hover Style:</label>
        <div class="control-cont">
          <div class="format-setting-inner">
            <div class="radio-images">
              <input type="radio" name="menu_hover_style" id="menu_hover_style-1" value="hoverstyle_1" class="dnnOptions form-control"
                data-name="menu_hover_style" {{if menu_hover_style && menu_hover_style == "hoverstyle_1"}} checked="checked" {{/if}}>
              <img src="<%= SkinPath %>resource/thumbnails/header/HoverStyle_1.jpg" alt=" " title=" " class="option-tree-ui-radio-image ">
            </div>
            <div class="radio-images">
              <input type="radio" name="menu_hover_style" id="menu_hover_style-2" value="hoverstyle_2" class="dnnOptions form-control"
                data-name="menu_hover_style" {{if menu_hover_style && menu_hover_style == "hoverstyle_2"}} checked="checked" {{/if}}>
              <img src="<%= SkinPath %>resource/thumbnails/header/HoverStyle_2.jpg" alt=" " title=" " class="option-tree-ui-radio-image ">
            </div>
            <div class="radio-images">
              <input type="radio" name="menu_hover_style" id="menu_hover_style-3" value="hoverstyle_3" class="dnnOptions form-control"
                data-name="menu_hover_style" {{if menu_hover_style && menu_hover_style == "hoverstyle_3"}} checked="checked" {{/if}}>
              <img src="<%= SkinPath %>resource/thumbnails/header/HoverStyle_3.jpg" alt=" " title=" " class="option-tree-ui-radio-image ">
            </div>
            <div class="radio-images">
              <input type="radio" name="menu_hover_style" id="menu_hover_style-4" value="hoverstyle_4" class="dnnOptions form-control"
                data-name="menu_hover_style" {{if menu_hover_style && menu_hover_style == "hoverstyle_4"}} checked="checked" {{/if}}>
              <img src="<%= SkinPath %>resource/thumbnails/header/HoverStyle_4.jpg" alt=" " title=" " class="option-tree-ui-radio-image ">
            </div>
            <div class="radio-images">
              <input type="radio" name="menu_hover_style" id="menu_hover_style-5" value="hoverstyle_5" class="dnnOptions form-control"
                data-name="menu_hover_style" {{if menu_hover_style && menu_hover_style == "hoverstyle_5"}} checked="checked" {{/if}}>
              <img src="<%= SkinPath %>resource/thumbnails/header/HoverStyle_5.jpg" alt=" " title=" " class="option-tree-ui-radio-image ">
            </div>
            <div class="radio-images">
              <input type="radio" name="menu_hover_style" id="menu_hover_style-6" value="hoverstyle_6" class="dnnOptions form-control"
                data-name="menu_hover_style" {{if menu_hover_style && menu_hover_style == "hoverstyle_6"}} checked="checked" {{/if}}>
              <img src="<%= SkinPath %>resource/thumbnails/header/HoverStyle_6.jpg" alt=" " title=" " class="option-tree-ui-radio-image ">
            </div>
            <div class="radio-images">
              <input type="radio" name="menu_hover_style" id="menu_hover_style-7" value="hoverstyle_7" class="dnnOptions form-control"
                data-name="menu_hover_style" {{if menu_hover_style && menu_hover_style == "hoverstyle_7"}} checked="checked" {{/if}}>
              <img src="<%= SkinPath %>resource/thumbnails/header/HoverStyle_7.jpg" alt=" " title=" " class="option-tree-ui-radio-image ">
            </div>
          </div>




        </div>


      </div>
    </div>


    <div class="form-group colorpicker-box">
      <label for="firstname" class="control-label">Menu Item Hover Font Color:</label>
      <select class="form-control" id="colorcustom">
        <option value="">Theme Options</option>
        <option value="custom" {{if hovercolor }} selected="selected" {{/if}}>Custom</option>
      </select>
      <div class="colorpicker-group conditional" data-condition="#colorcustom == 'custom'">

        <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="hovercolor"
          value="${hovercolor}">
        <i style="background-color:${hovercolor}"></i>
      </div>
    </div>
    <div class="form-group colorpicker-box">
      <label for="firstname" class="control-label">Menu Item Hover Accent Color:</label>
      <select class="form-control" id="colorcustom2">
        <option value="">Theme Options</option>
        <option value="custom" {{if amenucolor }} selected="selected" {{/if}}>Custom</option>
      </select>
      <div class="colorpicker-group conditional" data-condition="#colorcustom2 == 'custom'">

        <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="amenucolor"
          value="${amenucolor}">
        <i style="background-color:${amenucolor}"></i>
      </div>
    </div>
    <div class="form-group">
      <label for="firstname" class="control-label">Menu Item Border-width:</label>
      <div class="control-cont">
        <input type="number" class="dnnOptions form-control" value="${menubw}" placeholder="px" data-name="menubw">
      </div>
    </div>
    <div class="form-group">
      <label for="firstname" class="control-label">Menu Item Border-radius:</label>
      <div class="control-cont">
        <input type="number" class="dnnOptions form-control" value="${menubr}" placeholder="px" data-name="menubr">
      </div>
    </div>


    <div class="form-group">
      <label for="firstname" class="control-label">Display Middle Logo:</label>
      <div class="control-cont">
        <input type="checkbox" class="dnnOptions" id="dismlogo" data-name="dismlogo" ${dismlogo}>
      </div>
    </div>

    <div class="conditional"  data-condition="#dismlogo">
    <div class="form-group">
      <label for="firstname" class="control-label">Source:</label>
      <div class="control-cont">
        <select class="dnnOptions form-control" id="source" data-name="source" data-value="${source}">
          <option value="">DNN Logo</option>
          <option value="url">Custom Logo</option>
        </select>
      </div>
    </div>
    <div class="form-group conditional" data-condition="#source == 'url'">
      <label for="firstname" class="control-label">Logo URL:</label>
      <div class="control-cont">
        <input type="text" class="dnnOptions form-control escape" value="${url}" data-name="url">
      </div>
    </div>
    <div class="form-group conditional" data-condition="#source == 'url'">
      <label for="firstname" class="control-label">High-DPI (retina) Logo URL:</label>
      <div class="control-cont">
        <input type="text" class="dnnOptions form-control escape" value="${hdurl}" data-name="hdurl">
      </div>
    </div>
  </div>
  <div class="form-group">
    <label for="firstname" class="control-label">Max Level:</label>
    <div class="control-cont">
      <select class="form-control dnnOptions" data-name="maxlevel" data-value="${maxlevel}" style="width: 100px;">
        <option value="0">All</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
      </select>
    </div>
  </div>
  <div class="form-group" >
    <label for="firstname" class="control-label">Hide Arrow:</label>
    <div class="control-cont">
      <input type="checkbox" class="dnnOptions" data-name="hidearrow" ${hidearrow}>
    </div>
  </div> 

  </div>
  <div role="tabpanel" class="tab-pane" id="Menu">


    <div class="form-group">
      <label for="firstname" class="control-label">Node Type:</label>
      <div class="control-cont">
        <select class="form-control dnnOptions" id="nodestype" data-name="nodestype" data-value="${nodestype}" style="width: 300px;">
          <option value="0">Default</option>
          <option value="1">Menu Level</option>
          <option value="2">Include Nodes</option>
          <option value="3">Exclude Nodes</option>

        </select>
      </div>
    </div>
    <div class="form-group conditional" data-condition="#nodestype == 1">
      <label for="firstname" class="control-label">Menu Level:</label>
      <div class="control-cont">
        <select class="form-control dnnOptions" data-name="menulevel" data-value="${menulevel}" style="width: 300px;">
          <option value="0">All</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
        </select>
      </div>
    </div>    

   
    <div class="form-group conditional" data-condition="#nodestype == 2 || #nodestype == 3">
      <label for="firstname" class="control-label">Select Pages:</label>
      <div class="control-cont SelectNodesMenuLevel"><select class="dnnOptions" data-name="selectnodes" multiple="multiple" data-value="${selectnodes}"></select>   

      </div>
    </div>


    
    <div class="form-group">
      <label for="firstname" class="control-label">Include Hidden:</label>
      <div class="control-cont">
        <input type="checkbox" class="dnnOptions" data-name="includehidden" ${includehidden}>
      </div>
    </div>
    


    <div class="form-group">
      <label for="firstname" class="control-label">Max Level:</label>
      <div class="control-cont">
        <select class="form-control dnnOptions" data-name="maxlevel" data-value="${maxlevel}" style="width: 300px;">
          <option value="0">All</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
        </select>
      </div>
    </div>
    
  </div>

  <div role="tabpanel" class="tab-pane" id="FlyoutMenu">

    
    
    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Menu Typography:</label> 
        {{tmpl($data,options ={before:"fm"}) '#tmpl-typography'}}
      </div>
    </div> 
    <div class="form-group">
      <label for="firstname" class="control-label">Display Shadow:</label>
      <div class="control-cont">
        <input type="checkbox" class="dnnOptions" data-name="fmshadow" ${fmshadow}>
      </div>
    </div>
   
    <div class="background-group">
        <div class="form-group">
          <label class="control-label">Background:</label>
          {{tmpl($data,options ={before:"fm"}) '#tmpl-background'}}
        </div>
    </div>


    <div class="form-group colorpicker-box">
      <label for="firstname" class="control-label">Menu Item Hover Accent Color:</label>
      <select class="form-control" id="fmcolorcustom">
        <option value="">Theme Options</option>
        <option value="custom" {{if fmacccolor }} selected="selected" {{/if}}>Custom</option>
      </select>
      <div class="colorpicker-group conditional" data-condition="#fmcolorcustom == 'custom'">

        <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="fmacccolor"
          value="${fmacccolor}">
        <i style="background-color:${fmacccolor}"></i>
      </div>
    </div>

  </div>
  <div role="tabpanel" class="tab-pane" id="MegaMenu">

    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Menu Title Typography:</label> 
        {{tmpl($data,options ={before:"mmt"}) '#tmpl-typography'}}
      </div>
    </div>   
    
    
    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Menu Item Spacing:</label>
        <div class="control-cont">
          <label class="sub-label">Top</label>

          <input type="text" class="dnnOptions form-control validate[custom[number]]" value="${mmst}" placeholder="px" data-name="mmst" />
        </div>
        <div class="control-cont">
          <label class="sub-label">Right</label>

          <input type="text" class="dnnOptions form-control validate[custom[number]]" value="${mmsr}" placeholder="px" data-name="mmsr" />
        </div>
        <div class="control-cont">
          <label class="sub-label">Bottom</label>

          <input type="text" class="dnnOptions form-control validate[custom[number]]" value="${mmsb}" placeholder="px" data-name="mmsb" />
        </div>
        <div class="control-cont">
          <label class="sub-label">Left</label>

          <input type="text" class="dnnOptions form-control validate[custom[number]]" value="${mmsl}" placeholder="px" data-name="mmsl" />
        </div>
      </div>
    </div> 

    <div class="form-group">
      <label for="firstname" class="control-label">Display Menu Item Bottom Line:</label>
      <div class="control-cont">
        <input type="checkbox" class="dnnOptions" id="mmline" data-name="mmline" ${mmline}>
      </div>
    </div>



    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Sub Menu Typography:</label> 
        {{tmpl($data,options ={before:"mm"}) '#tmpl-typography'}}
      </div>
    </div> 
    


    <div class="form-group">
      <label for="firstname" class="control-label">Display Shadow:</label>
      <div class="control-cont">
        <input type="checkbox" class="dnnOptions" data-name="mmshadow" ${mmshadow}>
      </div>
    </div>
    
    <div class="background-group">
        <div class="form-group">
          <label class="control-label">Background:</label>
          {{tmpl($data,options ={before:"mm"}) '#tmpl-background'}}
        </div>
    </div>

    <div class="form-group colorpicker-box">
      <label for="firstname" class="control-label">Accent Color:</label>
      <select class="form-control" id="mmcolorcustom">
        <option value="">Theme Options</option>
        <option value="custom" {{if mmacccolor }} selected="selected" {{/if}}>Custom</option>
      </select>
      <div class="colorpicker-group conditional" data-condition="#mmcolorcustom == 'custom'">

        <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="mmacccolor"
          value="${fmacccolor}">
        <i style="background-color:${mmacccolor}"></i>
      </div>
    </div>

    <div class="form-group colorpicker-box">
      <label for="firstname" class="control-label">Line Color:</label>
      <div class="control-cont">
        <div class="colorpicker-group">
          <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="mmlinecolor"
            value="${mmlinecolor}">
          <i style="background-color:${mmlinecolor}"></i></div>
      </div>
    </div>
  </div>
</div>
