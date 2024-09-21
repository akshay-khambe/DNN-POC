<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


    <label id="lblMP4" for="txtMP4" style="width:100%">Video URL:<br />
        <input id="txtMP4" class="inptext" type="text" style="width:100%;letter-spacing:0px;font-size:16px;" value="" />
    </label>
    <br />
    <label id="lblPoster" for="txtPoster" style="width:100%">Video Poster:
        <input id="txtPoster" class="inptext" type="text" style="width:100%;letter-spacing:0px;font-size:16px;" value="" />
    </label>
    <br />
    <label id="lblOverlay" for="txtOverlay">Overlay opacity:
        <input id="txtOverlay" class="inptext" type="text" style="width:80px;" value="0.25" />
    </label>
    
    <script src="<%= SkinPath %>../scripts/jquery.min.js"></script>

    <script>


        jQuery(document).ready(function ($) {

            var settings = getSettings();

            if (settings != 'undefined') {
                try {
                    var json = $.parseJSON(settings);
                    $(json).each(function (i, val) {
                        $.each(val, function (k, v) {
                            if (k == 'mp4') jQuery("#txtMP4").val(v);
                            if (k == 'poster') jQuery("#txtPoster").val(v);
                            if (k == 'overlay') jQuery("#txtOverlay").val(v);
                        });
                    });
                } catch (e) { }
            }

            jQuery('#txtMP4').on('blur', function () {
                construct();
            });

            jQuery('#txtPoster').on('blur', function () {
                construct();
            });

            jQuery('#txtOverlay').on('blur', function () {
                construct();
            });

            construct();
        });

        function construct() {
            var html = '<video class="is-video-bg" poster="' + jQuery("#txtPoster").val() + '" playsinline autoplay muted loop>' +
                    '<source src="' + jQuery("#txtMP4").val() + '" type="video/mp4">' +
                    '</video>' +
                    '<div class="is-overlay-video" style="opacity:' + jQuery("#txtOverlay").val() + '"></div>';
            setHtml(html);

            var settings = '[{"mp4":"' + jQuery("#txtMP4").val() + '","poster":"' + jQuery("#txtPoster").val() + '","overlay":' + jQuery("#txtOverlay").val() + '}]';
            setSettings(settings);
        }
        

        /* 
        COMMON METHODS FOR MODULE.
        */
        function getHtml() { 
            var $activeModule = parent.jQuery("[data-module-active]");
            return decodeURIComponent($activeModule.attr("data-html"));
        }

        function getSettings() {
            var $activeModule = parent.jQuery("[data-module-active]");
            return decodeURIComponent($activeModule.attr('data-settings'));
        }

        function setHtml(html) {
            parent.jQuery('#hidModuleCode').val(html);
        }

        function setSettings(settings) {
            parent.jQuery('#hidModuleSettings').val(settings);
        }

        function makeid() {//http://stackoverflow.com/questions/1349404/generate-a-string-of-5-random-characters-in-javascript
            var text = "";
            var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            for (var i = 0; i < 2; i++)
                text += possible.charAt(Math.floor(Math.random() * possible.length));

            var text2 = "";
            var possible2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            for (var i = 0; i < 5; i++)
                text2 += possible2.charAt(Math.floor(Math.random() * possible2.length));

            return text + text2;
        }
    </script>

