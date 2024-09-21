<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!doctype html>

<title>CodeMirror: JSON-LD mode</title>
<meta charset="utf-8"/>
<link rel=stylesheet href="<%= SkinPath %>../../doc/docs.css">

<link rel="stylesheet" href="<%= SkinPath %>../../lib/codemirror.css">
<script src="<%= SkinPath %>../../lib/codemirror.js"></script>
<script src="<%= SkinPath %>../../addon/edit/matchbrackets.js"></script>
<script src="<%= SkinPath %>../../addon/comment/continuecomment.js"></script>
<script src="<%= SkinPath %>../../addon/comment/comment.js"></script>
<script src="<%= SkinPath %>javascript.js"></script>
<style type="text/css">.CodeMirror {border-top: 1px solid black; border-bottom: 1px solid black;}</style>
<div id="nav">
  <a href="http://codemirror.net"><h1>CodeMirror</h1><img id=logo src="<%= SkinPath %>../../doc/logo.png"/></a>

  <ul>
    <li><a href="<%= SkinPath %>../../index.html">Home</a>
    <li><a href="<%= SkinPath %>../../doc/manual.html">Manual</a>
    <li><a href="https://github.com/codemirror/codemirror">Code</a>
  </ul>
  <ul>
    <li><a href="<%= SkinPath %>../index.html">Language modes</a>
    <li><a class=active href="<%= SkinPath %>#">JSON-LD</a>
  </ul>
</div>

<article>
<h2>JSON-LD mode</h2>


<div><textarea id="code" name="code">
{
  "@context": {
    "name": "http://schema.org/name",
    "description": "http://schema.org/description",
    "image": {
      "@id": "http://schema.org/image",
      "@type": "@id"
    },
    "geo": "http://schema.org/geo",
    "latitude": {
      "@id": "http://schema.org/latitude",
      "@type": "xsd:float"
    },
    "longitude": {
      "@id": "http://schema.org/longitude",
      "@type": "xsd:float"
    },
    "xsd": "http://www.w3.org/2001/XMLSchema#"
  },
  "name": "The Empire State Building",
  "description": "The Empire State Building is a 102-story landmark in New York City.",
  "image": "http://www.civil.usherbrooke.ca/cours/gci215a/empire-state-building.jpg",
  "geo": {
    "latitude": "40.75",
    "longitude": "73.98"
  }
}
</textarea></div>

    <script>
      var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
        matchBrackets: true,
        autoCloseBrackets: true,
        mode: "application/ld+json",
        lineWrapping: true
      });
    </script>
    
    <p>This is a specialization of the <a href="<%= SkinPath %>index.html">JavaScript mode</a>.</p>
  </article>

