#!/bin/bash

set -e

arg=$1
f=${arg#in/}
ext=${f##*.}
fn=${f%.*}
fnout=$fn.mp3

d=`dirname "$f"`
mkdir -p "out/$d"

avconv -y -i "in/$f" -codec:a libmp3lame -b:a 192k -id3v2_version 3 -write_id3v1 1 -vn "out/$fnout" -v -8
eyeD3 --remove-all-comments --remove-all-lyrics --remove-all-images "out/$fnout"
eyeD3 --to-v1.1 "out/$fnout"
eyeD3 --remove-v2 "out/$fnout"
