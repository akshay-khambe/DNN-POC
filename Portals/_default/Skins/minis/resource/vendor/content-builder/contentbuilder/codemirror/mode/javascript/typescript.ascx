<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!doctype html>

<title>CodeMirror: TypeScript mode</title>
<meta charset="utf-8"/>
<link rel=stylesheet href="<%= SkinPath %>../../doc/docs.css">

<link rel="stylesheet" href="<%= SkinPath %>../../lib/codemirror.css">
<script src="<%= SkinPath %>../../lib/codemirror.js"></script>
<script src="<%= SkinPath %>javascript.js"></script>
<style type="text/css">.CodeMirror {border-top: 1px solid black; border-bottom: 1px solid black;}</style>
<div id=nav>
  <a href="http://codemirror.net"><h1>CodeMirror</h1><img id=logo src="<%= SkinPath %>../../doc/logo.png"></a>

  <ul>
    <li><a href="<%= SkinPath %>../../index.html">Home</a>
    <li><a href="<%= SkinPath %>../../doc/manual.html">Manual</a>
    <li><a href="https://github.com/codemirror/codemirror">Code</a>
  </ul>
  <ul>
    <li><a href="<%= SkinPath %>../index.html">Language modes</a>
    <li><a class=active href="<%= SkinPath %>#">TypeScript</a>
  </ul>
</div>

<article>
<h2>TypeScript mode</h2>


<div><textarea id="code" name="code">
class Greeter {
  greeting: string;
  constructor (message: string) {
    this.greeting = message;
  }
  greet() {
    return "Hello, " + this.greeting;
  }
}   

var greeter = new Greeter("world");

var button = document.createElement('button')
button.innerText = "Say Hello"
button.onclick = function() {
  alert(greeter.greet())
}

document.body.appendChild(button)

</textarea></div>

    <script>
      var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
        lineNumbers: true,
        matchBrackets: true,
        mode: "text/typescript"
      });
    </script>

    <p>This is a specialization of the <a href="<%= SkinPath %>index.html">JavaScript mode</a>.</p>
  </article>

