<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


  <div class="form-group colorpicker-box">
    <label for="firstname" class="control-label">Icon Background Color:</label>
    <select class="form-control" id="colorselect">
      <option value="">Theme Options</option>
      <option value="custom" {{if icolor }} selected="selected" {{/if}}>Custom</option>
    </select>
    <div class="colorpicker-group conditional" data-condition="#colorselect == 'custom'">
      <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="icolor" value="${icolor}">
      <i style="background-color:${icolor}"></i>
    </div>
  </div>
  


  <div class="form-group colorpicker-box">
    <label for="firstname" class="control-label">Popup Background Color:</label>
    <select class="form-control" id="colorselect2">
      <option value="">Theme Options</option>
      <option value="custom" {{if bgcolor }} selected="selected" {{/if}}>Custom</option>
    </select>
    <div class="colorpicker-group conditional" data-condition="#colorselect2 == 'custom'">
      <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="bgcolor" value="${bgcolor}">
      <i style="background-color:${bgcolor}"></i>
    </div>
  </div>
  

<div class="form-group colorpicker-box">
  <label for="firstname" class="control-label">Sub Menu Background Color:</label>
  <select class="form-control" id="colorselect4">
    <option value="">Theme Options</option>
    <option value="custom" {{if subbgcolor }} selected="selected" {{/if}}>Custom</option>
  </select>
  <div class="colorpicker-group conditional" data-condition="#colorselect4 == 'custom'">
    <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="subbgcolor" value="${subbgcolor}">
    <i style="background-color:${subbgcolor}"></i>
  </div>
</div>


<div class="form-group colorpicker-box">
  <label for="firstname" class="control-label">Accent Color:</label>
  <select class="form-control" id="colorselect3">
    <option value="">Theme Options</option>
    <option value="custom" {{if acccolor }} selected="selected" {{/if}}>Custom</option>
  </select>
  <div class="colorpicker-group conditional" data-condition="#colorselect3 == 'custom'">
    <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="acccolor" value="${acccolor}">
    <i style="background-color:${acccolor}"></i>
  </div>
</div>


  <div class="form-group">
    <label for="firstname" class="control-label">Source:</label>
    <div class="control-cont">
      <select class="dnnOptions form-control" id="source" data-name="source" data-value="${source}">
        <option value="">DNN Logo</option>
        <option value="c_url">Custom Logo</option>
      </select>
    </div>
  </div>
  <div class="form-group conditional" data-condition="(#source == 'c_url')">
    <label for="firstname" class="control-label">Logo URL:</label>
    <div class="control-cont">
      {{tmpl($data,options ={imgid:"url"}) '#tmpl-image'}}
    </div>
  </div>
  <div class="form-group conditional" data-condition="(#source == 'c_url')">
    <label for="firstname" class="control-label">High-DPI (retina) Logo URL:</label>
    <div class="control-cont">
      {{tmpl($data,options ={imgid:"hdurl"}) '#tmpl-image'}}
    </div>
  </div>

  <div class="form-group">
    <label for="firstname" class="control-label">Header Right Box Text:</label>
    <div class="control-cont">
      <textarea class="dnnOptions form-control base64" data-name="content2" rows="5">${$data.content2?Base64.decode(content2):""}</textarea>
    </div>
  </div>

  
<div class="form-group">
  <label for="firstname" class="control-label">Right Box Text:</label>
  <div class="control-cont">
    <textarea class="dnnOptions form-control base64" data-name="content" rows="15">${$data.content?Base64.decode(content):""}</textarea>
  </div>
</div>



<div class="form-group hide">
  <label for="firstname" class="control-label">ID:</label>
  <div class="control-cont">
    <input type="text" class="dnnOptions form-control randomid" value="${id}" data-name="id">
  </div>
</div>
