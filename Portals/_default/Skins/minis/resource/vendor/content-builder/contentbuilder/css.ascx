<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>

<div id="codeContainer" style="opacity:0;position:absolute;top:0;left:0;width:100%;height:100%;border:none;border-bottom:50px solid transparent;box-sizing: border-box;">
    
</div>     

<script src="<%= SkinPath %>jquery.min.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/lib/codemirror.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/css/css.js" type="text/javascript"></script>

<script src="<%= SkinPath %>codemirror/hint/show-hint.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/hint/css-hint.js" type="text/javascript"></script>


<script type="text/javascript">




    jQuery(document).ready(function ($) {

        $source = parent.jQuery('#divSidebarSourceEditCSSBox .EditCSSBox');

        $source.each(function(index){
            var $csscode = $(this);
            var html = $csscode.val();
            var name = $(this).data("class");
           $("#codeContainer").append('<h6 class="name-title">'+name+'</h6><textarea id="code'+index+'" rows="10" data-code="'+name+'"></textarea>')
           
           var myTextArea = jQuery('#code'+index)[0];
           
           jQuery('#code'+index).val(html);

           var $htmlEditor = new CodeMirror.fromTextArea(myTextArea, {
                value: html,
                mode: "text/css",
                lineWrapping: true,
                lineNumbers: true,
                tabMode: "indent",
            //   extraKeys: {"Ctrl": "autocomplete"},
              //  value: document.documentElement.innerHTML
            });
            jQuery('#codeContainer').css('opacity',1);
            $htmlEditor.on("change", function (cm, change) {
                $csscode.val(cm.getValue());
                $csscode.addClass("change");
             });
            jQuery('#code'+index).data('CodeMirrorInstance', $htmlEditor);

            $htmlEditor.on('keyup', function(cm, event){
                if (!cm.state.completionActive && event.keyCode > 64 && event.keyCode < 91){
                  CodeMirror.commands.autocomplete($htmlEditor);
                }
            });

            

        })
        
    });

</script>


