<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_GlobalSettings.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_GlobalSettings" %>
<!-- start: PAGE HEADER -->
<div class="row">
    <div class="col-sm-12"> 
        <!-- start: PAGE TITLE & BREADCRUMB -->
          
        <div class="page-header">
        <h1>
            <i class="<%=GlobalConfig.Icon %>"></i> 
            <%--<%=ExtendConfig.Alias%>--%>
            <asp:Literal runat="server" ID="liExtendConfigAlias"></asp:Literal>
            <small><%--<%=ExtendConfig.Description%>--%><asp:Literal runat="server" ID="liExtendConfigDescription"></asp:Literal></small>
            </h1>
        </div>
        <!-- end: PAGE TITLE & BREADCRUMB --> 
    </div>
</div>
<!-- end: PAGE HEADER -->



<div class="row">
    <div class="col-sm-8">
         <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i><%=ViewResourceText("Title_AddFonts", "Google Fonts Settings")%>
                <div class="panel-tools">
                    <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                </div>
            </div>
            <div class="panel-body buttons-widget form-horizontal">

                <asp:TextBox ID="txtJsonFonts" runat="server" TextMode="MultiLine" CssClass="hide"></asp:TextBox>


                <div class="row form-group">
                    <%=ViewControlTitle("lblFontAlias", "Font Families", "txtFontAlias", ":", "col-sm-3 control-label")%>
                    <div class="col-sm-9">
                     
                        <div id="fonts-list-view"></div>
                    </div>
                </div>

               
            </div>
        </div>


         <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i><%=ViewResourceText("Title_AddFonts", "Custom Fonts Settings")%>
                <div class="panel-tools">
                    <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                </div>
            </div>
            <div class="panel-body buttons-widget form-horizontal">

                <div class="row form-group">
                    <%=ViewControlTitle("lblFontAlias", "Font Families", "txtFontAlias", ":", "col-sm-3 control-label")%>
                    <div class="col-sm-9">
                      <div id="custom-font-Control" data-href="<%=TemplateXF.ViewSelectImageModal("") %>">
                      <asp:TextBox ID="txtCustomFonts" runat="server" CssClass="hide CustomFont"></asp:TextBox>
                      </div>
                    </div>
                </div>

                
             
               
            </div>
        </div>





        <asp:Repeater ID="RepeaterGroupLeft" runat="server" OnItemDataBound="RepeaterGroup_ItemDataBound">
            <ItemTemplate>
                <div class="panel panel-default <%#ConditionCSS( Eval("Condition"))%>" <%#ConditionDATA( Eval("Condition"))%>>
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        <%#Eval("Name")%>
                        <div class="panel-tools">
                            <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <asp:Repeater ID="RepeaterOptions" runat="server" OnItemDataBound="RepeaterOptions_ItemDataBound">
                                <ItemTemplate>
                                    <div class="form-group <%#Eval("CssClass")%> <%#ConditionCSS( Eval("Condition"))%>" <%#ConditionDATA( Eval("Condition"))%>>
                                        <asp:Literal ID="liTitle" runat="server"></asp:Literal>
                                        <div class="col-sm-9">
                                            <asp:PlaceHolder ID="ThemePH" runat="server"></asp:PlaceHolder>
                                            <asp:Literal ID="liHelp" runat="server"></asp:Literal>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <!-- end: TEXT AREA PANEL -->
                </div>
            </ItemTemplate>
        </asp:Repeater>



    </div>

    <!--right html-->
    <div class="col-sm-4">

        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i><%=ViewResourceText("Title_PageInfo", "Basic Settings")%>
                <div class="panel-tools">
                    <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                </div>
            </div>
            <div class="panel-body buttons-widget">
                <ul class="Edit_List" id="accordion">
                   
                    <li>
                        <div id="ShowIconHost">
                            <p>
                                <i class="clip-cog"></i>&nbsp;<label for="<%=cbShowIconHost.ClientID %>"><%=ViewResourceText("Title_ShowIconHost", "Show Plugin Icon - Host")%>:</label> 
                                        
                                 &nbsp;
                                        <asp:CheckBox ID="cbShowIconHost" runat="server" CssClass="text-bottom" />
                                 
                                       
                            </p>
                        </div>
                    </li>
                    <li>
                        <div id="ShowIconAdmin">
                            <p>
                                <i class="clip-cog"></i>&nbsp;<label for="<%=cbShowIconAdmin.ClientID %>"><%=ViewResourceText("Title_ShowIconAdmin", "Show Plugin Icon - Admin")%>:</label> 
                                        &nbsp;
                                        <asp:CheckBox ID="cbShowIconAdmin" runat="server" CssClass="text-bottom" />
                            </p>
                        </div>
                    </li>
                    <li>
                        <div id="EnablePopUps">
                            <p>
                                <i class="clip-cog"></i>&nbsp;<label for="<%=cbEnablePopUps.ClientID %>"><%=ViewResourceText("Title_EnablePopUps", "Enable PopUps")%>:</label> 
                                        &nbsp;
                                        <asp:CheckBox ID="cbEnablePopUps" runat="server" CssClass="text-bottom" />
                            </p>
                        </div>
                    </li>
                </ul>
                <div class="row">
                    <br />
                    <div class="col-sm-5">
                            <div class="btn-group">
								<button data-toggle="dropdown" class="btn btn-purple dropdown-toggle">
									<i class="fa fa-wrench"></i>
									Initialization <span class="caret"></span>
								</button>
							    <ul class="dropdown-menu" role="menu">
								    <li role="presentation">
                                        <asp:LinkButton  ID="cmdReInit" resourcekey="cmdReInit" runat="server" Text="Module" CausesValidation="False" OnClick="cmdReInit_Click"  OnClientClick="CancelValidation();"></asp:LinkButton>
								    </li>
								    <li role="presentation">
									    <asp:LinkButton  ID="cmdReInitLayouts" resourcekey="cmdReInitLayouts" runat="server" Text="Layout" CausesValidation="False" OnClick="cmdReInitLayouts_Click"  OnClientClick="CancelValidation();"></asp:LinkButton>
								    </li>
							    </ul>
                            </div>
                            
                    </div>
                    <div class="col-sm-7 text_right">

                        <asp:Button CssClass="btn btn-primary btn-sm" lang="Submit" ID="cmdUpdate" resourcekey="cmdUpdate" runat="server" Text="Update" OnClick="cmdUpdate_Click"></asp:Button>


                        <asp:Button CssClass="btn btn-primary btn-sm" ID="cmdCancel" resourcekey="cmdCancel"
                            runat="server" Text="Cancel" CausesValidation="False" OnClick="cmdCancel_Click"
                            OnClientClick="CancelValidation();"></asp:Button>&nbsp;
                    </div>
                </div>
            </div>
        </div>



          
           <asp:Repeater ID="RepeaterGroupRight" runat="server" OnItemDataBound="RepeaterGroup_ItemDataBound">
                <ItemTemplate>
                    <div class="panel panel-default <%#ConditionCSS( Eval("Condition"))%>" <%#ConditionDATA( Eval("Condition"))%>>
                        <div class="panel-heading">
                            <i class="fa fa-external-link-square"></i>
                            <%#Eval("Name")%>
                            <div class="panel-tools">
                                <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                                <asp:Repeater ID="RepeaterOptions" runat="server" OnItemDataBound="RepeaterOptions_ItemDataBound">
                                    <ItemTemplate>
                                        <div class="form-group <%#Eval("CssClass")%> <%#ConditionCSS( Eval("Condition"))%>" <%#ConditionDATA( Eval("Condition"))%>>
                                            <asp:Literal ID="liTitle" runat="server"></asp:Literal>
                                            <div class="col-sm-9">
                                                <asp:PlaceHolder ID="ThemePH" runat="server"></asp:PlaceHolder>
                                                <asp:Literal ID="liHelp" runat="server"></asp:Literal>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <!-- end: TEXT AREA PANEL -->
                    </div>
                </ItemTemplate>
            </asp:Repeater>
          </div>
</div>







<div class="data-fonts" style="height:200px;overflow-y:scroll;"></div>

<script id="fonts-select-list" type="text/x-jquery-tmpl">
    <div class="fonts-select-list-item">
     <select class="form-control search-select-fonts"></select>
     <div class="fonts-select-subsets"></div>
     <div class="fonts-select-variants"></div>
     <div class="delete"><span class="fa fa-close"></span> </div>
    </div>
</script>
<script id="fonts-family-list" type="text/x-jquery-tmpl">
   <option value="${family}">${family}</option>
</script>



<script type="text/javascript">
    $(function ($) {

        var GetFonts = function () {

            var fontsData = $.jStorage.get("fonts");
         
            if(!(fontsData != 'undefined' && fontsData != null))
            {
                var agrs = {
                    key: "<%=GetSettingT<String>("GoogleFontAPI", "AIzaSyBUILExVNkdGbRS_2xjdRErTaFcUFOSBzY")%>",//AIzaSyBUILExVNkdGbRS_2xjdRErTaFcUFOSBzY
                 //   fields: ['family', 'variants', 'subsets'],
                    sort: "alpha"
                };

                $.getJSON("https://www.googleapis.com/webfonts/v1/webfonts", agrs, function (json) {
                    $.jStorage.set("fonts", json.items, { TTL: 1000 * 60 * 60 });//1 day expire
                    fontsData = json.items;
                    fonts = fontsData;
                     Fontsload();
                });

            }
            return fontsData;
        };
 

        $(".search-select-fonts").select2({
            placeholder: "Select a fonts",
            allowClear: true
        });
    
var fonts = GetFonts();    

        if(fonts){
            Fontsload();
        }

    function Fontsload(){


    var defaultfont= JSON.parse($("#<%= txtJsonFonts.ClientID %>").html());

        function addFontList(f){
            $.each(f, function (i, item) {
                    var fontItem = $("#fonts-select-list").tmpl(item);
                
                        fontItem.find(".search-select-fonts").append($("#fonts-family-list").tmpl(fonts));
                        fontItem.find('.search-select-fonts option[value="'+item.family+'"]').attr("selected","selected");
                     

                        $.each(fonts, function (i, item2) {
                            if (item.family == item2.family){
                                $.each(item2.subsets, function (i, subset) {
                                    fontItem.find(".fonts-select-subsets").append('<label><input name=\"subset\" type=\"checkbox\" value="' + subset + '" '+($.inArray( subset, item.subsets )!=-1?"checked":"")+' />' + subset + ' </label>');
                                });
                                $.each((item2.variants), function (i, variant) {
                                    fontItem.find(".fonts-select-variants").append('<label><input name=\"variant\" type=\"checkbox\" value="' + variant + '" '+($.inArray( variant, item.variants )!=-1?"checked":"")+' />' + variant + ' </label>');
                                });
                                return;
                            }
                        });
                        fontItem.find(".delete").on("click",function(){
                           fontItem.remove();
                        })

                    fontItem.appendTo('#fonts-list-view');

                    fontItem.find(".search-select-fonts").select2({
                        placeholder: "Select a fonts",
                        allowClear: true
                    });

                });
        }

        addFontList(defaultfont);
 
        var addFont = $("<div class=\"addFont btn btn-primary btn-sm\">Add Font</div>");

        $("#fonts-list-view").after(addFont);
        addFont.on("click",function(){addFontList( [{family: "ABeeZee"}]) })


        $("#fonts-list-view").on("change",".search-select-fonts", function () {
            var fonts = GetFonts();
            var e =  $(this);
            var family = e.val();
            console.log("aaa:", fonts);

             e.siblings(".fonts-select-subsets").empty();
               e.siblings(".fonts-select-variants").empty();
            $.each(fonts, function (i, item) {
                if (family == item.family)
                {
                    $.each(item.subsets, function (i, subset) {
                        e.siblings(".fonts-select-subsets").append('<label><input name=\"subset\" type=\"checkbox\" value="' + subset + '" />' + subset + ' </label>');
                    });
                    $.each(item.variants, function (i, variant) {
                        e.siblings(".fonts-select-variants").append('<label><input name=\"variant\" type=\"checkbox\" value="' + variant + '" />' + variant + ' </label>');
                    });


                    return;
                }

            });

        });

        function collectionFontData(){
            var  collectionFont = [];

            $("#fonts-list-view .fonts-select-list-item").each(function(){
                var e= $(this);
               
                var family = e.find(".search-select-fonts").val();
                var subsets =[];
                var variants=[];
                e.find('.fonts-select-subsets [type="checkbox"]').each(function(){
                    if($(this).is(":checked")){
                        subsets.push($(this).val());
                    }
                })
                e.find('.fonts-select-variants [type="checkbox"]').each(function(){
                    if($(this).is(":checked")){
                        variants.push($(this).val());
                    }
                })
                var d ={family: family};

                if(subsets.length) d["subsets"] = subsets ;
                if(variants.length) d["variants"] = variants ;
                collectionFont.push(d)
            })
            return collectionFont;
        
        } 
      $("#<%=cmdUpdate.ClientID %>").on("click",function(){
          var currentFont =collectionFontData();
          $("#<%= txtJsonFonts.ClientID %>").html(JSON.stringify(currentFont))
      })



    }



    });
</script>




