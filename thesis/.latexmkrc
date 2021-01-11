#!/usr/bin/env perl
@default_files    = ('main.tex');
$pdf_mode         = 3;
$max_repeat       = 5;
$latex            = 'platex -halt-on-error -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
$latex_silent     = 'platex -interaction=batchmode';
$bibtex           = 'pbibtex %O %B';
$biber            = 'biber --bblendcoding=utf8 -u -U --output_safechars %O %S';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
