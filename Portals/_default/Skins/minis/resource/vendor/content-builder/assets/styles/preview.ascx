<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
   
    
    <div style="position:fixed;top:0;right:0;width:100%;z-index:2;">
        <select id="selStyles">
        </select>
    </div>

    <div id="divStyles">
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <script>
        jQuery(document).ready(function ($) {
        
            var categories = jsonStyles.data.categories;
            for (var i = 0; i < categories.length; i++) {
                $('#selStyles').append('<option value="' + categories[i].id + '">' + categories[i].desc + '</option>');
            }
 
            var styles = jsonStyles.data.styles;
            for (var i = 0; i < styles.length; i++) {
                if($('#selStyles').val()==0){
                    if (styles[i].default) {
                        $('#divStyles').append('<div data-css="' + styles[i].css + '"><div>[' + (i+1) + '] ' + styles[i].caption + '</div><img src="<%= SkinPath %>' + styles[i].img + '" /></div>');
                    }
                } else {
                    $('#divStyles').append('<div data-css="' + styles[i].css + '"><div>[' + (i+1) + '] ' + styles[i].caption + '</div><img src="<%= SkinPath %>' + styles[i].img + '" /></div>');
                }
            }

            $('#divStyles').append('<div data-css="content-000.css"><img src="<%= SkinPath %>000.jpg" /></div>');

            $("#divStyles > div").click(function () {
                parent.$.contentstyle.apply($(this).attr('data-css'));
            });

            $('#selStyles').on('change', function () {
                var catid = $(this).val();
                $('#divStyles').html('');
                
                if (catid == 0) {
                    //show default
                    for (var i = 0; i < styles.length; i++) {
                        if (styles[i].default) {
                            $('#divStyles').append('<div><div>[' + (i+1) + '] ' + styles[i].caption + '</div><img data-css="' + styles[i].css + '" src="<%= SkinPath %>' + styles[i].img + '" /></div>');
                        }
                    }
                }
                else if (catid == -1) {
                    //show all
                    for (var i = 0; i < styles.length; i++) {
                        $('#divStyles').append('<div><div>[' + (i+1) + '] ' + styles[i].caption + '</div><img data-css="' + styles[i].css + '" src="<%= SkinPath %>' + styles[i].img + '" /></div>');
                    }
                } else {
                    //show based on category
                    for (var i = 0; i < styles.length; i++) {
                        if (catid == styles[i].category) {
                            $('#divStyles').append('<div><div>[' + (i+1) + '] ' + styles[i].caption + '</div><img data-css="' + styles[i].css + '" src="<%= SkinPath %>' + styles[i].img + '" /></div>');
                        }
                    }
                }

                $('#divStyles').append('<div data-css="content-000.css"><img src="<%= SkinPath %>000.jpg" /></div>');

                $("#divStyles img").click(function () {
                    parent.$.contentstyle.apply($(this).attr('data-css'));
                });

                $("#divStyles").animate({
                    scrollTop: 0
                }, 400);

            });

        });

    </script>

