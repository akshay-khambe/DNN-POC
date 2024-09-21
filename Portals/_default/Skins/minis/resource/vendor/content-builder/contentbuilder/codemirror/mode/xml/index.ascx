<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!doctype html>

<title>CodeMirror: XML mode</title>
<meta charset="utf-8"/>
<link rel=stylesheet href="<%= SkinPath %>../../doc/docs.css">

<link rel="stylesheet" href="<%= SkinPath %>../../lib/codemirror.css">
<script src="<%= SkinPath %>../../lib/codemirror.js"></script>
<script src="<%= SkinPath %>xml.js"></script>
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
    <li><a class=active href="<%= SkinPath %>#">XML</a>
  </ul>
</div>

<article>
<h2>XML mode</h2>
<form><textarea id="code" name="code">
&lt;html style="color: green"&gt;
  &lt;!-- this is a comment --&gt;
  &lt;head&gt;
    &lt;title&gt;HTML Example&lt;/title&gt;
  &lt;/head&gt;
  &lt;body&gt;
    The indentation tries to be &lt;em&gt;somewhat &amp;quot;do what
    I mean&amp;quot;&lt;/em&gt;... but might not match your style.
  &lt;/body&gt;
&lt;/html&gt;
</textarea></form>
    <script>
      var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
        mode: "text/html",
        lineNumbers: true
      });
    </script>
    <p>The XML mode supports these configuration parameters:</p>
    <dl>
      <dt><code>htmlMode (boolean)</code></dt>
      <dd>This switches the mode to parse HTML instead of XML. This
      means attributes do not have to be quoted, and some elements
      (such as <code>br</code>) do not require a closing tag.</dd>
      <dt><code>matchClosing (boolean)</code></dt>
      <dd>Controls whether the mode checks that close tags match the
      corresponding opening tag, and highlights mismatches as errors.
      Defaults to true.</dd>
      <dt><code>alignCDATA (boolean)</code></dt>
      <dd>Setting this to true will force the opening tag of CDATA
      blocks to not be indented.</dd>
    </dl>

    <p><strong>MIME types defined:</strong> <code>application/xml</code>, <code>text/html</code>.</p>
  </article>

