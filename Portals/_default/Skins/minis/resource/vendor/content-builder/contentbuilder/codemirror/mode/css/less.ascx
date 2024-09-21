<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!doctype html>

<title>CodeMirror: LESS mode</title>
<meta charset="utf-8"/>
<link rel=stylesheet href="<%= SkinPath %>../../doc/docs.css">

<link rel="stylesheet" href="<%= SkinPath %>../../lib/codemirror.css">
<script src="<%= SkinPath %>../../lib/codemirror.js"></script>
<script src="<%= SkinPath %>../../addon/edit/matchbrackets.js"></script>
<script src="<%= SkinPath %>css.js"></script>
<style>.CodeMirror {border: 1px solid #ddd; line-height: 1.2;}</style>
<div id=nav>
  <a href="http://codemirror.net"><h1>CodeMirror</h1><img id=logo src="<%= SkinPath %>../../doc/logo.png"></a>

  <ul>
    <li><a href="<%= SkinPath %>../../index.html">Home</a>
    <li><a href="<%= SkinPath %>../../doc/manual.html">Manual</a>
    <li><a href="https://github.com/codemirror/codemirror">Code</a>
  </ul>
  <ul>
    <li><a href="<%= SkinPath %>../index.html">Language modes</a>
    <li><a class=active href="<%= SkinPath %>#">LESS</a>
  </ul>
</div>

<article>
<h2>LESS mode</h2>
<form><textarea id="code" name="code">@media screen and (device-aspect-ratio: 16/9) { … }
@media screen and (device-aspect-ratio: 1280/720) { … }
@media screen and (device-aspect-ratio: 2560/1440) { … }

html:lang(fr-be)

tr:nth-child(2n+1) /* represents every odd row of an HTML table */

img:nth-of-type(2n+1) { float: right; }
img:nth-of-type(2n) { float: left; }

body > h2:not(:first-of-type):not(:last-of-type)

html|*:not(:link):not(:visited)
*|*:not(:hover)
p::first-line { text-transform: uppercase }

@namespace foo url(http://www.example.com);
foo|h1 { color: blue }  /* first rule */

span[hello="Ocean"][goodbye="Land"]

E[foo]{
  padding:65px;
}

input[type="search"]::-webkit-search-decoration,
input[type="search"]::-webkit-search-cancel-button {
  -webkit-appearance: none; // Inner-padding issues in Chrome OSX, Safari 5
}
button::-moz-focus-inner,
input::-moz-focus-inner { // Inner padding and border oddities in FF3/4
  padding: 0;
  border: 0;
}
.btn {
  // reset here as of 2.0.3 due to Recess property order
  border-color: #ccc;
  border-color: rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25);
}
fieldset span button, fieldset span input[type="file"] {
  font-size:12px;
	font-family:Arial, Helvetica, sans-serif;
}

.rounded-corners (@radius: 5px) {
  border-radius: @radius;
  -webkit-border-radius: @radius;
  -moz-border-radius: @radius;
}

@import url("something.css");

@light-blue:   hsl(190, 50%, 65%);

#menu {
  position: absolute;
  width: 100%;
  z-index: 3;
  clear: both;
  display: block;
  background-color: @blue;
  height: 42px;
  border-top: 2px solid lighten(@alpha-blue, 20%);
  border-bottom: 2px solid darken(@alpha-blue, 25%);
  .box-shadow(0, 1px, 8px, 0.6);
  -moz-box-shadow: 0 0 0 #000; // Because firefox sucks.

  &.docked {
    background-color: hsla(210, 60%, 40%, 0.4);
  }
  &:hover {
    background-color: @blue;
  }

  #dropdown {
    margin: 0 0 0 117px;
    padding: 0;
    padding-top: 5px;
    display: none;
    width: 190px;
    border-top: 2px solid @medium;
    color: @highlight;
    border: 2px solid darken(@medium, 25%);
    border-left-color: darken(@medium, 15%);
    border-right-color: darken(@medium, 15%);
    border-top-width: 0;
    background-color: darken(@medium, 10%);
    ul {
      padding: 0px;  
    }
    li {
      font-size: 14px;
      display: block;
      text-align: left;
      padding: 0;
      border: 0;
      a {
        display: block;
        padding: 0px 15px;  
        text-decoration: none;
        color: white;  
        &:hover {
          background-color: darken(@medium, 15%);
          text-decoration: none;
        }
      }
    }
    .border-radius(5px, bottom);
    .box-shadow(0, 6px, 8px, 0.5);
  }
}
</textarea></form>
    <script>
      var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
        lineNumbers : true,
        matchBrackets : true,
        mode: "text/x-less"
      });
    </script>

    <p>The LESS mode is a sub-mode of the <a href="<%= SkinPath %>index.html">CSS mode</a> (defined in <code>css.js</code>).</p>

    <p><strong>Parsing/Highlighting Tests:</strong> <a href="<%= SkinPath %>../../test/index.html#less_*">normal</a>,  <a href="<%= SkinPath %>../../test/index.html#verbose,less_*">verbose</a>.</p>
  </article>

