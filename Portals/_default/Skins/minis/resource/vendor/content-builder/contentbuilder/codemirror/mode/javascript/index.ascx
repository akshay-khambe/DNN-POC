<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!doctype html>

<title>CodeMirror: JavaScript mode</title>
<meta charset="utf-8"/>
<link rel=stylesheet href="<%= SkinPath %>../../doc/docs.css">

<link rel="stylesheet" href="<%= SkinPath %>../../lib/codemirror.css">
<script src="<%= SkinPath %>../../lib/codemirror.js"></script>
<script src="<%= SkinPath %>../../addon/edit/matchbrackets.js"></script>
<script src="<%= SkinPath %>../../addon/comment/continuecomment.js"></script>
<script src="<%= SkinPath %>../../addon/comment/comment.js"></script>
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
    <li><a class=active href="<%= SkinPath %>#">JavaScript</a>
  </ul>
</div>

<article>
<h2>JavaScript mode</h2>


<div><textarea id="code" name="code">
// Demo code (the actual new parser character stream implementation)

function StringStream(string) {
  this.pos = 0;
  this.string = string;
}

StringStream.prototype = {
  done: function() {return this.pos >= this.string.length;},
  peek: function() {return this.string.charAt(this.pos);},
  next: function() {
    if (this.pos &lt; this.string.length)
      return this.string.charAt(this.pos++);
  },
  eat: function(match) {
    var ch = this.string.charAt(this.pos);
    if (typeof match == "string") var ok = ch == match;
    else var ok = ch &amp;&amp; match.test ? match.test(ch) : match(ch);
    if (ok) {this.pos++; return ch;}
  },
  eatWhile: function(match) {
    var start = this.pos;
    while (this.eat(match));
    if (this.pos > start) return this.string.slice(start, this.pos);
  },
  backUp: function(n) {this.pos -= n;},
  column: function() {return this.pos;},
  eatSpace: function() {
    var start = this.pos;
    while (/\s/.test(this.string.charAt(this.pos))) this.pos++;
    return this.pos - start;
  },
  match: function(pattern, consume, caseInsensitive) {
    if (typeof pattern == "string") {
      function cased(str) {return caseInsensitive ? str.toLowerCase() : str;}
      if (cased(this.string).indexOf(cased(pattern), this.pos) == this.pos) {
        if (consume !== false) this.pos += str.length;
        return true;
      }
    }
    else {
      var match = this.string.slice(this.pos).match(pattern);
      if (match &amp;&amp; consume !== false) this.pos += match[0].length;
      return match;
    }
  }
};
</textarea></div>

    <script>
      var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
        lineNumbers: true,
        matchBrackets: true,
        continueComments: "Enter",
        extraKeys: {"Ctrl-Q": "toggleComment"}
      });
    </script>

    <p>
      JavaScript mode supports several configuration options:
      <ul>
        <li><code>json</code> which will set the mode to expect JSON
        data rather than a JavaScript program.</li>
        <li><code>jsonld</code> which will set the mode to expect
        <a href="http://json-ld.org">JSON-LD</a> linked data rather
        than a JavaScript program (<a href="<%= SkinPath %>json-ld.html">demo</a>).</li>
        <li><code>typescript</code> which will activate additional
        syntax highlighting and some other things for TypeScript code
        (<a href="<%= SkinPath %>typescript.html">demo</a>).</li>
        <li><code>statementIndent</code> which (given a number) will
        determine the amount of indentation to use for statements
        continued on a new line.</li>
        <li><code>wordCharacters</code>, a regexp that indicates which
        characters should be considered part of an identifier.
        Defaults to <code>/[\w$]/</code>, which does not handle
        non-ASCII identifiers. Can be set to something more elaborate
        to improve Unicode support.</li>
      </ul>
    </p>

    <p><strong>MIME types defined:</strong> <code>text/javascript</code>, <code>application/json</code>, <code>application/ld+json</code>, <code>text/typescript</code>, <code>application/typescript</code>.</p>
  </article>

