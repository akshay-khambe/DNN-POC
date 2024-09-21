<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>

<div id="divSizeControl" style="position:fixed;z-index:1;width:100%;height:100%;top:0;left:0;overflow-x:hidden;overflow-y:auto;border-top:#f9f9f9 38px solid;border-bottom:#eee 1px solid;height:80px;">
    <div data-cmd="size" data-class="-" style="font-size:22px;border-bottom:none;">-</div>
    <div data-cmd="size" data-class="+" style="font-size:22px;border-bottom:none;">+</div>
    <div data-cmd="size" data-class="" style="width:160px;border-bottom:none;border-right:none">clear</div>
</div>
<div id="divSizeList" style="position:fixed;width:100%;height:100%;border-top:transparent 118px solid;top:0;left:0;overflow-x:hidden;overflow-y:auto;box-sizing:border-box;">
    <div data-cmd="size">&nbsp;<i class="size-16"> 16px </i>&nbsp;</div>
    <div data-cmd="size">&nbsp;<i class="size-18"> 18px </i>&nbsp;</div>
    <div data-cmd="size">&nbsp;<i class="size-21"> 21px </i>&nbsp;</div>
    <div data-cmd="size">&nbsp;<i class="size-24"> 24px </i>&nbsp;</div>
    <div data-cmd="size">&nbsp;<i class="size-32"> 32px </i>&nbsp;</div>
    <div data-cmd="size">&nbsp;<i class="size-48"> 48px </i>&nbsp;</div>
    <div data-cmd="size">&nbsp;<i class="size-64"> 64px </i>&nbsp;</div>
    <div data-cmd="size">&nbsp;<i class="size-80"> 80px </i>&nbsp;</div>
    <div data-cmd="size">&nbsp;<i class="size-96"> 96px </i>&nbsp;</div>    
    <div data-cmd="size">&nbsp;<i class="-">-</i>&nbsp;</div>
    <div data-cmd="size">&nbsp;<i class="+">+</i>&nbsp;</div>
    <div data-cmd="size">&nbsp;<i class="">clear</i>&nbsp;</div>
</div>

<script src="<%= SkinPath %>jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">

    jQuery(document).ready(function ($) {

        //var arrSizes = [12, 14, 16, 18, 21, 24, 28, 32, 35, 38, 42, 46, 48, 50, 54, 60, 64, 68, 72, 76, 80, 84, 88, 92, 96, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 144, 148, 152, 156, 160, 164, 168, 172, 176, 180, 184, 188, 192, 196, 200, 204, 208, 212, 216, 220];
        var arrSizes = [16, 18, 21, 24, 28, 32, 35, 38, 42, 46, 48, 50, 54, 60, 64, 68, 72, 76, 80, 92, 96, 100, 120, 140, 160, 180, 200, 220];

        $("#divSizeList").html('');
        for (var i = 0; i < arrSizes.length; i++) {
            $("#divSizeList").append('<div data-cmd="size" data-class="size-' + arrSizes[i] + '">' + arrSizes[i] + 'px</div>');
        }

        $("#divSizeList div, #divSizeControl div").click(function () {
            window.parent.focus();
            parent.applyFontSize(jQuery(this).data('class'));
        });

    });

</script>


