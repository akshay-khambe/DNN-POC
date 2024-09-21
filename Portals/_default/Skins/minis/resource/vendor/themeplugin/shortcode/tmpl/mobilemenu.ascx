<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<div class="form-group hide">
  <label for="firstname" class="control-label">ID:</label>
  <div class="control-cont">
    <input type="text" class="dnnOptions form-control randomid" value="${id}" data-name="id">
  </div>
</div>


<ul class="nav nav-tabs" role="tablist">
  <li role="presentation" class="active"><a href="<%= SkinPath %>#mobilemenu" aria-controls="pane" role="tab" data-toggle="tab">Mobile Menu</a></li>
  <li role="presentation"><a href="<%= SkinPath %>#Menu" aria-controls="pane" role="tab" data-toggle="tab">Menu Node</a></li>
</ul>




<div class="tab-content">


  <div role="tabpanel" class="tab-pane active" id="mobilemenu">
    <div class="form-group colorpicker-box">
      <label for="firstname" class="control-label">Navbar Title:</label>
      <div class="control-cont">
        <input type="text" class="dnnOptions form-control" data-name="navbartitle" value="${navbartitle}">
      </div>
    </div>
    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Level 1 Menu Typography:</label>
        {{tmpl($data,options ={before:"lv1"}) '#tmpl-typography'}}
      </div>
    </div>
    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Level 2 Menu Typography:</label>
        {{tmpl($data,options ={before:"lv2"}) '#tmpl-typography'}}
      </div>
    </div>
    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Level 3 Menu Typography:</label>
        {{tmpl($data,options ={before:"lv3"}) '#tmpl-typography'}}
      </div>
    </div>
    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Level 4 Menu Typography:</label>
        {{tmpl($data,options ={before:"lv4"}) '#tmpl-typography'}}
      </div>
    </div>
    <div class="form-typography-list">
      <div class="form-group">
        <label class="control-label">Level 5 Menu Typography:</label>
        {{tmpl($data,options ={before:"lv5"}) '#tmpl-typography'}}
      </div>
    </div>

    <div class="form-group colorpicker-box">
      <label for="firstname" class="control-label">Accent Color:</label>
      <select class="form-control" id="currentselect">
        <option value="">Theme Options</option>
        <option value="custom" {{if accent }} selected="selected" {{/if}}>Custom</option>
      </select>
      <div class="colorpicker-group conditional" data-condition="#currentselect == 'custom'">
        <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="accent" value="${accent}">
        <i style="background-color:${accent}"></i>
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


</div>

 
