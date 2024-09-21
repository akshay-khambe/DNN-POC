<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<div class="tab-content">

        <div class="form-group">
            <label class="control-label">Number:</label>
            <div class="control-cont">
                <input name="number" type="number" class="dnnOptions" value="${number}"  data-default="0" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Chart Color:</label>
            <div class="control-cont">
                <input name="color" type="text" class="dnnOptions sample-selector" value="${color}" />
            </div>
        </div>    

</div>


<!--build HTML-->
         
<div class="buildHTML">

    <div class="chart" style="color: ${color};">
        <span class="decorate" data-percent="${number}"></span>
        <div class="text"> <span class="number">0</span><sup>%</sup></div>
    </div>
    <script class="edit-mode-js" id="js-${moduleid}">
    moduleEditModeJs("easyPieChart", "${moduleid}","easyPieChart")
    </script>
</div>


