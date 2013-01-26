DOCUMENT_ROOT = "~/memo"

PORT = 8888

# 通常の Markdown ファイルに加えて .txt ファイルも Markdown と見なす
MARKDOWN_PATTERN = /\.(md|markdown|txt)$/

# 最近更新したファイル一覧がジャマ
RECENT_NUM = 0

# 最近更新したファイル一覧に出すものを Markdown ドキュメントだけにする
# RECENT_PATTERN = MARKDOWN_PATTERN

# すべてのページで MathJax が使えるように
CUSTOM_HEADER = <<HEADER
<script type="text/javascript"
  src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML">
</script>
HEADER

# すべてのページで SyntaxHighlighter が使えるように
host = "http://alexgorbatchev.com/pub/sh/current" # 変数も使えます
CUSTOM_FOOTER = <<FOOTER
<link href="#{host}/styles/shCoreDefault.css" rel="stylesheet" type="text/css" />
<script src="#{host}/scripts/shCore.js" type="text/javascript"></script>
<script src="#{host}/scripts/shAutoloader.js" type="text/javascript"></script>
<script type="text/javascript">
SyntaxHighlighter.autoloader(
'AS3 as3 #{host}/scripts/shBrushAS3.js',
'AppleScript applescript #{host}/scripts/shBrushAppleScript.js',
'Bash bash #{host}/scripts/shBrushBash.js',
'CSharp csharp #{host}/scripts/shBrushCSharp.js',
'ColdFusion coldfusion #{host}/scripts/shBrushColdFusion.js',
'Cpp cpp #{host}/scripts/shBrushCpp.js',
'Css css #{host}/scripts/shBrushCss.js',
'Delphi delphi #{host}/scripts/shBrushDelphi.js',
'Diff diff #{host}/scripts/shBrushDiff.js',
'Erlang erlang #{host}/scripts/shBrushErlang.js',
'Groovy groovy #{host}/scripts/shBrushGroovy.js',
'JScript jscript #{host}/scripts/shBrushJScript.js',
'Java java #{host}/scripts/shBrushJava.js',
'JavaFX javafx #{host}/scripts/shBrushJavaFX.js',
'Perl perl #{host}/scripts/shBrushPerl.js',
'Php php #{host}/scripts/shBrushPhp.js',
'Plain plain #{host}/scripts/shBrushPlain.js',
'PowerShell powershell #{host}/scripts/shBrushPowerShell.js',
'Python python #{host}/scripts/shBrushPython.js',
'Ruby ruby #{host}/scripts/shBrushRuby.js',
'Sass sass #{host}/scripts/shBrushSass.js',
'Scala scala #{host}/scripts/shBrushScala.js',
'Sql sql #{host}/scripts/shBrushSql.js',
'Vb vb #{host}/scripts/shBrushVb.js',
'Xml xml #{host}/scripts/shBrushXml.js'
);
SyntaxHighlighter.all();
</script>
FOOTER
