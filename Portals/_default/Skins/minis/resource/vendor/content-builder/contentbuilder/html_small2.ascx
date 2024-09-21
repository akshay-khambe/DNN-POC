<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>

<div id="codeContainer" style="opacity:0;position:absolute;top:0;left:0;width:100%;height:100%;border:none;border-bottom:50px solid transparent;box-sizing: border-box;">
    <textarea id="code" rows="10"></textarea> 
</div>     
<div style="width:100%;height:50px;position:absolute;left:0;bottom:0;border-top: #efefef 1px solid;overflow:hidden;text-align:right">
    <button class="input-cancel classic-secondary" style="background:none;border:none;font-size:12px;">Cancel</button>     
    <button class="input-ok classic-primary" style="">Ok</button>
</div>

<script src="<%= SkinPath %>jquery.min.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/lib/codemirror.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/xml/xml.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/javascript/javascript.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/css/css.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/html/html.js" type="text/javascript"></script>

<script type="text/javascript">




    jQuery(document).ready(function ($) {

        var $source = parent.jQuery('.is-modal.viewhtmlformatted textarea');
        var html = $source.val();
            html = style_html(html);

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

        jQuery('#codeContainer').css('opacity',1);

        $htmlEditor.on("change", function (cm, change) {
            jQuery('#code').val(cm.getValue());
        });

        jQuery('#code').data('CodeMirrorInstance', $htmlEditor); //Save instance
        /*** /CodeMirror ***/

        $(".input-ok").click(function () {
            /*** CodeMirror ***/
            var $htmlEditor = $('#code').data('CodeMirrorInstance');
            jQuery('#code').val($htmlEditor.getValue());
            /*** /CodeMirror ***/
            var html = jQuery('#code').val();

            var tool =  parent.isSectionCode.find(".is-section-tool");
                parent.isSectionCode.after(html); 
                parent.isSectionCode.next(".is-section").append(tool);
                parent.isSectionCode.remove();

                parent.jQuery(".is-wrapper").data("contentbox").setup();
                parent._cb.applyBehavior();
                parent._cb.settings.onChange();
                parent._cb.settings.onRender();

            var $modal = parent.jQuery('.is-modal.viewhtmlformatted');
            parent._cb.hideModal($modal);
            jQuery('#codeContainer').css('opacity',0);

        });

        $(".input-cancel").click(function () {
            parent.jQuery('textarea').removeAttr('data-source-active');

            var $modal = parent.jQuery('.is-modal.viewhtmlformatted');
            parent._cb.hideModal($modal);
            jQuery('#codeContainer').css('opacity', 0);
        });
    });

</script>


