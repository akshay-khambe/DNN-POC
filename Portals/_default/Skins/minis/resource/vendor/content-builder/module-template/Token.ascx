<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<div class="tab-content">
    <div class="form-group">
        <label class="control-label">Token:</label>
        <div class="control-cont">
            <textarea name="Token" class="dnnOptions" rows="4">${Token}</textarea>
        </div>
    </div>  
</div>

<input type="hidden" name="ModuleBind" value="None" class="dnnOptions"/>

