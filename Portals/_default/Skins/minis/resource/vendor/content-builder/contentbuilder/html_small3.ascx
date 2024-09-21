<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>

<div id="codeContainer" style="opacity:0;position:absolute;top:0;left:0;width:100%;height:100%;border:none;border-bottom:50px solid transparent;box-sizing: border-box;">
    <textarea id="code" rows="10"></textarea> 
</div>     

<script src="<%= SkinPath %>jquery.min.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/lib/codemirror.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/xml/xml.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/javascript/javascript.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/css/css.js" type="text/javascript"></script>
<script src="<%= SkinPath %>codemirror/mode/html/html.js" type="text/javascript"></script>

<script type="text/javascript">



    jQuery(document).ready(function ($) {

        var $source = parent.jQuery('#inpViewHtml2');
        var html = $source.val();

           
                var htmldom = $("<div>"+html+"</div>");
            if(html.indexOf("custom-module") != -1){   
                htmldom.find(".custom-module").each(function(){
                    $(this).empty();
                  //  $(this).attr("data-html",false);
                    $(this).addClass("loading");
                })
                html =htmldom.html();
            }
            if(html.indexOf("section-slider") != -1){  
                htmldom.find(".is-section.section-slider").each(function(){
                    parent.EmptySectionSlider($(this));
                })
                html =htmldom.html();
            }

           // if(html.indexOf("custom-module") != -1){
           // }
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
            $source.val(cm.getValue());
        });

        jQuery('#code').data('CodeMirrorInstance', $htmlEditor); //Save instance
        /*** /CodeMirror ***/
  
      
    });

</script>


