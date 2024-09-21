<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<div class="tab-content">

        <div class="form-group">
            <label class="control-label">Number:</label>
            <div class="control-cont">
                <input name="number" type="number" class="dnnOptions" value="${number}"  data-default="0" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Separator:</label>
            <div class="control-cont">
                <input name="separator" ${separator} type="checkbox" class="dnnOptions" />
            </div>
        </div>           

</div>


<!--build HTML-->
         
<div class="buildHTML">
{{if $data.separator}}<span class="animation number" data-separator="true" data-number="${number}">0</span>{{else}}<span class="animation number" data-number="${number}">0</span>{{/if}}<script class="edit-mode-js" id="js-{id}">
moduleEditModeJs("visible", "{id}","Number")
</script>
</div>


