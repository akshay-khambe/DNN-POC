<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<div class="tab-content">

        <div class="form-group" style="display: none;">
            <label class="control-label">Pages:</label>
            <div class="control-cont">
                <input name="tid" class="dnnOptions ajaxData" data-value="${tid}" type="text" />
            </div>
        </div> 

      

        {{if $data.style == "new"}}

         <ul class="dnn-module-list"></ul>

            <div class="form-group" style="display: none;">
            
                <div class="control-cont">
                    <input name="mid" class="dnnOptions" data-value="${mid}" type="text" />
                </div>
            </div>

        {{else}}
        
            <div class="form-group">
                <label class="control-label">Modules:</label>
                <div class="control-cont">
                    <select name="mid" class="dnnOptions ajaxData" data-value="${mid}"></select>
                </div>
            </div>
       {{/if}}
       
  
  
</div>


<input name="ModuleBind" type="text" class="dnnOptions" value="Loader" style="display: none;"/>


