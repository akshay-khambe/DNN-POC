<%@ Control AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>

<div class="H1-Container"> 
  <!--Container Title-->
  <div class="dnntitle">
  <h1><dnn:TITLE runat="server" id="dnnTITLE" CSSClass="title" /></h1>
  </div>
  <!--Container Title End--> 
  <!--Container Content-->
  <div class="contentmain">
    <div class="contentpane" id="ContentPane" runat="server"></div>
  </div>
  <!--Container Content End--> 
</div>



























