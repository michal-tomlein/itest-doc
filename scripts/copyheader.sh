#!/bin/sh
# Copies header.tex to all latex translations.

header="latex/en/header.tex"

dirs=`find latex -type d -not -name en -not -name latex`
oldIFS=$IFS
IFS='
'
for I in $dirs; do
    cp "$header" "$I"
done
IFS=$oldIFS
