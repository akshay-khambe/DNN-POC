<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<div class="tab-content">
    <div class="form-group">
        <label class="control-label">Source:</label>
        <div class="control-cont">
            <select name="modulesource" type="text" class="dnnOptions ajaxDate" data-value="${modulesource}"></select>
        </div>
    </div>

    <div class="form-inline-block">
        <div class="form-group">
            <label class="control-label">Submit Button Text:</label>
            <div class="control-cont">
                <input name="SubmitButtonText" type="text" class="dnnOptions" value="${SubmitButtonText}" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Submit Button Class:</label>
            <div class="control-cont">
                <input name="SubmitButtonClass" type="text" class="dnnOptions" value="${SubmitButtonClass}" />
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label">Display Reset Button: <input name="DisplayResetButton" id="DisplayResetButton" type="checkbox" class="dnnOptions" ${DisplayResetButton} /></label>

    </div>
    <div class="form-inline-block conditional" data-condition="#DisplayResetButton">
        <div class="form-group">
            <label class="control-label">Reset Button Text:</label>
            <div class="control-cont">
                <input name="ResetButtonText" type="text" class="dnnOptions" value="${ResetButtonText}" data-default="" />
            </div>
        </div>
        <div class="form-group ">
            <label class="control-label">Reset Button Class:</label>
            <div class="control-cont">
                <input name="ResetButtonClass" type="text" class="dnnOptions" value="${ResetButtonClass}" data-default="" />
            </div>
        </div>
    </div>


    <div class="form-group">
        <label class="control-label">Message:</label>
        <div class="control-cont">
            <input name="message" type="text" class="dnnOptions" value="${message}"  data-default="" />
        </div>
    </div> 
    <div class="form-group">
        <label class="control-label">Redirect results page:</label>
        <div class="control-cont">
            <input name="successlink" type="text" class="dnnOptions" value="${successlink}"  data-default="" />
        </div>
    </div>



    
  
</div>


<input name="modulestyle" type="text" class="dnnOptions" value="${modulestyle}"  style="display: none;"/>


