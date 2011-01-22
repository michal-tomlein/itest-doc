#!/bin/sh
# Generates PDFs.  Must be executed from the root of the project.

latexMaster=iTest-Documentation.tex

cd latex
masters=`find -type f -name $latexMaster`
oldIFS=$IFS
IFS='
'
for I in $masters; do
    dir=`dirname "$I"`
    cd "$dir"
    outdir="../../pdf/$dir"
    mkdir "$outdir"
    pdflatex -output-directory "$outdir" "$latexMaster"
    cd ..
done
IFS=$oldIFS
