<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<div class="form-group">
  <label for="firstname" class="control-label">Type:</label>
  <div class="control-cont">
    <select class="dnnOptions form-control" data-name="style" data-value="${style}" id="popupstyle">
      <option value="dropdown">Drop down</option>
      <option value="popup">Pop up</option>
    </select>
  </div>
</div>



<div class="form-group conditional" data-condition="#popupstyle == 'dropdown'">
  <label for="firstname" class="control-label">Default Language Text:</label>
  <div class="control-cont">
    <input type="text" class="dnnOptions form-control validate[required]" value="${defaultlang}" data-name="defaultlang" />
  </div>
</div>
<div class="form-group conditional" data-condition="#popupstyle == 'dropdown'">
  <label for="firstname" class="control-label">Google Translate Language:</label>
  <div class="control-cont">
    <div class="dynamic-list">
      <div class="item">
        <select class="form-control" name="lang" data-value="$$$lang$$$$">
          <option value="">Select Language</option>
          <option value="af">Afrikaans</option>
          <option value="sq">Albanian</option>
          <option value="ar">Arabic</option>
          <option value="hy">Armenian</option>
          <option value="az">Azerbaijani</option>
          <option value="eu">Basque</option>
          <option value="be">Belarusian</option>
          <option value="bn">Bengali</option>
          <option value="bg">Bulgarian</option>
          <option value="ca">Catalan</option>
          <option value="zh-CN">Chinese (Simplified)</option>
          <option value="zh-TW">Chinese (Traditional)</option>
          <option value="hr">Croatian</option>
          <option value="cs">Czech</option>
          <option value="da">Danish</option>
          <option value="nl">Dutch</option>
          <option value="eo">Esperanto</option>
          <option value="et">Estonian</option>
          <option value="en">English</option>
          <option value="tl">Filipino</option>
          <option value="fi">Finnish</option>
          <option value="fr">French</option>
          <option value="gl">Galician</option>
          <option value="ka">Georgian</option>
          <option value="de">German</option>
          <option value="el">Greek</option>
          <option value="gu">Gujarati</option>
          <option value="ht">Haitian Creole</option>
          <option value="iw">Hebrew</option>
          <option value="hi">Hindi</option>
          <option value="hu">Hungarian</option>
          <option value="is">Icelandic</option>
          <option value="id">Indonesian</option>
          <option value="ga">Irish</option>
          <option value="it">Italian</option>
          <option value="ja">Japanese</option>
          <option value="kn">Kannada</option>
          <option value="ko">Korean</option>
          <option value="la">Latin</option>
          <option value="lv">Latvian</option>
          <option value="lt">Lithuanian</option>
          <option value="mk">Macedonian</option>
          <option value="ms">Malay</option>
          <option value="mt">Maltese</option>
          <option value="no">Norwegian</option>
          <option value="fa">Persian</option>
          <option value="pl">Polish</option>
          <option value="pt">Portuguese</option>
          <option value="ro">Romanian</option>
          <option value="ru">Russian</option>
          <option value="sr">Serbian</option>
          <option value="sk">Slovak</option>
          <option value="sl">Slovenian</option>
          <option value="es">Spanish</option>
          <option value="sw">Swahili</option>
          <option value="sv">Swedish</option>
          <option value="ta">Tamil</option>
          <option value="te">Telugu</option>
          <option value="th">Thai</option>
          <option value="tr">Turkish</option>
          <option value="uk">Ukrainian</option>
          <option value="ur">Urdu</option>
          <option value="vi">Vietnamese</option>
          <option value="cy">Welsh</option>
          <option value="yi">Yiddish</option>
        </select>
        <input type="text" name="icon" class="form-control" value="$$$icon$$$$" placeholder="Text">
        <button class="remove" type="button"><i class="fa fa-remove"></i></button>
      </div>


      <div class="dynamic-footer">
        <div class="dynamic-add">+</div>
        <input type="text" class="dnnOptions form-control" value="${language}" data-name="language" style="display: none;">

      </div>
    </div>     
  </div>
</div>

 <div style="display: grid; grid-template-columns: repeat(3,1fr); grid-gap: 10px;">
  <div class="form-group conditional" data-condition="#popupstyle == 'popup'">
    <label for="firstname" class="control-label">Icon Position:</label>
    <div class="control-cont">
      <select class="dnnOptions form-control" data-name="position" data-value="${position}">
        <option value="lefttop">Left Top</option>
        <option value="righttop">Right Top</option>
        <option value="leftbottom">Left Bottom</option>
        <option value="rightbottom">Right Bottom</option>
      </select>
    </div>
  </div>
  <div class="form-group conditional" data-condition="#popupstyle == 'popup'">
    <label for="firstname" class="control-label">X:</label>
    <div class="control-cont">
      <input type="number" class="dnnOptions form-control" value="${popupx}" placeholder="px" data-name="popupx" data-default="30">
    </div>
  </div>
  <div class="form-group conditional" data-condition="#popupstyle == 'popup'">
    <label for="firstname" class="control-label">Y:</label>
    <div class="control-cont">
      <input type="number" class="dnnOptions form-control" value="${popupy}" placeholder="px" data-name="popupy" data-default="150">
    </div>
  </div>
</div>



<div class="form-group hide">
  <label for="firstname" class="control-label">ID:</label>
  <div class="control-cont">
    <input type="text" class="dnnOptions form-control randomid" value="${id}" data-name="id">
  </div>
</div>





<style>
  .dynamic-list .item {
    display: flex;
    margin-bottom: 5px;
  }

  .dynamic-list .dynamic-add {
    height: 44px;
    line-height: 44px;
    text-align: center;
    background: #f7f7f7;
    border: 1px dashed #e2e2e2;
    font-size: 24px;
    font-weight: 300;
    color: #666;
    cursor: pointer;
    margin-top: 10px;
  }

  .dynamic-list .item select {
    width: 200px;
    margin-right: 10px;
  }

  .dynamic-list .item input {
    flex-grow: 1;
    margin-right: 10px;
  }

  .dynamic-list .item button {
    background: none;
    border: none;
    color: #e20000;
    width: 40px;
    height: 33px;
    font-size: 18px;
  }
</style>
