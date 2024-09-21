#parse( "component/template.register.ascx" )
#parse( "component/template.css.ascx" )
#parse( "component/template.pageloaders.ascx" )


<div class="dng-main">
  <div class="soon-center">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="ContentPane" id="ContentPane" runat="server"></div>

            <div class="soon dng-countdown-box dg-comingsoon" data-due="${xf.ViewPageSetting("DateTime","2020-12-04T15:59")}" data-format="${xf.ViewPageSetting("format","d,h,m,s")}" data-layout="group label-uppercase label-big" data-face="slot roll" data-labels-years="Years"
                data-labels-months="Months" data-labels-weeks="Weeks" data-labels-days="Days" data-labels-hours="Hours" data-labels-minutes="Minutes" data-labels-seconds="Seconds" data-labels-milliseconds="Milliseconds" ></div>
                <script type="text/javascript">
                    $(".soon").attr("data-visual") && $(".soon").attr("data-visual",$(".soon").data("visual").replace(/#/g,''));
                    $(".soon").attr("data-format") && $(".soon").attr("data-format",$(".soon").attr("data-format").replace('MM','M'));
               </script>

            <div class="ComingSoonBottomPane" id="ComingSoonBottomPane" runat="server"></div>


          </div>
        </div>
      </div>
</div></div>
  #parse( "component/template.script.ascx" )
