﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View_Index.ascx.cs"  Inherits="DNNGo.Modules.PowerForms.View_Index" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
 




<asp:Panel ID="plLicense" runat="server">
<asp:PlaceHolder ID="phScript" runat="server"></asp:PlaceHolder>



<div id="phContainer<%=ModuleId %>" class="validationEngineContainer form_div_<%=ModuleId %>">

    <asp:PlaceHolder  ID="phContainer" runat="server"></asp:PlaceHolder>
 
</div>

 <script type="text/javascript">
     jQuery(function (q) {
         var Async_validationEngine<%=ModuleId %> = setInterval(function(){
        if("function" == typeof $(document).validationEngine){
         q(".form_div_<%=ModuleId %>").validationEngine({
             promptPosition: '<%=ViewXmlSetting("promptPosition","topRight") %>',
             ajaxFormValidationURL: '<%=ModulePath %>ajaxValidate.aspx?ModuleID=<%=ModuleId %>'
         });

         q(".form_div_<%=ModuleId %> input[data-verify='Submit']").click(function () {

             if (!$('.form_div_<%=ModuleId %>').validationEngine('validate')) {
                 return false;
             }

             if($("#g-recaptcha-<%=ModuleId %>").is("div") )
             {
                 if ( !$("#g-recaptcha-<%=ModuleId %>").data("GRecaptcha"))
                 {
                     $("#g-recaptcha-msg-<%=ModuleId %>").show("fast",function(){
                         $(this).fadeOut(5000);
                     });
                     return false;
                 }
             }
             
             

         });

         q(".form_div_<%=ModuleId %> input[data-verify='reset']").click(function () {
             $('.form_div_<%=ModuleId %>').validationEngine('hideAll');
         });

        clearInterval(Async_validationEngine<%=ModuleId %>);
        }
        },100)







     });
</script>

</asp:Panel>
<asp:Panel ID="pnlTrial" runat="server">
    <center>
        <asp:Literal ID="litTrial" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="lblMessages" runat="server" CssClass="SubHead" resourcekey="lblMessages"
            Visible="false" ForeColor="Red"></asp:Label>
    </center>
</asp:Panel>


