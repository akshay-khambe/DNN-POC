﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_PageOptions.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_PageOptions" %>
<!-- start: PAGE HEADER -->
<div class="row">
    <div class="col-sm-12">
        <!-- start: PAGE TITLE & BREADCRUMB -->
        <div class="page-header">
            <h1>
                 <i class="<%=PageConfig.Icon %>"></i> 
                <%--<%=ExtendConfig.Alias%>--%>
                <asp:Literal runat="server" ID="liPageConfigAlias"></asp:Literal>
             <!--   <small><%--<%=ExtendConfig.Description%>--%><asp:Literal runat="server" ID="liPageConfigDescription"></asp:Literal></small>-->

               <asp:HyperLink ID="hlProject" runat="server" CssClass="btn btn-xs btn-bricky btn-project"  data-toggle="modal" Text="<i class='fa fa-upload'></i> Page Type" resourcekey="hlPageProject"  NavigateUrl="#PageProjects_Modal" ></asp:HyperLink>
            </h1>

            <div class="" runat="server" id="DIVProject" visible="false">
                <p>
                    <i class="clip-atom-3"></i>&nbsp;<%=ViewResourceText("Title_ProjectName", "Project Name")%>:<asp:Literal runat="server" ID="LIProjectName"></asp:Literal>
                </p>
            </div>
        </div>
        <!-- end: PAGE TITLE & BREADCRUMB -->
    </div>
</div>
<!-- end: PAGE HEADER -->



        <div class="row"> 
          <!-- start: PAGE CONTENT -->
          <div class="col-sm-8">
            <ul id="myTab_ul_tabs" class="myTab_ul_tabs ul_tabs nav nav-tabs tab-bricky">
              <asp:Literal runat="server" ID="liNavTabsHTML_Left"></asp:Literal>
            </ul>
            <div class="tab-content tab_left">
            
                <asp:Repeater ID="RepeaterCategories_Left" runat="server" OnItemDataBound="RepeaterCategories_ItemDataBound">
                    <ItemTemplate>

                     <div class="tab-pane <%#(Container.ItemIndex==1)?"in active":""%>" id="tabs-Left-<%#FormatName( Eval("Key"))%>">
                        <div id="accordion<%#FormatName( Eval("Key"))%>">
                          <asp:Repeater ID="RepeaterGroup" runat="server" OnItemDataBound="RepeaterGroup_ItemDataBound">
                            <ItemTemplate>
                                 <div class="panel panel-default small-bottom <%#ConditionCSS( Eval("Condition"))%>" <%#ConditionDATA( Eval("Condition"))%>>
                                    <div class="panel-heading"> <i class="fa fa-external-link-square"></i> <%# Eval("Name")%>
                                      <div class="panel-tools"> <a class="btn btn-xs btn-link panel-collapse collapses" data-toggle="collapse"  href="#options_<%#FormatName( Eval("Name"))%>"></a> </div>
                                    </div>
                                    <div id="options_<%#FormatName( Eval("Name"))%>" class="panel-collapse collapse <%#(Container.ItemIndex==0)?"in":""%>">
                                      <div class="panel-body">
                                        <div class="form-horizontal  form-patch"> 
                                            <asp:Repeater ID="RepeaterOptions" runat="server" OnItemDataBound="RepeaterOptions_ItemDataBound">
                                                <ItemTemplate>
                                                      <div class="form-group <%#Eval("CssClass")%> <%#ConditionCSS( Eval("Condition"))%>" <%#ConditionDATA( Eval("Condition"))%>>
                                                        <asp:Literal ID="liTitle" runat="server"></asp:Literal>
                                                        <div class="controls col-sm-9">
                                                            <asp:PlaceHolder ID="ThemePH" runat="server"></asp:PlaceHolder>
                                                            <asp:Literal ID="liHelp" runat="server"></asp:Literal>
                                                        </div>
                                                      </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            </div>
                                         </div>
                                    </div>
                                  </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                  </div>
                 </ItemTemplate>
                </asp:Repeater>
      
 

            </div>





          </div>






          <div class="col-sm-4">
          
               <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i><%=ViewResourceText("Title_PageInfo", "Page Info")%>
                        <div class="panel-tools">
                            <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                        </div>
                    </div>
                    <div class="panel-body buttons-widget">
                        <ul class="Edit_List" id="accordion">
                            <li>
                                <p>
                                    <i class="clip-note"></i>&nbsp;<%=ViewResourceText("Title_TabName", "Tab Name")%>: 
                                      <%=EditTabItem.TabName%>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <i class="clip-book"></i>&nbsp;<%=ViewResourceText("Title_TabTitle", "Title")%>: 
                                    <%=EditTabItem.Title %>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <i class="clip-globe"></i>&nbsp;<%=ViewResourceText("Title_ThemeType", "Page Type")%>: 
                                    <%=TemplateName%>
                                </p>
                            </li>
                            <%if (!String.IsNullOrEmpty(ProjectName)){ %>
                            <li>
                                <p>
                                    <i class="clip-atom-3"></i>&nbsp;<%=ViewResourceText("Title_ProjectName", "Project Name")%>: 
                                    <%=ProjectConfig.Alias%>
                                </p>
                            </li>
                             <%} %>
                             <li>
                                <p>
                                    <i class="clip-stopwatch"></i>&nbsp;<%=ViewResourceText("Title_CreatedOnDate", "Created On Date")%>: 
                                    <%=EditTabItem.CreatedOnDate%>
                                </p>
                            </li>

                            <li>
                                <div id="Enable">
                                    <p>
                                        <i class="clip-t-shirt"></i>&nbsp;<label for="<%=cbEnable.ClientID %>"><%=ViewResourceText("Title_Enable", "Enable Custom Theme")%>:</label> 
                                          
                                            &nbsp;    <asp:CheckBox ID="cbEnable" runat="server" CssClass="text-bottom" />
                                          
                                       
                                   </p>
                                </div>
                            </li>


                        </ul>
                        <div class="row">
                            <br />
                            <div class="col-sm-5">
                            
                            </div>
                            <div class="col-sm-7 text_right">
                                <asp:Button CssClass="btn btn-primary btn-sm" lang="Submit" ID="cmdUpdate" resourcekey="cmdUpdate"
                                    runat="server" Text="Update" OnClick="cmdUpdate_Click"></asp:Button>&nbsp;
                                <asp:Button CssClass="btn btn-primary btn-sm" ID="cmdReset" resourcekey="cmdReset"
                                    runat="server" Text="Reset" CausesValidation="False" OnClick="cmdReset_Click"
                                    OnClientClick="CancelValidation();"></asp:Button>&nbsp;
                            </div>
                        </div>
                    </div>
                </div>

               


             <asp:Repeater ID="RepeaterGroup" runat="server" OnItemDataBound="RepeaterGroup_ItemDataBound">
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

        <!-- end: PAGE CONTENT--> 




<div id="PageProjects_Modal" class="modal fade" tabindex="-1" data-width="90%" data-height="800px" style="display: none;">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
            &times;
        </button>
        <h4 class="modal-title">Page Type</h4>
    </div>
    <div class="modal-body">
        <iframe id="PageProjects_Iframe" width="100%" height="100%" style="border-width: 0px;">
        </iframe>
    </div>
</div>





<script type="text/javascript">
    jQuery(function ($) {
        $("#myTab_ul_tabs_Left li a").click(function () { $.cookie("RepeaterCategories_Left", $(this).attr("href")); $.cookie("RepeaterGroup_Left", ""); });
        $(".tab_left").find("div.panel-tools a.panel-collapse").click(function () { $.cookie("RepeaterGroup_Left", $(this).attr("href")); });

        var Categories_Left = $.cookie("RepeaterCategories_Left");
        var Group_Left = $.cookie("RepeaterGroup_Left");

        if (Categories_Left != undefined && Categories_Left !== "") {
            $(".tab_left").find("div.tab-pane").removeClass("in").removeClass("active");
            $(".tab_left").find(Categories_Left).addClass("in").addClass("active");
            $("#myTab_ul_tabs_Left li").removeClass("active");
            $("#myTab_ul_tabs_Left li a[href='" + Categories_Left + "']").parent().addClass("active");

        }

        if (Group_Left != undefined && Group_Left !== "") {
            $(".tab_left").find(Group_Left).parents("div.tab-pane").find("div.panel-collapse").removeClass("in");
            $(".tab_left").find(Group_Left).addClass("in");
        }


        $("a.btn-project").click(function () {
            console.log($(this).html());
         $("#PageProjects_Iframe").attr("src", $(this).attr("data-href"));
     });

    });


    var HideModaleProjects = function (link) {
        $('#PageProjects_Modal').modal('hide');
        location.href = link;
    };

</script>
