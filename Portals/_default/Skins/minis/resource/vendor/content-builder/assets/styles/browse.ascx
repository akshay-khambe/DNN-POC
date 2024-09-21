<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
   
    
    <div style="position:fixed;top:0;right:0;width:100%;z-index:2;">
        <select id="selStyles">
        </select>
    </div>

    <div id="divStyles">
    </div>

    <script src="<%= SkinPath %>../../../../js/jquery.min.js"></script> 
    <script>
        jQuery(document).ready(function ($) {
        
            var categories = jsonStyles.data.categories;
            for (var i = 0; i < categories.length; i++) {
                $('#selStyles').append('<option value="' + categories[i].id + '">' + categories[i].desc + '</option>');
            }
 
            var image_path =window.parent.image_path;


            var styles = jsonStyles.data.styles;
            for (var i = 0; i < styles.length; i++) {
                if($('#selStyles').val()==0){
                    if (styles[i].default) {
                        $('#divStyles').append('<div data-css="' + styles[i].css + '" data-sectioncss="' + styles[i].sectioncss + '" data-classname="' + styles[i].classname + '"><div>[' + (i+1) + '] ' + styles[i].caption + '</div><img src="<%= SkinPath %>' +image_path+styles[i].img + '" /></div>');
                    }
                } else {
                    $('#divStyles').append('<div data-css="' + styles[i].css + '" data-sectioncss="' + styles[i].sectioncss + '" data-classname="' + styles[i].classname + '"><div>[' + (i+1) + '] ' + styles[i].caption + '</div><img src="<%= SkinPath %>' +image_path+ styles[i].img + '" /></div>');
                }
            }

            $('#divStyles').append('<div data-css="" data-sectioncss="" data-classname=""><img src="<%= SkinPath %>'+image_path+'_clear.jpg" /></div>');

            $("#divStyles > div").click(function () {
                if(parent.jQuery('.is-section[class*="type-"]').length){
                    parent.jQuery(".is-wrapper").append('<link data-name="contentstyle" id="font-type-placeholder" />')
                }
                parent.applyTypography($(this).attr('data-classname'), $(this).attr('data-sectioncss'), $(this).attr('data-css'));
                parent.DNNapplyTypography = {
                    classname:$(this).attr('data-classname'),
                    sectioncss:$(this).attr('data-sectioncss'),
                    css:$(this).attr('data-css')	
                }
                parent.jQuery("#font-type-placeholder").remove();
           });

            $('#selStyles').on('change', function () {
                var catid = $(this).val();
                $('#divStyles').html('');
                
                if (catid == 0) {
                    //show default
                    for (var i = 0; i < styles.length; i++) {
                        if (styles[i].default) {
                            $('#divStyles').append('<div data-css="' + styles[i].css + '" data-sectioncss="' + styles[i].sectioncss + '" data-classname="' + styles[i].classname + '">' +
                                '<div>[' + (i+1) + '] ' + styles[i].caption + '</div>' +
                                '<img src="<%= SkinPath %>' +image_path+  styles[i].img + '" /></div>');
                        }
                    }
                }
                else if (catid == -1) {
                    //show all
                    for (var i = 0; i < styles.length; i++) {
                        $('#divStyles').append('<div data-css="' + styles[i].css + '" data-sectioncss="' + styles[i].sectioncss + '" data-classname="' + styles[i].classname + '">' +
                            '<div>[' + (i+1) + '] ' + styles[i].caption + '</div>' +
                            '<img src="<%= SkinPath %>' +image_path+  styles[i].img + '" /></div>');
                    }
                } else {
                    //show based on category
                    for (var i = 0; i < styles.length; i++) {
                        if (catid == styles[i].category) {
                            $('#divStyles').append('<div data-css="' + styles[i].css + '" data-sectioncss="' + styles[i].sectioncss + '" data-classname="' + styles[i].classname + '">' +
                                '<div>[' + (i+1) + '] ' + styles[i].caption + '</div>' +
                                '<img src="<%= SkinPath %>' + image_path+ styles[i].img + '" /></div>');
                        }
                    }
                }

                $('#divStyles').append('<div data-css="" data-sectioncss="" data-classname=""><img src="<%= SkinPath %>'+image_path+'_clear.jpg" /></div>');

                $("#divStyles > div").click(function () {
                    if(parent.jQuery('.is-section[class*="type-"]').length){
                        parent.jQuery(".is-wrapper").append('<link data-name="contentstyle" id="font-type-placeholder" />')
                       }
                    parent.applyTypography($(this).attr('data-classname'), $(this).attr('data-sectioncss'), $(this).attr('data-css'));
                    parent.DNNapplyTypography = {
                        classname:$(this).attr('data-classname'),
                        sectioncss:$(this).attr('data-sectioncss'),
                        css:$(this).attr('data-css')	
                    }
                    parent.jQuery("#font-type-placeholder");

                });

                $("#divStyles").animate({
                    scrollTop: 0
                }, 400);

            });

        });

    </script>


