#!/bin/bash
for pdffile in *.pdf ; do
  inkscape "${pdffile}" --export-eps="${pdffile%.*}".pdf
done
