<%@ control language="C#" autoeventwireup="true" inherits="Cross.Modules.Article.View.ContentLocalize_Article, App_Web_contentlocalize_article.ascx.6c70b780" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx" %>
<script type="text/javascript">

    function addTag() {
        var tag = document.getElementById("<%=ddlPopularTag.ClientID%>").value;
        var allTag = $(":text[id*='txtTag']").get();
        for (var i = 0; i < allTag.length; i++) {
            if (allTag[i].value == "") {
                allTag[i].value = tag;
                break;
            }
        }
        return false;
    }

    $(function () {

        $("#tabs").tabs();
        $("#tabs").tabs(
         {
             activate: function (event, ui) {
                 //Get or set the active option, after initialization:
                 var currentActive = $("#tabs").tabs("option", "active");
                 //set it to a hidden field
                 $("#<%= hidLastTab.ClientID %>").attr("value", currentActive.toString());
             }
         });

        var currTab = $("#<%= hidLastTab.ClientID %>").val();
        if (!isNaN(parseInt(currTab)))//if current value is number, then parse it as integer
        {
            currTab = parseInt(currTab);
        }

        $("#tabs").tabs({ active: currTab });

    });
</script>
<asp:HiddenField runat="server" ID="hidLastTab" Value="0" />
<table width="100%" class="dnnFormItem" runat="server" id="tblButton">
    <tr>
        <td align="center">
            <asp:Label ID="lblSelectTargetLanguage" runat="server" resourcekey="lblSelectTargetLanguage" />
            <asp:DropDownList ID="ddlTargetLanguage" runat="server" Width="300px" AutoPostBack="True"
                OnSelectedIndexChanged="ddlTargetLanguage_SelectedIndexChanged" />
            <asp:Image ID="imgTargetLanguage" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <dnn:CommandButton ID="btnUpdate" runat="server" ResourceKey="cmdUpdate" ImageUrl="~/images/save.gif"
                OnCommand="btnUpdate_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a onclick="window.opener=null" href="javascript:window.close()">
                <img alt="" id="Img10" runat="server" src="~/DesktopModules/CrossArticle/images/delete.gif" />
                <asp:Label ID="lblClosePage" runat="server" ResourceKey="lblClosePage" />
            </a>
        </td>
    </tr>
</table>
<div id="divProductDetail" runat="server">
    <div class="dnnFormItem dnnFormHelp dnnClear">
        <p align="right">
            <span>
                <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg" />
                <%=LocalizeString("RequiredFields")%>
            </span>
        </p>
    </div>
    <div id="tabs" style="width: 100%; overflow: hidden">
        <ul>
            <li id="Li1" runat="server"><a href="#divBasic"><span>
                <%#Localization.GetString("divBasic", LocalResourceFile)%></span></a> </li>
           
            <li><a href="#divTag"><span>
                <%#Localization.GetString("divTag", LocalResourceFile)%></span></a> </li>
            
            <%if (CurrentType.FieldEnable_Article)
              {%>
            <li><a href="#divDescription"><span>
                <%#Localization.GetString("divDescription", LocalResourceFile)%></span></a>
            </li>
            <%} %>
                 
            <%if (CurrentType.EnableField1)
              {%>
            <li><a href="#divField1"><span>
                <%#CurrentType.Field1Title%></span></a> </li>
            <%} %>
            <%if (CurrentType.EnableField2)
              {%>
            <li><a href="#divField2"><span>
                <%#CurrentType.Field2Title%></span></a> </li>
            <%} %>
            <%if (CurrentType.EnableField3)
              {%>
            <li><a href="#divField3"><span>
                <%#CurrentType.Field3Title%></span></a> </li>
            <%} %>
            <%if (CurrentType.EnableField4)
              {%>
            <li><a href="#divField4"><span>
                <%#CurrentType.Field4Title%></span></a> </li>
            <%} %>
            <%if (CurrentType.EnableField5)
              {%>
            <li><a href="#divField5"><span>
                <%#CurrentType.Field5Title%></span></a> </li>
            <%} %>
        </ul>
        <div id="divBasic" class="dnnFormItem" style="height: 100%">
            <table cellspacing="0" cellpadding="2" width="100%" border="0">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" resourcekey="Tip_ContentLocalize" CssClass="dnnFormMessage dnnFormInfo"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td style="width: 150px">
                        <dnn:Label ID="plTitle" runat="server"/>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server"  Width="800px"/>
                        <asp:Image ID="Image1" runat="server"
                            ImageUrl="~/DesktopModules/CrossArticle/images/required.jpg" ToolTip="Reuired"
                            AlternateText="Required" />
                        <asp:RequiredFieldValidator ID="varTitle" runat="server" CssClass="NormalRed" resourcekey="Required"
                            Display="Dynamic" ControlToValidate="txtTitle">* Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
             
                <tr>
                    <td>
                        <dnn:Label ID="plSubTitle" runat="server"/>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubTitle"  runat="server" Width="800px"/>
                    </td>
                </tr>
             
              
                <tr>
                    <td>
                        <dnn:Label ID="plImageDescription" runat="server"/>
                    </td>
                    <td>
                        <asp:TextBox ID="txtImageDescription"  runat="server" Width="800px"/>
                    </td>
                </tr>
            
                <%if (CurrentType.FieldEnable_Summary)
                  {%>
                <tr>
                    <td >
                        <dnn:Label ID="plSummary" runat="server" />
                    </td>
               
                    <td>
                        <asp:TextBox ID="txtSummary" Width="100%" Height="200px" runat="server" TextMode="MultiLine" />
                    </td>
                </tr>
                <%} %>
                 <tr>
                    <td colspan="2">
                        <asp:Table ID="tblUDT" runat="server" Width="100%" Visible="false" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="divTag" class="dnnFormItem" style="height: 100%">
            <table cellspacing="0" cellpadding="2" width="100%" border="0">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblTagTip" runat="server" resourcekey="Tip_Tag" CssClass="dnnFormMessage dnnFormInfo" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtTag1" Width="300px" runat="server" Visible="true" /><br />
                        <asp:TextBox ID="txtTag2" Width="300px" runat="server" /><br />
                        <asp:TextBox ID="txtTag3" Width="300px" runat="server" /><br />
                        <asp:TextBox ID="txtTag4" Width="300px" runat="server" /><br />
                        <asp:TextBox ID="txtTag5" Width="300px" runat="server" /><br />
                        <asp:TextBox ID="txtTag6" Width="300px" runat="server" /><br />
                        <asp:TextBox ID="txtTag7" Width="300px" runat="server" /><br />
                        <asp:TextBox ID="txtTag8" Width="300px" runat="server" /><br />
                        <asp:TextBox ID="txtTag9" Width="300px" runat="server" /><br />
                        <asp:TextBox ID="txtTag10" Width="300px" runat="server" />
                    </td>
                </tr>
                <tr align="left">
                    <td style="width: 150px">
                        <asp:Label ID="lblPopularTag" runat="server" resourcekey="lblPopularTag"/>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlPopularTag" runat="server" Width="300px" DataTextField="Tag"
                            DataValueField="Tag">
                        </asp:DropDownList>
                        <asp:LinkButton ID="lbtnAddTag" runat="server" resourcekey="lbtnAddTag" CssClass="CommandButton"
                            OnClientClick="addTag();return false;"></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
        <%if (CurrentType.FieldEnable_Article)
          {%>
        <div id="divDescription" class="dnnFormItem" style="height: 100%">
            <table id="tblDescription" cellspacing="0" cellpadding="2" width="100%" border="0"
                runat="server">
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtDescription" Width="100%" Height="600px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <%} %>
     
        <%if (CurrentType.EnableField1)
          {%>
        <div id="divField1" class="dnnFormItem" style="height: 100%">
            <table id="tblField1" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server">
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtField1" Width="100%" Height="600px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <%} %>
        <%if (CurrentType.EnableField2)
          {%>
        <div id="divField2" class="dnnFormItem" style="height: 100%">
            <table id="tblField2" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server">
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtField2" Width="100%" Height="600px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <%} %>
        <%if (CurrentType.EnableField3)
          {%>
        <div id="divField3" class="dnnFormItem" style="height: 100%">
            <table id="tblField3" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server">
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtField3" Width="100%" Height="600px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <%} %>
        <%if (CurrentType.EnableField4)
          {%>
        <div id="divField4" class="dnnFormItem" style="height: 100%">
            <table id="tblField4" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server">
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtField4" Width="100%" Height="600px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <%} %>
        <%if (CurrentType.EnableField5)
          {%>
        <div id="divField5" class="dnnFormItem" style="height: 100%">
            <table id="tblField5" cellspacing="0" cellpadding="2" width="100%" border="0" runat="server">
                <tr>
                    <td colspan="2">
                        <dnn:TextEditor ID="txtField5" Width="100%" Height="600px" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
        <%} %>
    </div>
</div>
