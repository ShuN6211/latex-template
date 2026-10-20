# latexmk の設定。エンジンはコマンドラインで選ぶ:
#   latexmk -pdflua file.tex   # LuaLaTeX (ltjsarticle など)
#   latexmk -pdfdvi file.tex   # upLaTeX + dvipdfmx (jsarticle, beamer など)
$lualatex  = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$latex     = 'uplatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$dvipdf    = 'dvipdfmx %O -o %D %S';
$bibtex    = 'upbibtex %O %B';
$biber     = 'biber --bblencoding=utf8 -u -U --output_safechars %O %B';
$makeindex = 'upmendex %O -o %D %S';
$max_repeat = 5;
$out_dir = 'out';
