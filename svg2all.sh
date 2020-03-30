#!/bin/bash
for filename in $(find svg -type f)
do
    inkscape \
        -f $filename \
        -e ${filename//svg/png} \
        --export-area-page \
        --export-dpi=300 \
        --without-gui
    inkscape \
        -f $filename \
        -E ${filename//svg/eps} \
        --export-area-page \
        --export-dpi=300 \
        --without-gui
    inkscape \
        -f $filename \
        -A ${filename//svg/pdf} \
        --export-area-page \
        --export-dpi=300 \
        --without-gui
done