#!/bin/bash
for pngfile in *.png ; do
  convert -density 3000 -quality 100 -verbose "${pngfile}" "${pngfile%.*}".pdf
done
