<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_ExtendOptions.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_ExtendOptions" %>
<!-- start: PAGE HEADER -->
<div class="row">
    <div class="col-sm-12">
        <!-- start: PAGE TITLE & BREADCRUMB -->
        <div class="page-header">
            <h1>
                 <i class="<%=ExtendConfig.Icon %>"></i> 
                <%--<%=ExtendConfig.Alias%>--%>
                <asp:Literal runat="server" ID="liExtendConfigAlias"></asp:Literal>
                <small><%--<%=ExtendConfig.Description%>--%><asp:Literal runat="server" ID="liExtendConfigDescription"></asp:Literal></small>

              <!--  <asp:HyperLink ID="hlProject" runat="server" CssClass="btn btn-xs btn-bricky" Text="<i class='fa fa-upload'></i> Theme Project" resourcekey="hlGlobalProject" ></asp:HyperLink>-->
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
          <div class="col-sm-<% Response.Write(IsRightLayout() ? 8 : 12); %>">
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
      
            <div class="row"> 
                <div class="col-sm-12"> 

                  <div class="form-group">
                         <asp:Button CssClass="btn btn-primary" lang="Submit" ID="cmdUpdate" resourcekey="cmdUpdate"
                            runat="server" Text="Update" OnClick="cmdUpdate_Click"></asp:Button>&nbsp;
                        <asp:Button CssClass="input_button btn" ID="cmdReset" resourcekey="cmdReset" runat="server"
                            Text="Reset" OnClick="cmdReset_Click" OnClientClick="CancelValidation();"  CausesValidation="False"></asp:Button>&nbsp;
                        
                        
                        </div>
                  </div>
            </div>

            </div>





          </div>






          <div class="col-sm-<% Response.Write(IsRightLayout() ? "4" : "0 hide"); %>">
          
           <asp:Repeater ID="RepeaterGroup" runat="server" OnItemDataBound="RepeaterGroup_ItemDataBound">
                <ItemTemplate>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-external-link-square"></i>
                            <%#Eval("key")%>
                            <div class="panel-tools">
                                <a href="#" class="btn btn-xs btn-link panel-collapse collapses"></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                                <asp:Repeater ID="RepeaterOptions" runat="server" OnItemDataBound="RepeaterOptions_ItemDataBound">
                                    <ItemTemplate>
                                        <div class="form-group  <%#Eval("CssClass")%>">
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

        $("#<%=cmdReset.ClientID %>").click(function () {
            if (confirm('<%=ViewResourceText("Reset_Confirm", "Are you sure to reset the theme settings?")%>')) {
                $("#setting-message-info-full").fadeIn();
                return true;
            }
            return false;
        });

        
    });
</script>