<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserFileSelect.ascx.cs"
    Inherits="Cross.Modules.Article.View.UserFileSelect" %>
<asp:DropDownList ID="ddlFolderList" runat="server" Visible="false" 
    Width="300px" />
<table cellspacing="0" cellpadding="0" border="0" class="dnnFormItem" runat="server" id="tblControlBar"
    visible="false">
    <tr>
        <td style="width: 80px">
            <asp:Label ID="lblSource" runat="server" EnableViewState="False" resourcekey="lblSource"
                 />
        </td>
        <td>
            <asp:RadioButtonList runat="server" ID="rblControlBar" RepeatColumns="3" AutoPostBack="true"
                RepeatDirection="Horizontal" OnSelectedIndexChanged="rblControlBar_SelectedIndexChanged">
            </asp:RadioButtonList>
        </td>
    </tr>
</table>
<table cellspacing="0" cellpadding="0" border="0" class="dnnFormItem" id="tblFile" runat="server"
    visible="false">
    <tr>
        <td style="width: 80px">
            <asp:Label ID="lblFolder" runat="server" EnableViewState="False" resourcekey="lblFolder"
                 />
        </td>
        <td>
            <asp:DropDownList ID="ddlFolder" runat="server" AutoPostBack="True" 
                Width="300px" OnSelectedIndexChanged="ddlFolder_SelectedIndexChanged" />
        </td>
    </tr>
    <tr>
        <td style="width: 80px">
            <asp:Label ID="lblFile" runat="server" EnableViewState="False" resourcekey="lblFile"
                 />
        </td>
        <td>
            <asp:DropDownList ID="ddlFile" runat="server" DataTextField="Text" DataValueField="Value"
                 Width="300px" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:HyperLink ID="hlUpload" resourcekey="cmdUpload"  runat="server" CssClass="dnnSecondaryAction"
                Target="_blank" />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="btnRefresh" resourcekey="btnRefresh"  CssClass="dnnSecondaryAction"
                runat="server" CausesValidation="False" OnCommand="btnRefresh_Command" />
        </td>
    </tr>
</table>
<table cellspacing="0" cellpadding="0" border="0" class="dnnFormItem" id="tblUrl" runat="server"
    visible="false">
    <tr>
        <td style="width: 80px">
            <asp:Label ID="lblUrl" runat="server" EnableViewState="False" resourcekey="lblUrl"
                 />
        </td>
        <td>
            <asp:TextBox ID="txtUrl" runat="server" Width="300px" />
        </td>
    </tr>
</table>
<table cellspacing="0" cellpadding="0" border="0" class="dnnFormItem" id="tblEmbed" runat="server"
    visible="false">
    <tr valign="top">
        <td valign="middle" style="width: 80px">
            <asp:Label ID="lblEmbed" runat="server" EnableViewState="False" resourcekey="lblEmbed"
                 />
        </td>
        <td valign="top">
            <asp:TextBox ID="txtEmbed" runat="server" Width="300px" TextMode="MultiLine" Height="150px" />
        </td>
    </tr>
</table>
