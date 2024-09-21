<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
  <li role="presentation" class="active"><a href="<%= SkinPath %>#generalOptions" aria-controls="layout" role="tab" data-toggle="tab">General</a></li>
  {{if ThemeOptions.BootstrapVersion =="v4"}}
  <li role="presentation"><a href="<%= SkinPath %>#DesignOptions" aria-controls="pane" role="tab" data-toggle="tab">Background Settings</a></li>
  {{else}}
  <li role="presentation"><a href="<%= SkinPath %>#DesignOptions" aria-controls="pane" role="tab" data-toggle="tab">Design Options</a></li>
  {{/if}}
  <li role="presentation"><a href="<%= SkinPath %>#Typography" aria-controls="pane" role="tab" data-toggle="tab">Typography</a></li>
</ul>
<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="generalOptions">

    <div class="form-group">
      <label for="firstname" class="control-label">height (px):</label>
      <div class="control-cont">
        <input type="number" class="dnnOptions form-control" value="${height}" placeholder="px" data-name="height">
      </div>
    </div>
    <div class="form-group">
      <label for="firstname" class="control-label">Display Shadow:</label>
      <div class="control-cont">
        <input type="checkbox" class="dnnOptions" id="shadow" data-name="shadow" ${shadow}>
      </div>
    </div>

    <div class="form-group colorpicker-box">
      <label for="firstname" class="control-label">Accent Color:</label>
      <select class="form-control" id="colorselect" data-default="">
        <option value="">Theme Options</option>
        <option value="custom" {{if acccolor }} selected="selected" {{/if}}>Custom</option>
      </select>
      <div class="colorpicker-group conditional" data-condition="#colorselect == 'custom'">

        <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="acccolor"
          value="${acccolor}">
        <i style="background-color:${acccolor}"></i>
      </div>
    </div>


    <div class="form-group">
      <label for="firstname" class="control-label">Hide Sticky:</label>
      <div class="control-cont">
        <input type="checkbox" class="dnnOptions" id="hidesticky2" data-name="hidesticky2" ${hidesticky2}>
      </div>
    </div>


    <div class="form-group">
      <label for="firstname" class="control-label">Extra class name:</label>
      <div class="control-cont">
        <input type="text" class="dnnOptions form-control" value="${classname}" data-name="classname">
      </div>
    </div>
    <div class="form-group hide">
      <label for="firstname" class="control-label">ID:</label>
      <div class="control-cont">
        <input type="text" class="dnnOptions form-control randomid" value="${id}" data-name="id">
      </div>
    </div>

  </div>
  <div role="tabpanel" class="tab-pane" id="DesignOptions">
    {{tmpl($data,options ={}) '#tmpl-design-options'}}
  </div>
  <div role="tabpanel" class="tab-pane" id="Typography">
    <div class="row">
      <div class="col-sm-6">
        <div class="form-group">
          <label for="firstname" class="control-label">Color:</label>
          <div class="colorpicker-group">
            <input type="text" class="dnnOptions form-control colorpicker" data-color-format="rgba" data-name="color"
              value="${color}">
            <i style="background-color:${color}"></i>
          </div>
        </div>
      </div>
      <div class="col-sm-6">
        <div class="form-group">
          <label for="firstname" class="control-label">Font Family:</label>
          <div class="control-cont">
            <select class="dnnOptions form-control" data-value="${family}" data-name="family">
              <option value="">font-family</option>
              <option value="arial">Arial</option>
              <option value="georgia">Georgia</option>
              <option value="helvetica">Helvetica</option>
              <option value="palatino">Palatino</option>
              <option value="tahoma">Tahoma</option>
              <option value="times">"Times New Roman", sans-serif</option>
              <option value="trebuchet">Trebuchet</option>
              <option value="verdana">Verdana</option>
            </select>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-6">
        <div class="form-group">
          <label for="firstname" class="control-label">Font Style:</label>
          <div class="control-cont">
            <select class="dnnOptions form-control" data-value="${style}" data-name="style">
              <option value="">font-style</option>
              <option value="normal">Normal</option>
              <option value="italic">Italic</option>
              <option value="oblique">Oblique</option>
              <option value="inherit">Inherit</option>
            </select>
          </div>
        </div>
      </div>
      <div class="col-sm-6">
        <div class="form-group">
          <label for="firstname" class="control-label">Font Weight :</label>
          <div class="control-cont">
            <select class="dnnOptions form-control" data-value="${weight}" data-name="weight">
              <option value="">font-weight</option>
              <option value="normal" selected="selected">Normal</option>
              <option value="bold">Bold</option>
              <option value="bolder">Bolder</option>
              <option value="lighter">Lighter</option>
              <option value="100">100</option>
              <option value="200">200</option>
              <option value="300">300</option>
              <option value="400">400</option>
              <option value="500">500</option>
              <option value="600">600</option>
              <option value="700">700</option>
              <option value="800">800</option>
              <option value="900">900</option>
              <option value="inherit">Inherit</option>
            </select>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-6">
        <div class="form-group">
          <label for="firstname" class="control-label">Letter Spacing:</label>
          <div class="control-cont">
            <select class="dnnOptions form-control" data-value="${spacing}" data-name="spacing">
              <option value="">letter-spacing</option>
              <option value="-0.1em">-0.1em</option>
              <option value="-0.09em">-0.09em</option>
              <option value="-0.08em">-0.08em</option>
              <option value="-0.07em">-0.07em</option>
              <option value="-0.06em">-0.06em</option>
              <option value="-0.05em">-0.05em</option>
              <option value="-0.04em">-0.04em</option>
              <option value="-0.03em">-0.03em</option>
              <option value="-0.02em">-0.02em</option>
              <option value="-0.01em">-0.01em</option>
              <option value="0em">0em</option>
              <option value="0.01em">0.01em</option>
              <option value="0.02em">0.02em</option>
              <option value="0.03em">0.03em</option>
              <option value="0.04em">0.04em</option>
              <option value="0.05em">0.05em</option>
              <option value="0.06em">0.06em</option>
              <option value="0.07em">0.07em</option>
              <option value="0.08em">0.08em</option>
              <option value="0.09em">0.09em</option>
              <option value="0.1em">0.1em</option>
            </select>
          </div>
        </div>
      </div>
      <div class="col-sm-6">
        <div class="form-group">
          <label for="firstname" class="control-label">Font Size:</label>
          <div class="control-cont">
            <select class="dnnOptions form-control" data-value="${fontsize}" data-name="fontsize">
              <option value="">font-size</option>
              <option value="0px">0px</option>
              <option value="1px">1px</option>
              <option value="2px">2px</option>
              <option value="3px">3px</option>
              <option value="4px">4px</option>
              <option value="5px">5px</option>
              <option value="6px">6px</option>
              <option value="7px">7px</option>
              <option value="8px">8px</option>
              <option value="9px">9px</option>
              <option value="10px">10px</option>
              <option value="11px">11px</option>
              <option value="12px">12px</option>
              <option value="13px">13px</option>
              <option value="14px" selected="selected">14px</option>
              <option value="15px">15px</option>
              <option value="16px">16px</option>
              <option value="17px">17px</option>
              <option value="18px">18px</option>
              <option value="19px">19px</option>
              <option value="20px">20px</option>
              <option value="21px">21px</option>
              <option value="22px">22px</option>
              <option value="23px">23px</option>
              <option value="24px">24px</option>
              <option value="25px">25px</option>
              <option value="26px">26px</option>
              <option value="27px">27px</option>
              <option value="28px">28px</option>
              <option value="29px">29px</option>
              <option value="30px">30px</option>
              <option value="31px">31px</option>
              <option value="32px">32px</option>
              <option value="33px">33px</option>
              <option value="34px">34px</option>
              <option value="35px">35px</option>
              <option value="36px">36px</option>
              <option value="37px">37px</option>
              <option value="38px">38px</option>
              <option value="39px">39px</option>
              <option value="40px">40px</option>
              <option value="41px">41px</option>
              <option value="42px">42px</option>
              <option value="43px">43px</option>
              <option value="44px">44px</option>
              <option value="45px">45px</option>
              <option value="46px">46px</option>
              <option value="47px">47px</option>
              <option value="48px">48px</option>
              <option value="49px">49px</option>
              <option value="50px">50px</option>
              <option value="51px">51px</option>
              <option value="52px">52px</option>
              <option value="53px">53px</option>
              <option value="54px">54px</option>
              <option value="55px">55px</option>
              <option value="56px">56px</option>
              <option value="57px">57px</option>
              <option value="58px">58px</option>
              <option value="59px">59px</option>
              <option value="60px">60px</option>
              <option value="61px">61px</option>
              <option value="62px">62px</option>
              <option value="63px">63px</option>
              <option value="64px">64px</option>
              <option value="65px">65px</option>
              <option value="66px">66px</option>
              <option value="67px">67px</option>
              <option value="68px">68px</option>
              <option value="69px">69px</option>
              <option value="70px">70px</option>
              <option value="71px">71px</option>
              <option value="72px">72px</option>
              <option value="73px">73px</option>
              <option value="74px">74px</option>
              <option value="75px">75px</option>
              <option value="76px">76px</option>
              <option value="77px">77px</option>
              <option value="78px">78px</option>
              <option value="79px">79px</option>
              <option value="80px">80px</option>
              <option value="81px">81px</option>
              <option value="82px">82px</option>
              <option value="83px">83px</option>
              <option value="84px">84px</option>
              <option value="85px">85px</option>
              <option value="86px">86px</option>
              <option value="87px">87px</option>
              <option value="88px">88px</option>
              <option value="89px">89px</option>
              <option value="90px">90px</option>
              <option value="91px">91px</option>
              <option value="92px">92px</option>
              <option value="93px">93px</option>
              <option value="94px">94px</option>
              <option value="95px">95px</option>
              <option value="96px">96px</option>
              <option value="97px">97px</option>
              <option value="98px">98px</option>
              <option value="99px">99px</option>
              <option value="100px">100px</option>
              <option value="101px">101px</option>
              <option value="102px">102px</option>
              <option value="103px">103px</option>
              <option value="104px">104px</option>
              <option value="105px">105px</option>
              <option value="106px">106px</option>
              <option value="107px">107px</option>
              <option value="108px">108px</option>
              <option value="109px">109px</option>
              <option value="110px">110px</option>
              <option value="111px">111px</option>
              <option value="112px">112px</option>
              <option value="113px">113px</option>
              <option value="114px">114px</option>
              <option value="115px">115px</option>
              <option value="116px">116px</option>
              <option value="117px">117px</option>
              <option value="118px">118px</option>
              <option value="119px">119px</option>
              <option value="120px">120px</option>
              <option value="121px">121px</option>
              <option value="122px">122px</option>
              <option value="123px">123px</option>
              <option value="124px">124px</option>
              <option value="125px">125px</option>
              <option value="126px">126px</option>
              <option value="127px">127px</option>
              <option value="128px">128px</option>
              <option value="129px">129px</option>
              <option value="130px">130px</option>
              <option value="131px">131px</option>
              <option value="132px">132px</option>
              <option value="133px">133px</option>
              <option value="134px">134px</option>
              <option value="135px">135px</option>
              <option value="136px">136px</option>
              <option value="137px">137px</option>
              <option value="138px">138px</option>
              <option value="139px">139px</option>
              <option value="140px">140px</option>
              <option value="141px">141px</option>
              <option value="142px">142px</option>
              <option value="143px">143px</option>
              <option value="144px">144px</option>
              <option value="145px">145px</option>
              <option value="146px">146px</option>
              <option value="147px">147px</option>
              <option value="148px">148px</option>
              <option value="149px">149px</option>
              <option value="150px">150px</option>
            </select>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-6">
        <div class="form-group">
          <label for="firstname" class="control-label">Line height:</label>
          <div class="control-cont">
            <select class="dnnOptions form-control" data-value="${lineheight}" data-name="lineheight">
              <option value="">line-height</option>
              <option value="0px">0px</option>
              <option value="1px">1px</option>
              <option value="2px">2px</option>
              <option value="3px">3px</option>
              <option value="4px">4px</option>
              <option value="5px">5px</option>
              <option value="6px">6px</option>
              <option value="7px">7px</option>
              <option value="8px">8px</option>
              <option value="9px">9px</option>
              <option value="10px">10px</option>
              <option value="11px">11px</option>
              <option value="12px">12px</option>
              <option value="13px">13px</option>
              <option value="14px">14px</option>
              <option value="15px">15px</option>
              <option value="16px">16px</option>
              <option value="17px">17px</option>
              <option value="18px">18px</option>
              <option value="19px">19px</option>
              <option value="20px">20px</option>
              <option value="21px">21px</option>
              <option value="22px">22px</option>
              <option value="23px">23px</option>
              <option value="24px">24px</option>
              <option value="25px">25px</option>
              <option value="26px">26px</option>
              <option value="27px">27px</option>
              <option value="28px">28px</option>
              <option value="29px">29px</option>
              <option value="30px">30px</option>
              <option value="31px">31px</option>
              <option value="32px">32px</option>
              <option value="33px">33px</option>
              <option value="34px">34px</option>
              <option value="35px">35px</option>
              <option value="36px">36px</option>
              <option value="37px">37px</option>
              <option value="38px">38px</option>
              <option value="39px">39px</option>
              <option value="40px">40px</option>
              <option value="41px">41px</option>
              <option value="42px">42px</option>
              <option value="43px">43px</option>
              <option value="44px">44px</option>
              <option value="45px">45px</option>
              <option value="46px">46px</option>
              <option value="47px">47px</option>
              <option value="48px">48px</option>
              <option value="49px">49px</option>
              <option value="50px">50px</option>
              <option value="51px">51px</option>
              <option value="52px">52px</option>
              <option value="53px">53px</option>
              <option value="54px">54px</option>
              <option value="55px">55px</option>
              <option value="56px">56px</option>
              <option value="57px">57px</option>
              <option value="58px">58px</option>
              <option value="59px">59px</option>
              <option value="60px">60px</option>
              <option value="61px">61px</option>
              <option value="62px">62px</option>
              <option value="63px">63px</option>
              <option value="64px">64px</option>
              <option value="65px">65px</option>
              <option value="66px">66px</option>
              <option value="67px">67px</option>
              <option value="68px">68px</option>
              <option value="69px">69px</option>
              <option value="70px">70px</option>
              <option value="71px">71px</option>
              <option value="72px">72px</option>
              <option value="73px">73px</option>
              <option value="74px">74px</option>
              <option value="75px">75px</option>
              <option value="76px">76px</option>
              <option value="77px">77px</option>
              <option value="78px">78px</option>
              <option value="79px">79px</option>
              <option value="80px">80px</option>
              <option value="81px">81px</option>
              <option value="82px">82px</option>
              <option value="83px">83px</option>
              <option value="84px">84px</option>
              <option value="85px">85px</option>
              <option value="86px">86px</option>
              <option value="87px">87px</option>
              <option value="88px">88px</option>
              <option value="89px">89px</option>
              <option value="90px">90px</option>
              <option value="91px">91px</option>
              <option value="92px">92px</option>
              <option value="93px">93px</option>
              <option value="94px">94px</option>
              <option value="95px">95px</option>
              <option value="96px">96px</option>
              <option value="97px">97px</option>
              <option value="98px">98px</option>
              <option value="99px">99px</option>
              <option value="100px">100px</option>
              <option value="101px">101px</option>
              <option value="102px">102px</option>
              <option value="103px">103px</option>
              <option value="104px">104px</option>
              <option value="105px">105px</option>
              <option value="106px">106px</option>
              <option value="107px">107px</option>
              <option value="108px">108px</option>
              <option value="109px">109px</option>
              <option value="110px">110px</option>
              <option value="111px">111px</option>
              <option value="112px">112px</option>
              <option value="113px">113px</option>
              <option value="114px">114px</option>
              <option value="115px">115px</option>
              <option value="116px">116px</option>
              <option value="117px">117px</option>
              <option value="118px">118px</option>
              <option value="119px">119px</option>
              <option value="120px">120px</option>
              <option value="121px">121px</option>
              <option value="122px">122px</option>
              <option value="123px">123px</option>
              <option value="124px">124px</option>
              <option value="125px">125px</option>
              <option value="126px">126px</option>
              <option value="127px">127px</option>
              <option value="128px">128px</option>
              <option value="129px">129px</option>
              <option value="130px">130px</option>
              <option value="131px">131px</option>
              <option value="132px">132px</option>
              <option value="133px">133px</option>
              <option value="134px">134px</option>
              <option value="135px">135px</option>
              <option value="136px">136px</option>
              <option value="137px">137px</option>
              <option value="138px">138px</option>
              <option value="139px">139px</option>
              <option value="140px">140px</option>
              <option value="141px">141px</option>
              <option value="142px">142px</option>
              <option value="143px">143px</option>
              <option value="144px">144px</option>
              <option value="145px">145px</option>
              <option value="146px">146px</option>
              <option value="147px">147px</option>
              <option value="148px">148px</option>
              <option value="149px">149px</option>
              <option value="150px">150px</option>
              <option value="0.8">0.8</option>
              <option value="0.9">0.9</option>
              <option value="1">1</option>
              <option value="1.1">1.1</option>
              <option value="1.2">1.2</option>
              <option value="1.3">1.3</option>
              <option value="1.4">1.4</option>
              <option value="1.5">1.5</option>
              <option value="1.6">1.6</option>
              <option value="1.7">1.7</option>
              <option value="1.8">1.8</option>
              <option value="1.9">1.9</option>
              <option value="2">2</option>
              <option value="2.1">2.1</option>
              <option value="2.2">2.2</option>
              <option value="2.3">2.3</option>
              <option value="2.4">2.4</option>
              <option value="2.5">2.5</option>
              <option value="3">3</option>
              <option value="3.5">3.5</option>
              <option value="4">4</option>
            </select>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>

<input type="text" class="dnnOptions form-control hide" value="${name}" data-name="name">
<input type="text" class="dnnOptions form-control hide" value="${areaname}" data-name="areaname">
<input type="text" class="dnnOptions form-control hide" value="${active}" data-name="active">


