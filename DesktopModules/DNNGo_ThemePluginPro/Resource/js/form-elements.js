const c = require("../plugins/select2/select2.full.min");

var FormElements = function () {
    //function to initiate jquery.inputlimiter
    var runInputLimiter = function () {
        $('.limited').inputlimiter({
            remText: 'You only have %n character%s remaining...',
            remFullText: 'Stop typing! You\'re not allowed any more characters!',
            limitText: 'You\'re allowed to input %n character%s into this field.'
        });
    };
    //function to initiate query.autosize    
    var runAutosize = function () {
        $("textarea.autosize").autosize();
    };
    //function to initiate Select2
    var runSelect2 = function () {
                $(".search-select:not(.search-select-svg)").select2({
                    allowClear: true
                });
    };
    var formatIconResult = function (result, container, query, escapeMarkup) {
        if (!result.id) {
            return $("<b> " + result.text + " </b>");
        }
        console.log(result)
        return $("<span><em class='" + result.id + "'></em> " + result.text + "</span>");
    };
    var runIconPicker = function () {
        $(".search-select-icon").select2({
            allowClear: false,
            templateResult: formatIconResult,
            templateSelection: formatIconResult
        });
    };
    var formatSvgResult = function (result, container, query, escapeMarkup) {
        if (!result.id) {
            return $("<b> " + result.text + " "+ result.id +" </b>");
        }
        return $("<span>" + result.text + " "+ result.id + "</span>");
    };
    var runSvgPicker = function () {
/*        
        $(".search-select-svg").select2({
            allowClear: false,
            templateResult: formatSvgResult,
            templateSelection: formatSvgResult,
        })*/

    $(".search-select-svg").each(function(){
        var e = $(this);
        var id= "select2-selection" + Math.round(Math.random()*10000);
        var select2HTML = $('<span class="select2 select2-container select2-container--default" dir="ltr" style="width: 250px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-Ctl_Icons-container"><span class="select2-selection__rendered" title="== select icon =="><span class="select2-selection__clear">×</span>== select icon ==</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>');
        var select2HTMLcontainer = $('<span class="select2-container select2-container--default select2-container--open select2-container-dropdown" id="'+id+'"><span class="select2-dropdown selee.ct2-dropdown--below" dir="ltr" style="width: 250px;"><span class="select2-search select2-search--dropdown"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" role="textbox"></span><span class="select2-results"><ul class="select2-results__options" role="tree" aria-expanded="true" aria-hidden="false"></ul></span></span></span>');

        e.hide().wrap("<div class=\"custom-select2box\">").after(select2HTML);
        select2HTML.after(select2HTMLcontainer)
        e.find("option").each(function(){
            var o = this;
            select2HTMLcontainer.find(".select2-results__options").append("<li class=\"select2-results__option\" data-value=\""+o.text+"\"><span>" + o.value + " "+ o.text + "</span></li>")
            if(this.selected){
                select2HTML.find(".select2-selection__rendered").html("<span>"+ o.value + " "+ o.text+"</span>");
            }
        })
        select2HTML.find(".select2-selection__rendered").on("click",function(){
            select2HTMLcontainer.toggleClass("active")
        })
        select2HTMLcontainer.find(".select2-results__option").on("click",function(){
            select2HTMLcontainer.removeClass("active");
            var v = $(this).index();
            select2HTML.find(".select2-selection__rendered").html($(this).html());
            e.find("option[selected]").attr("selected",false);
            e.find('option').eq(v).attr("selected",true);
            e.change();
        })
        e.after("<style id=\"style-"+id+"\"></style>")
        var preventcaton;
        select2HTMLcontainer.find(".select2-search__field").on("change keyup",function(){
            clearTimeout(preventcaton);
            var sval = $(this).val();
            preventcaton = setTimeout(function() {
            if(sval){
                $("#style-"+id).html('#'+id+' li{ display:none }#'+id+' li[data-value*="'+sval+'"]{ display:block }')
                }else{
                    $("#style-"+id).html("");
                }
            },200)
        }) 
        $(document).click(function(ev){
            if($(ev.target).parents(".custom-select2box").length==0){
                select2HTMLcontainer.removeClass("active");
            }
        })
    })
        

    };
    //function to initiate jquery.maskedinput
    var runMaskInput = function () {
        $.mask.definitions['~'] = '[+-]';
        $('.input-mask-date').mask('99/99/9999');
        $('.input-mask-phone').mask('(999) 999-9999');
        $('.input-mask-eyescript').mask('~9.99 ~9.99 999');
        $(".input-mask-product").mask("a*-999-a999", {
            placeholder: " ",
            completed: function () {
                alert("You typed the following: " + this.val());
            }
        });
    };
    var runMaskMoney = function () {
        $(".currency").maskMoney();
    };
    //function to initiate bootstrap-datepicker
    var runDatePicker = function () {
        $('.date-picker').datepicker({
            autoclose: true
        });
    };
    //function to initiate bootstrap-timepicker
    var runTimePicker = function () {
        $('.time-picker').timepicker();
    };
    //function to initiate daterangepicker
    var runDateRangePicker = function () {
        $('.date-range').daterangepicker();
        $('.date-time-range').daterangepicker({
            timePicker: true,
            timePickerIncrement: 15,
            format: 'MM/DD/YYYY h:mm A'
        });
    };
    //function to initiate bootstrap-colorpicker
    var runColorPicker = function () {

        $('.color-picker-auto').colorpicker().on('changeColor', function (ev) {
            $(this).prev(".color-picker-box").css("background-color", ev.color.toHex());
        });
        $('.color-picker').colorpicker({
            format: 'hex'
        });
        $('.color-picker-rgba').colorpicker({
            format: 'rgba'
        });
        $('.colorpicker-component').colorpicker();

        
        $(document).ready(function() {
            $('.dng-color-picker').colorpicker().on("change", function () {
                $(this).siblings(".input-group-addon").css("background-color", $(this).val())
            });
        })    

    };
    //function to initiate bootstrap-colorpalette
    var runColorPalette = function () {
        $('.color-palette').colorPalette()
            .on('selectColor', function (e) {
                $('#selected-color1').val(e.color);
            });
    };
    //function to initiate jquery.tagsinput
    var runTagsInput = function () {
        $('#tags_1').tagsInput({
            width: 'auto'
        });
    };
    //function to initiate summernote
    var runSummerNote = function () {
        $('.summernote').summernote({
            height: 300,
            tabsize: 2
        });
    };
    return {
        //main function to initiate template pages
        init: function () {
            //            runInputLimiter();
            //            runAutosize();
            runSelect2();
            runIconPicker();
            runSvgPicker();
            //            runMaskInput();
            //            runMaskMoney();
            runDatePicker();
            runTimePicker();
            //            runDateRangePicker();
            runColorPicker();
            //            runColorPalette();
            //            runTagsInput();
            //            runSummerNote();

        }
    };
} ();