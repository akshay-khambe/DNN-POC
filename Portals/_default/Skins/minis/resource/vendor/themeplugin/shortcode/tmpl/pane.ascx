<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="<%= SkinPath %>#generalOptions" aria-controls="layout" role="tab" data-toggle="tab">General</a></li>
    {{if ThemeOptions.BootstrapVersion =="v4"}}
    <li role="presentation"><a href="<%= SkinPath %>#DesignOptions" aria-controls="pane" role="tab" data-toggle="tab">Background Settings</a></li>
    {{else}}
    <li role="presentation"><a href="<%= SkinPath %>#DesignOptions" aria-controls="pane" role="tab" data-toggle="tab">Design Options</a></li>
    {{/if}}
      <li role="presentation"><a href="<%= SkinPath %>#CustomCSS" aria-controls="pane" role="tab" data-toggle="tab">Custom CSS</a></li>

</ul>

<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="generalOptions">
        <div class="form-group">
            <label for="firstname" class="control-label">Pane Name:</label>
            <div class="control-cont">
                <input type="text" class="dnnOptions form-control panename validate[required]" value="${name}" data-name="name" />
            </div>
        </div>
        <div class="form-group">
            <label for="firstname" class="control-label">Extra class name:</label>
            <div class="control-cont">
                <input type="text" class="dnnOptions form-control" value="${classname}" data-name="classname">
            </div>
        </div>
       
        
    </div>
    <div role="tabpanel" class="tab-pane" id="DesignOptions">
        {{tmpl($data,options ={}) '#tmpl-design-options'}}
    </div>

    <div role="tabpanel" class="tab-pane" id="CustomCSS">
        {{tmpl($data,options ={}) '#tmpl-custom-css'}}
      </div>
    

</div>
