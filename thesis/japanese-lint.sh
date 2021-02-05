#!/usr/bin/zsh

function lint_latex () {
    redpen --format latex --result-format plain2 --conf redpen-conf.xml $1
}

rm out/redpen-out.txt
lint_latex chap1/chap1.tex > out/redpen-out.txt 2> out/redpen-debug.txt
lint_latex chap2/chap2.tex >> out/redpen-out.txt 2>> out/redpen-debug.txt
lint_latex chap3/chap3.tex >> out/redpen-out.txt 2>> out/redpen-debug.txt
lint_latex chap4/chap4.tex >> out/redpen-out.txt 2>> out/redpen-debug.txt
lint_latex chap5/chap5.tex >> out/redpen-out.txt 2>> out/redpen-debug.txt
lint_latex chap6/chap6.tex >> out/redpen-out.txt 2>> out/redpen-debug.txt
lint_latex acknowledgements/acknowledgements.tex >> out/redpen-out.txt 2>> out/redpen-debug.txt

#cat out/redpen-out.dirty.json | python -c 'import sys,json;print(json.dumps(json.loads(sys.stdin.read()),indent=4,ensure_ascii=False))' > out/redpen-out.json
