<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!doctype html>

<title>CodeMirror: SCSS mode</title>
<meta charset="utf-8"/>
<link rel=stylesheet href="<%= SkinPath %>../../doc/docs.css">

<link rel="stylesheet" href="<%= SkinPath %>../../lib/codemirror.css">
<script src="<%= SkinPath %>../../lib/codemirror.js"></script>
<script src="<%= SkinPath %>css.js"></script>
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
    <li><a class=active href="<%= SkinPath %>#">SCSS</a>
  </ul>
</div>

<article>
<h2>SCSS mode</h2>
<form><textarea id="code" name="code">
/* Some example SCSS */

@import "compass/css3";
$variable: #333;

$blue: #3bbfce;
$margin: 16px;

.content-navigation {
  #nested {
    background-color: black;
  }
  border-color: $blue;
  color:
    darken($blue, 9%);
}

.border {
  padding: $margin / 2;
  margin: $margin / 2;
  border-color: $blue;
}

@mixin table-base {
  th {
    text-align: center;
    font-weight: bold;
  }
  td, th {padding: 2px}
}

table.hl {
  margin: 2em 0;
  td.ln {
    text-align: right;
  }
}

li {
  font: {
    family: serif;
    weight: bold;
    size: 1.2em;
  }
}

@mixin left($dist) {
  float: left;
  margin-left: $dist;
}

#data {
  @include left(10px);
  @include table-base;
}

.source {
  @include flow-into(target);
  border: 10px solid green;
  margin: 20px;
  width: 200px; }

.new-container {
  @include flow-from(target);
  border: 10px solid red;
  margin: 20px;
  width: 200px; }

body {
  margin: 0;
  padding: 3em 6em;
  font-family: tahoma, arial, sans-serif;
  color: #000;
}

@mixin yellow() {
  background: yellow;
}

.big {
  font-size: 14px;
}

.nested {
  @include border-radius(3px);
  @extend .big;
  p {
    background: whitesmoke;
    a {
      color: red;
    }
  }
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
        lineNumbers: true,
        matchBrackets: true,
        mode: "text/x-scss"
      });
    </script>

    <p>The SCSS mode is a sub-mode of the <a href="<%= SkinPath %>index.html">CSS mode</a> (defined in <code>css.js</code>).</p>

    <p><strong>Parsing/Highlighting Tests:</strong> <a href="<%= SkinPath %>../../test/index.html#scss_*">normal</a>,  <a href="<%= SkinPath %>../../test/index.html#verbose,scss_*">verbose</a>.</p>

  </article>

