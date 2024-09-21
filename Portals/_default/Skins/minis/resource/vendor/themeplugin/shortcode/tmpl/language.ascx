<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<div class="form-group hide">
  <label for="firstname" class="control-label">ID:</label>
  <div class="control-cont">
    <input type="text" class="dnnOptions form-control randomid" value="${id}" data-name="id">
  </div>
</div>

<div class="form-group">
  <label for="firstname" class="control-label">Type:</label>
  <div class="control-cont">
    <select name="culture" class="dnnOptions form-control" data-name="culture" data-value="${culture}" style="width: 200px;" id="TypeCulture">
      <option value="flag">Flags</option>
      <option value="dropdown">Dropdown</option>
      <option value="text">Text</option>
    </select>
  </div>
 
</div>
<div class="form-group">
  <label for="firstname" class="control-label">Culture:</label>
  <div class="control-cont">
    <select name="culture2" id="culture2" class="dnnOptions form-control" data-name="culture2" data-value="${culture2}" style="width: 200px; display: inline-block; margin-right: 10px;">
      <option value="ENGLISHNAME">English Name</option>
      <option value="NAME">Name</option>
      <option value="NATIVENAME">Native Name</option>
      <option value="TWOLETTERISOCODE">Two Letter</option>
      <option value="THREELETTERISOCODE">Three Letter</option>
      <option value="flagname" class="conditional"  data-condition="#TypeCulture == 'dropdown'">Flags + Native Name</option>
    </select>
    <label>
      <span class="conditional"  data-condition="#culture2 == 'DISPLAYNAME' || #culture2 == 'ENGLISHNAME' || #culture2 == 'NATIVENAME'">
     <input type="checkbox" class="dnnOptions" id="country" data-name="country" ${country}> (Country/Regionfull)
    </span>
    </label>

  </div>
</div>


<div class="form-group conditional"  data-condition="#TypeCulture == 'dropdown'">
  <label for="firstname" class="control-label">Align:</label>
  <div class="control-cont" style="width: 200px;">
    <select class="dnnOptions form-control" data-name="popupalign" data-value="${popupalign}">
      <option value="left">Left</option>
      <option value="right">Right</option>
    </select>
  </div>
</div>



<div class="form-group">
  <label for="firstname" class="control-label">Uppercase:</label>
  <div class="control-cont">
    <label><input type="checkbox" class="dnnOptions" id="uppercase" data-name="uppercase" ${uppercase}> Uppercase</label>
  </div>

</div>
