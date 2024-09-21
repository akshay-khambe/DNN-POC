<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!doctype html>

<title>CodeMirror: CSS mode</title>
<meta charset="utf-8"/>
<link rel=stylesheet href="<%= SkinPath %>../../doc/docs.css">

<link rel="stylesheet" href="<%= SkinPath %>../../lib/codemirror.css">
<link rel="stylesheet" href="<%= SkinPath %>../../addon/hint/show-hint.css">
<script src="<%= SkinPath %>../../lib/codemirror.js"></script>
<script src="<%= SkinPath %>css.js"></script>
<script src="<%= SkinPath %>../../addon/hint/show-hint.js"></script>
<script src="<%= SkinPath %>../../addon/hint/css-hint.js"></script>
<style>.CodeMirror {background: #f8f8f8;}</style>
<div id=nav>
  <a href="http://codemirror.net"><h1>CodeMirror</h1><img id=logo src="<%= SkinPath %>../../doc/logo.png"></a>

  <ul>
    <li><a href="<%= SkinPath %>../../index.html">Home</a>
    <li><a href="<%= SkinPath %>../../doc/manual.html">Manual</a>
    <li><a href="https://github.com/codemirror/codemirror">Code</a>
  </ul>
  <ul>
    <li><a href="<%= SkinPath %>../index.html">Language modes</a>
    <li><a class=active href="<%= SkinPath %>#">CSS</a>
  </ul>
</div>

<article>
<h2>CSS mode</h2>
<form><textarea id="code" name="code">
/* Some example CSS */

@import url("something.css");

body {
  margin: 0;
  padding: 3em 6em;
  font-family: tahoma, arial, sans-serif;
  color: #000;
}

#navigation a {
  font-weight: bold;
  text-decoration: none !important;
}

h1 {
  font-size: 2.5em;
}

h2 {
  font-size: 1.7em;
}

h1:before, h2:before {
  content: "::";
}

code {
  font-family: courier, monospace;
  font-size: 80%;
  color: #418A8A;
}
</textarea></form>
    <script>
      var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
        extraKeys: {"Ctrl-Space": "autocomplete"}
      });
    </script>

    <p><strong>MIME types defined:</strong> <code>text/css</code>, <code>text/x-scss</code> (<a href="<%= SkinPath %>scss.html">demo</a>), <code>text/x-less</code> (<a href="<%= SkinPath %>less.html">demo</a>).</p>

    <p><strong>Parsing/Highlighting Tests:</strong> <a href="<%= SkinPath %>../../test/index.html#css_*">normal</a>,  <a href="<%= SkinPath %>../../test/index.html#verbose,css_*">verbose</a>.</p>

  </article>

