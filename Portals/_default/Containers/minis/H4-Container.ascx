<%@ Control AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>

<div class="H4-Container"> 
  <!--Container Title-->
  <div class="dnntitle">
  <h4><dnn:TITLE runat="server" id="dnnTITLE" CSSClass="title" /></h4>
  </div>
  <!--Container Title End--> 
  <!--Container Content-->
  <div class="contentmain">
    <div class="contentpane" id="ContentPane" runat="server"></div>
  </div>
  <!--Container Content End--> 
</div>



























