<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>

<div style="position:absolute;top:0;left:0;width:100%;height:100%;border:none;border-top:50px solid transparent;box-sizing: border-box;">
    <textarea id="code"></textarea> 
</div>     
<div style="position:absolute;width:100%;height:50px;text-align:right;background:#f7f7f7;border-bottom:#eaeaea 1px solid;box-sizing:border-box;padding-top:7px;padding-right:25px;">
    <button class="cell-html-cancel" style="background:none;border:none;font-size:12px;">Cancel</button>     
    <button class="cell-html-ok" style="">Ok</button>
</div>  

<script src="<%= SkinPath %>jquery.min.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/lib/codemirror.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/xml/xml.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/javascript/javascript.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/css/css.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        var $source = parent.jQuery('textarea[data-source-active]');
        var selectorOk = $source.attr('data-source-ok');
        var selectorCancel = $source.attr('data-source-cancel');
        var html = $source.val();
        jQuery('#code').val(html);

        /*** CodeMirror ***/
        var myTextArea = jQuery("#code")[0];
        var $htmlEditor = CodeMirror.fromTextArea(myTextArea, {
            value: html,
            mode: "text/html",
            lineWrapping: true,
            lineNumbers: true,
            tabMode: "indent"
        });
        $htmlEditor.on("change", function (cm, change) {
            jQuery('#code').val(cm.getValue());
        });

        jQuery('#code').data('CodeMirrorInstance', $htmlEditor); //Save instance
        /*** /CodeMirror ***/

        $(".cell-html-ok").click(function () {

            /*** CodeMirror ***/
            var $htmlEditor = $('#code').data('CodeMirrorInstance');
            jQuery('#code').val($htmlEditor.getValue());
            /*** /CodeMirror ***/

            var html = jQuery('#code').val();
            parent.jQuery('textarea[data-source-active]').val(html);

            var $modal = parent.jQuery('.is-modal.viewhtmllarger');
            parent._cb.hideModal($modal);

            parent.jQuery(selectorOk).trigger('click');
        });

        $(".cell-html-cancel").click(function () {
            parent.jQuery('textarea').removeAttr('data-source-active');

            var $modal = parent.jQuery('.is-modal.viewhtmllarger');
            parent._cb.hideModal($modal);

            parent.jQuery(selectorCancel).trigger('click');
        });
    });

</script>


