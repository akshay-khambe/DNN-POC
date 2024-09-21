<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ArticleList.ascx.cs" Inherits="Cross.Modules.Article.View.ArticleList" %>
<%@ Register TagPrefix="Cross" Namespace="Cross.DNN.Common.WebControls" Assembly="Cross.Dnn.Modules.Framework" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.UI.WebControls" Assembly="DotNetNuke.Web.Deprecated" %>
<style type="text/css">
.CrossGrid th{
  text-align:center;
}
</style>
<script type="text/javascript">
    $(function () {
        var popupImages = '<%=PopupImages%>';
        //using fancy box plug-in to display related images as gallery when popupImages==true
        if (popupImages.toLowerCase() == "true") {
            /*
         *  Button helper. Disable animations, hide close button, change title type and content
         */
            var fancyboxClass='.'+'<%=GetFancyBoxClass()%>';
            $(fancyboxClass).fancybox({
              //  $('.fancybox-buttons').fancybox({
                openEffect: 'none',
                closeEffect: 'none',

                prevEffect: 'none',
                nextEffect: 'none',

                closeBtn: false,

                helpers: {
                    title: {
                        type: 'inside'
                    },
                    buttons: {}
                },

                afterLoad: function () {
                    this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
                }
            });
        }
    });
</script>
<!-- Basic Search table -->
<table width="100%" cellpadding="0" cellspacing="0" id="tblBasicSearch" runat="server"
    class="dnnFormItem" visible="false">
    <tr>
        <td>
            &nbsp; &nbsp;
            <asp:Label ID="lblSearchPrefix" runat="server" resourcekey="lblSearchPrefix"></asp:Label>
            <asp:TextBox ID="txtSearch" runat="server" MaxLength="30" Width='<%#Convert.ToInt32(Settings_List.Search_Basic.TitleInputWidth)%>'
                Columns="30"></asp:TextBox>
            <asp:Label ID="lblSortBy" runat="server" resourcekey="lblSortBy" Visible='<%# Settings_List.Search_Basic.ShowSortInSearch %>' />
            <asp:DropDownList ID="ddlSortField" runat="server" Width="200px" Visible='<%# Settings_List.Search_Basic.ShowSortInSearch %>'>
                <asp:ListItem Value="CreationDateDesc" resourcekey="li_SortField_CreationDateDesc" />
                <asp:ListItem Value="CreationDateAsc" resourcekey="li_SortField_CreationDateAsc" />
                <asp:ListItem Value="PublishDateDesc" resourcekey="li_SortField_PublishDateDesc" />
                <asp:ListItem Value="PublishDateAsc" resourcekey="li_SortField_PublishDateAsc" />
                <asp:ListItem Value="LastModifiedDateDesc" resourcekey="li_SortField_LastModifiedDateDesc" />
                <asp:ListItem Value="LastModifiedDateAsc" resourcekey="li_SortField_LastModifiedDateAsc" />
                <asp:ListItem Value="ViewsDesc" resourcekey="li_SortField_ViewsDesc" />
                <asp:ListItem Value="ViewsAsc" resourcekey="li_SortField_ViewsAsc" />
                <asp:ListItem Value="TitleDesc" resourcekey="li_SortField_TitleDesc" />
                <asp:ListItem Value="TitleAsc" resourcekey="li_SortField_TitleAsc" />
                 <asp:ListItem Value="EventStartDesc" resourcekey="li_SortField_EventStartDesc" />
                <asp:ListItem Value="EventStartAsc" resourcekey="li_SortField_EventStartAsc" />

                <asp:ListItem Value="EventEndDesc" resourcekey="li_SortField_EventEndDesc" />
                <asp:ListItem Value="EventEndAsc" resourcekey="li_SortField_EventEndAsc" />
            </asp:DropDownList>
            <asp:Label ID="lblPage" runat="server" resourcekey="lblPage" Visible='<%# Settings_List.Search_Basic.ShowPageInSearch %>' />
            <asp:DropDownList ID="ddlPage" runat="server" Width="80px" Visible='<%# Settings_List.Search_Basic.ShowPageInSearch %>' />
            <asp:Button ID="btnSearch" runat="server" resourcekey="btnSearch" CssClass="dnnPrimaryAction"
                CausesValidation="False" OnClick="btnSearch_Click"></asp:Button>&nbsp; &nbsp;
            <asp:Button ID="btnClear" runat="server" resourcekey="btnClear" CssClass="dnnSecondaryAction"
                CausesValidation="False" OnClick="btnClear_Click"></asp:Button>
        </td>
    </tr>
    <tr>
        <td>
            <hr style="border: 1px dotted #999999; size: 1" />
        </td>
    </tr>
</table>
<!-- Advanced search condition -->
<asp:Table ID="tblAdvancedSearchCondition" runat="server" Width="100%" CssClass="dnnFormItem"
     Visible="false">
    <asp:TableRow ID="trBuiltInField_Title" runat="server" Visible='<%#Settings_List.Search_Advanced.BuiltInField_Title %>'>
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_Title" runat="server" resourcekey="lblBuiltInField_Title"></asp:Label>
            <asp:DropDownList ID="ddlOper_Title" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="like" resourcekey="li_Oper_like" />
                <asp:ListItem Value="unlike" resourcekey="li_Oper_unlike" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="txtBuiltInField_Title" runat="server" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_Category" runat="server" Visible='<%#Settings_List.Search_Advanced.BuiltInField_Category %>'>
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_Category" runat="server" resourcekey="lblBuiltInField_Category"></asp:Label>
            <asp:DropDownList ID="ddlOper_Category" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="unequal" resourcekey="li_Oper_unequal" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="ddlBuiltInField_Category" runat="server" DataTextField="Name"
                DataValueField="Id" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>">
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_Author" runat="server" Visible='<%#Settings_List.Search_Advanced.BuiltInField_Author %>'>
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_Author" runat="server" resourcekey="lblBuiltInField_Author"></asp:Label>
            <asp:DropDownList ID="ddlOper_Author" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="unequal" resourcekey="li_Oper_unequal" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="ddlBuiltInField_Author" runat="server" DataTextField="UserName"
                DataValueField="UserId" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>">
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_CreatedDate" runat="server" Visible='<%#Settings_List.Search_Advanced.BuiltInField_CreatedDate %>'>
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_CreatedDate" runat="server" resourcekey="lblBuiltInField_CreatedDate"></asp:Label>
            <asp:DropDownList ID="ddlOper_CreatedDate" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="lessthan" resourcekey="li_Oper_lessthan" />
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="greaterthan" resourcekey="li_Oper_greaterthan" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <dnn:DnnDatePicker ID="ddpCreatedDate" runat="server" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>" />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_PublishDate" runat="server" Visible='<%#Settings_List.Search_Advanced.BuiltInField_PublishDate %>'>
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_PublishDate" runat="server" resourcekey="lblBuiltInField_PublishDate"></asp:Label>
            <asp:DropDownList ID="ddlOper_PublishDate" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="lessthan" resourcekey="li_Oper_lessthan" />
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="greaterthan" resourcekey="li_Oper_greaterthan" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <dnn:DnnDatePicker ID="ddpPublishDate" runat="server" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>" />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_ExpireDate" runat="server" Visible='<%#Settings_List.Search_Advanced.BuiltInField_ExpireDate %>'>
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_ExpireDate" runat="server" resourcekey="lblBuiltInField_ExpireDate"></asp:Label>
            <asp:DropDownList ID="ddlOper_ExpireDate" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="lessthan" resourcekey="li_Oper_lessthan" />
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="greaterthan" resourcekey="li_Oper_greaterthan" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <dnn:DnnDatePicker ID="ddpExpireDate" runat="server" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>" />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_EventStart" runat="server" Visible='<%#Settings_List.Search_Advanced.BuiltInField_EventStart %>'>
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_EventStart" runat="server" resourcekey="lblBuiltInField_EventStart"></asp:Label>
            <asp:DropDownList ID="ddlOper_EventStart" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="lessthan" resourcekey="li_Oper_lessthan" />
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="greaterthan" resourcekey="li_Oper_greaterthan" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <dnn:DnnDatePicker ID="ddpEventStart" runat="server" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>" />
        </asp:TableCell>
    </asp:TableRow>
     <asp:TableRow ID="trBuiltInField_EventEnd" runat="server" Visible='<%#Settings_List.Search_Advanced.BuiltInField_EventEnd %>'>
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_EventEnd" runat="server" resourcekey="lblBuiltInField_EventEnd"></asp:Label>
            <asp:DropDownList ID="ddlOper_EventEnd" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="lessthan" resourcekey="li_Oper_lessthan" />
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="greaterthan" resourcekey="li_Oper_greaterthan" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <dnn:DnnDatePicker ID="ddpEventEnd" runat="server" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>" />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_Views" runat="server" Visible='<%#Settings_List.Search_Advanced.BuiltInField_Views %>'>
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_Views" runat="server" resourcekey="lblBuiltInField_Views"></asp:Label>
            <asp:DropDownList ID="ddlOper_Views" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="greaterthan" resourcekey="li_Oper_greaterthan" />
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="lessthan" resourcekey="li_Oper_lessthan" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="txtBuiltInField_Views" runat="server" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>"
                Text="0"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Regularexpressionvalidator7" resourcekey="MustBeInteger"
                ForeColor="Red" runat="server" ValidationExpression="\d*" ControlToValidate="txtBuiltInField_Views"></asp:RegularExpressionValidator>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_RatingAverage" runat="server" Visible='<%#Settings_List.Search_Advanced.BuiltInField_RatingAverage %>'>
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_RatingAverage" runat="server" resourcekey="lblBuiltInField_RatingAverage"></asp:Label>
            <asp:DropDownList ID="ddlOper_RatingAverage" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="greaterthan" resourcekey="li_Oper_greaterthan" />
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="lessthan" resourcekey="li_Oper_lessthan" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="ddlBuiltInField_RatingAverage" runat="server" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>">
                <asp:ListItem Value="-1" resourcekey="None_Specified" />
                <asp:ListItem Value="1" />
                <asp:ListItem Value="2" />
                <asp:ListItem Value="3" />
                <asp:ListItem Value="4" />
                <asp:ListItem Value="5" />
                <asp:ListItem Value="6" />
                <asp:ListItem Value="7" />
                <asp:ListItem Value="8" />
                <asp:ListItem Value="9" />
                <asp:ListItem Value="10" />
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_Country" runat="server" Visible="false">
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_Country" runat="server" resourcekey="lblCountry"></asp:Label>
            <asp:DropDownList ID="ddlOper_Country" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="unequal" resourcekey="li_Oper_unequal" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="ddlBuiltInField_Country" runat="server" DataTextField="Name"
                AutoPostBack="True" OnSelectedIndexChanged="ddlBuiltInField_Country_SelectedIndexChanged"
                DataValueField="Id" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>">
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_State" runat="server" Visible="false">
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_State" runat="server" resourcekey="lblState"></asp:Label>
            <asp:DropDownList ID="ddlOper_State" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="unequal" resourcekey="li_Oper_unequal" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="ddlBuiltInField_State" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBuiltInField_State_SelectedIndexChanged"
                Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>">
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_City" runat="server" Visible="false">
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_City" runat="server" resourcekey="lblCity"></asp:Label>
            <asp:DropDownList ID="ddlOper_City" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="unequal" resourcekey="li_Oper_unequal" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="ddlBuiltInField_City" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBuiltInField_City_SelectedIndexChanged"
                Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>">
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="trBuiltInField_Town" runat="server" Visible="false">
        <asp:TableCell HorizontalAlign="Right" Width='<%# Convert.ToInt32(Settings_List.Search_Advanced.Width_Label) + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator) %>'>
            <asp:Label ID="lblBuiltInField_Town" runat="server" resourcekey="lblTown"></asp:Label>
            <asp:DropDownList ID="ddlOper_Town" runat="server" Width='<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator)%>'>
                <asp:ListItem Value="equal" resourcekey="li_Oper_equal" />
                <asp:ListItem Value="unequal" resourcekey="li_Oper_unequal" />
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="ddlBuiltInField_Town" runat="server" Width="<%#Convert.ToInt32(Settings_List.Search_Advanced.Width_Input)%>">
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>
<!-- Advanced search button -->
<table width="100%" cellpadding="0" cellspacing="0" id="tblAdvancedSearchButton"
     runat="server" class="dnnFormItem" visible="false">
    <tr>
        <td>
            <asp:Label ID="lblBuiltInField_Sort" runat="server" resourcekey="lblBuiltInField_Sort"
                Visible='<%# Settings_List.Search_Advanced.BuiltInField_Sort %>'></asp:Label>
            <asp:DropDownList ID="ddlBuiltInField_Sort" runat="server" Width="200px" Visible='<%# Settings_List.Search_Advanced.BuiltInField_Sort %>'>
                <asp:ListItem Value="CreationDateDesc" resourcekey="li_SortField_CreationDateDesc" />
                <asp:ListItem Value="CreationDateAsc" resourcekey="li_SortField_CreationDateAsc" />
                <asp:ListItem Value="PublishDateDesc" resourcekey="li_SortField_PublishDateDesc" />
                <asp:ListItem Value="PublishDateAsc" resourcekey="li_SortField_PublishDateAsc" />
                <asp:ListItem Value="LastModifiedDateDesc" resourcekey="li_SortField_LastModifiedDateDesc" />
                <asp:ListItem Value="LastModifiedDateAsc" resourcekey="li_SortField_LastModifiedDateAsc" />
                <asp:ListItem Value="ViewsDesc" resourcekey="li_SortField_ViewsDesc" />
                <asp:ListItem Value="ViewsAsc" resourcekey="li_SortField_ViewsAsc" />
                <asp:ListItem Value="TitleDesc" resourcekey="li_SortField_TitleDesc" />
                <asp:ListItem Value="TitleAsc" resourcekey="li_SortField_TitleAsc" />
            </asp:DropDownList>
            <asp:Label ID="lblBuiltInField_Paging" runat="server" resourcekey="lblBuiltInField_Paging"
                Visible='<%#Settings_List.Search_Advanced.BuiltInField_Paging %>'></asp:Label>
            <asp:DropDownList ID="ddlBuiltInField_Paging" runat="server" Width="80px" Visible='<%#Settings_List.Search_Advanced.BuiltInField_Paging %>' />
            <asp:Button ID="btnAdvancedSearch" runat="server" CssClass="dnnPrimaryAction" Width="60px"
                CausesValidation="false" ResourceKey="btnSearch" OnClick="btnAdvancedSearch_Click" />
            &nbsp; &nbsp;
            <asp:Button ID="btnAdvancedClear" runat="server" resourcekey="btnClear" CssClass="dnnSecondaryAction"
                CausesValidation="False" OnClick="btnAdvancedClear_Click" />
        </td>
    </tr>
    <tr>
        <td>
            <hr style="border: 1px dotted #999999; size: 1" />
        </td>
    </tr>
</table>
<!-- data list and data grid -->
<table width="100%" cellpadding="0" cellspacing="0"  align="left">
    <tr valign="top">
        <td valign="top" align="left" height="<%=GetHeight()%>">
            <% =GetMarqueeBegin()%>
            <asp:DataList ID="dlArticle" runat="server" RepeatColumns="<%#Settings_List.Paging.ColCount %>"
                RepeatDirection="Horizontal" RepeatLayout="table" Width="100%" Visible="false"
                OnItemDataBound="dlArticle_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' Visible="false">
                    </asp:Label>
                    <table  width="100%" border="0" cellpadding="0" cellspacing="1">
                        <%if (Settings_List.Image.ShowImage)
                          { %>
                        <tr align="left">
                            <td>
                                <asp:HyperLink ID="hlImage" runat="server" NavigateUrl='<%# GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title")))%>'
                                    Target="<%#Settings_List.General.LinkTarget%>" CssClass="<%#GetFancyBoxClass()%>" data-fancybox-group="<%#GetFancyBoxGroup()%>"
                                    Title='<%#Convert.ToString(Eval("Title")) %>'>
                                    <%if (Settings_List.Image.ForceImageWidth && Settings_List.Image.ForceImageHeight)
                                      { %>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_List.Image.ImageWidth)%>'
                                        Height='<%#Convert.ToInt32(Settings_List.Image.ImageHeight)%>' BorderStyle="Solid"
                                        BorderWidth="1" BorderColor="DarkGray" ID='imgArticle' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_List.Image.ForceImageWidth)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_List.Image.ImageWidth)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image1' ImageAlign="Left" />
                                    <%}
                                      else if (Settings_List.Image.ForceImageHeight)
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Height='<%#Convert.ToInt32(Settings_List.Image.ImageHeight)%>'
                                        BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image2' ImageAlign="Left" />
                                    <% }
                                      else
                                      {%>
                                    <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' BorderStyle="Solid" BorderWidth="1"
                                        BorderColor="DarkGray" ID='Image3' ImageAlign="Left" />
                                    <%} %>
                                </asp:HyperLink>
                            </td>
                        </tr>
                        <%} %>
                        <tr>
                            <td align="left" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgPrefix" runat="server" ImageUrl='<%#GetPrefixImage() %>' Visible="<%#Settings_List.Image.ShowPrefixImage &&!Settings_List.Image.ShowImage%>"
                                                ImageAlign="Middle" />
                                            <%if (Settings_List.Content.ShowFeaturedField)
                                              { %>
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/hot.jpg"
                                                Visible='<%#Convert.ToBoolean(Eval("Featured")) %>' />
                                            <%} %>

                                              <%if (Settings_List.Image.UseLightBoxEffect && Settings_List.Image.ShowImage)
                                                { %>
                                            <asp:Label ID="lblTitle" runat="server" Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                                Visible="<%#Settings_List.Content.ShowTitle %>" />
                                            <% }
                                                else
                                                {%>
                                            <asp:HyperLink ID="hlTitle" runat="server" Visible="<%#Settings_List.Content.ShowTitle %>"
                                                Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                                Target="<%#Settings_List.General.LinkTarget%>" />
                                            <%} %>

                                            <%if (Settings_List.Content.ShowPublishDate)
                                              { %>
                                            <asp:Label ID="Label3" runat="server" Text='<%# "("+Convert.ToDateTime( Eval("PublishDate")).ToShortDateString()+")"%>' />
                                            <%} %>
                                            <%if (Settings_List.Content.ShowRecommend)
                                              { %>
                                            <asp:Image ID="Image7" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/up.gif" />
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UpVotes") %>' />&nbsp;
                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/down.gif" />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DownVotes") %>' />&nbsp;
                                            <%} %>
                                        </td>
                                    </tr>
                                    <%if (Settings_List.Content.ShowUserName)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblUserName" runat="server" resourcekey="lblUserName" />
                                            <asp:HyperLink ID="hlUserName" runat="server" Text='<%# Eval("UserName") %>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                                Target="<%#Settings_List.General.LinkTarget%>" />&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <%} %>
                                    <%if (Settings_List.Content.ShowAuthorCompany)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAuthorCompany" runat="server" resourcekey="lblAuthorCompany" />
                                            <asp:HyperLink ID="hlAuthorCompany" runat="server" Text='<%# GetAuthorCompany(Convert.ToString(Eval("UserId"))) %>'
                                                NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>' Target="<%#Settings_List.General.LinkTarget%>" />
                                        </td>
                                    </tr>
                                    <%} %>
                                    <tr align="left">
                                        <td>
                                            <%if (Settings_List.Content.ShowAuthor && CurrentType.FieldEnable_Author)
                                              { %>
                                            <asp:Label ID="lblAuthor" runat="server" resourcekey="lblAuthor" />
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;
                                            <%} %>
                                            <%if (Settings_List.Content.ShowSource && CurrentType.FieldEnable_Source)
                                              { %>
                                            <asp:Label ID="lblSource" runat="server" resourcekey="lblSource" />
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Source") %>' />
                                            <%} %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <%if (Settings_List.Content.ShowViews)
                                              { %>
                                            <asp:Label ID="lblViews" runat="server" resourcekey="lblViews" />
                                            <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                                            <%} %>
                                            <%if (Settings_List.Content.ShowRating)
                                              { %>
                                            <asp:Image ID="imgRating" runat="server" ImageUrl='<%#GetRatingImage(Convert.ToString(Eval("Id"))) %>'>
                                            </asp:Image>
                                            <%} %>
                                        </td>
                                    </tr>
                                    <%if (Settings_List.Content.ShowLocation_Country && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCountry" runat="server" resourcekey="lblCountry" />
                                            <asp:Label ID="lblCountryData" runat="server" Text='<%#Eval("Country") %>' />
                                        </td>
                                    </tr>
                                    <%} %>
                                    <%if (Settings_List.Content.ShowLocation_State && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblState" runat="server" resourcekey="lblState" />
                                            <asp:Label ID="lblStateData" runat="server" Text='<%#Eval("State") %>' />
                                        </td>
                                    </tr>
                                    <%} %>
                                    <%if (Settings_List.Content.ShowLocation_City && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblCity" runat="server" resourcekey="lblCity" />
                                            <asp:Label ID="lblCityData" runat="server" Text='<%#Eval("City") %>' />
                                        </td>
                                    </tr>
                                    <%} %>
                                    <%if (Settings_List.Content.ShowLocation_Town && CurrentType.AllowLocation)
                                      { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTown" runat="server" resourcekey="lblTown" />
                                            <asp:Label ID="lblTownData" runat="server" Text='<%#Eval("Town") %>' />
                                        </td>
                                    </tr>
                                    <%} %>

                                      <%if (Settings_List.Content.ShowEventStart && CurrentType.FieldEnable_EventStart)
                                        { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblEventStart" runat="server" resourcekey="lblEventStart" />
                                            <asp:Label ID="lblEventStartData" runat="server" Text='<%#Eval("EventStart").ToString() %>' />
                                        </td>
                                    </tr>
                                    <%} %>

                                     <%if (Settings_List.Content.ShowEventEnd && CurrentType.FieldEnable_EventEnd)
                                        { %>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblEventEnd" runat="server" resourcekey="lblEventEnd" />
                                            <asp:Label ID="lblEventEndData" runat="server" Text='<%#Eval("EventEnd").ToString() %>' />
                                        </td>
                                    </tr>
                                    <%} %>

                                    <%if (Settings_List.Content.ShowSummary && CurrentType.FieldEnable_Summary)
                                      { %>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;<asp:Label ID="SummaryLabel" runat="server" Text='<%# GetShortenSummary(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Summary"))) %>'>
                                            </asp:Label>
                                        </td>
                                    </tr>
                                    <%} %>
                                    <tr>
                                        <td>
                                            <table runat="server" id="tblUserDefinedField" width="100%" border="0" cellspacing="0"
                                                cellpadding="0" class="Normal" align="left">
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:GridView ID="grArticle" runat="server" AutoGenerateColumns="False" Visible="False"
                CellPadding="4" AllowSorting="True" ForeColor="#333333" GridLines="Both" Width="100%"
                OnDataBinding="grArticle_DataBinding">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:HyperLink ID="hlImage" runat="server" Visible='<%#Settings_List.Image.ShowImage %>'
                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                Target="<%#Settings_List.General.LinkTarget%>" CssClass="<%#GetFancyBoxClass()%>" data-fancybox-group="<%#GetFancyBoxGroup()%>"
                                Title='<%#Convert.ToString(Eval("Title")) %>'>
                                <%if (Settings_List.Image.ForceImageWidth && Settings_List.Image.ForceImageHeight)
                                  { %>
                                <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_List.Image.ImageWidth)%>'
                                    Height='<%#Convert.ToInt32(Settings_List.Image.ImageHeight)%>' Visible='<%#Settings_List.Image.ShowImage %>'
                                    BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='imgArticle' ImageAlign="Middle" />
                                <%}
                                  else if (Settings_List.Image.ForceImageWidth)
                                  {%>
                                <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Width='<%#Convert.ToInt32(Settings_List.Image.ImageWidth)%>'
                                    Visible='<%#Settings_List.Image.ShowImage %>' BorderStyle="Solid" BorderWidth="1"
                                    BorderColor="DarkGray" ID='Image1' ImageAlign="Middle" />
                                <%}
                                  else if (Settings_List.Image.ForceImageHeight)
                                  {%>
                                <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Height='<%#Convert.ToInt32(Settings_List.Image.ImageHeight)%>'
                                    Visible='<%#Settings_List.Image.ShowImage %>' BorderStyle="Solid" BorderWidth="1"
                                    BorderColor="DarkGray" ID='Image2' ImageAlign="Middle" />
                                <% }
                                  else
                                  {%>
                                <asp:Image runat="server" ImageUrl='<%#Eval("Thumbnail")%>' Visible='<%#Settings_List.Image.ShowImage %>'
                                    BorderStyle="Solid" BorderWidth="1" BorderColor="DarkGray" ID='Image3' ImageAlign="Middle" />
                                <%} %>
                            </asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Recommend" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/up.gif" />
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UpVotes") %>' />&nbsp;
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/DesktopModules/CrossArticle/images/down.gif" />
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DownVotes") %>' />&nbsp;
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title" HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblTitleHead" resourcekey="lblTitleHead" runat="server"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <%if (Settings_List.Image.UseLightBoxEffect && Settings_List.Image.ShowImage)
                                { %>
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                Visible="<%#Settings_List.Content.ShowTitle %>" />
                            <% }
                                else
                                {%>
                            <asp:HyperLink ID="hlTitle" runat="server" Visible="<%#Settings_List.Content.ShowTitle %>"
                                Text='<%# Server.HtmlDecode(GetShortenTitle(Convert.ToString(Eval("Title")))) %>'
                                NavigateUrl='<%#GetNavigate(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Title"))) %>'
                                Target="<%#Settings_List.General.LinkTarget%>" />
                            <%} %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserName" HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblUserNameHead" resourcekey="lblUserNameHead" runat="server"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="hlUserName" runat="server" Text='<%#Eval("UserName")%>' NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>'
                                Target="<%#Settings_List.General.LinkTarget%>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lblAuthorCompanyHead" resourcekey="lblAuthorCompanyHead" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="hlAuthorCompany" runat="server" Text='<%# GetAuthorCompany(Convert.ToString(Eval("UserId"))) %>'
                                NavigateUrl='<%#GetUserNavigate(Convert.ToString(Eval("UserId"))) %>' Target="<%#Settings_List.General.LinkTarget%>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Author" HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblAuthorHead" resourcekey="lblAuthorHead" runat="server">Author</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="AuthorLabel" runat="server" Text='<%#Eval("Author")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblSourceHead" resourcekey="lblSourceHead" runat="server">Source</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="SourceLabel" runat="server" Text='<%#Eval("Source")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblRatingHead" resourcekey="lblRatingHead" runat="server"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Image ID="imgRating" runat="server" Visible="<%#Settings_List.Content.ShowRating %>"
                                ImageUrl='<%#GetRatingImage(Convert.ToString(Eval("Id"))) %>'></asp:Image>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblViewsHead" resourcekey="lblViewsHead" runat="server">Views</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lblCountry" resourcekey="lblCountryHead" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="CountryData" runat="server" Text='<%# Eval("Country") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lblState" resourcekey="lblStateHead" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="StateData" runat="server" Text='<%# Eval("State") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lblCity" resourcekey="lblCityHead" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="CityData" runat="server" Text='<%# Eval("City") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="lblTown" resourcekey="lblTownHead" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="TownData" runat="server" Text='<%# Eval("Town") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblFeaturedHead" resourcekey="lblFeaturedHead" runat="server">Featured</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkFeatured" runat="server" Checked='<%#Convert.ToBoolean(Eval("Featured")) %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblSummaryHead" resourcekey="lblSummaryHead" runat="server">Summary</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            &nbsp;&nbsp;<asp:Label ID="SummaryLabel" runat="server" Text='<%# GetShortenSummary(Convert.ToString(Eval("Id")),Convert.ToString(Eval("Summary")))%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblPublishDateHead" resourcekey="lblPublishDateHead" runat="server">Publish Date</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="PublishDateLabel" runat="server" Text='<%# Convert.ToDateTime( Eval("PublishDate")).ToShortDateString() %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                       <asp:TemplateField HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblEventStartHead" resourcekey="lblEventStartHead" runat="server">Event Start</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="EventStartLabel" runat="server" Text='<%#Eval("EventStart") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderStyle-HorizontalAlign="Center">
                        <HeaderTemplate>
                            <asp:Label ID="lblEventEndHead" resourcekey="lblEventEndHead" runat="server">Event End</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="EventEndLabel" runat="server" Text='<%# Eval("EventEnd") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <EditRowStyle BackColor="#999999" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" CssClass="CrossGrid" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <%=GetMarqueeEnd()%>
        </td>
    </tr>
    <tr>
        <td align="right" colspan="2">
            <asp:HyperLink ID="hlRss" Visible="<%#Settings_List.Rss.DisplayRss %>" runat="server"
                ImageUrl="~/DesktopModules/CrossArticle/Images/feed-icon-12x12.gif" CssClass="NormalBold"
                Target="_blank"></asp:HyperLink>
            <asp:HyperLink ID="hlMoreArticles" Visible="<%#Settings_List.MoreArticle.ShowMoreArticles %>"
                runat="server" resourcekey="MoreArticles" Text="More Articles..." CssClass="NormalBold"></asp:HyperLink>
        </td>
    </tr>
</table>
<!-- paging control -->
<table width="100%" cellpadding="1" cellspacing="1" runat="server" id="tblPaging"
    align="left" visible="false">
    <tr valign="top">
        <td width="100%">
            <hr style="border: 1px dotted #999999; size: 1" />
        </td>
    </tr>
    <tr valign="top">
        <td>
            <Cross:PagingControl ID="ctlPagingControl" runat="server" OnPageChanged="ctlPagingControl_PageChanged"
                Mode="PostBack"></Cross:PagingControl>
        </td>
    </tr>
</table>
