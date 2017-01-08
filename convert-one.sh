#!/bin/bash

set -e

arg=$1
f=${arg#in/}

d=`dirname "$f"`
mkdir -p "out/$d"

avconv -y -i "in/$f" -codec:a libmp3lame -b:a 192k -id3v2_version 3 -write_id3v1 1 -vn "out/$f" -v -8
eyeD3 --remove-comments --remove-lyrics --remove-images "out/$f"
eyeD3 --to-v1.1 "out/$f"
eyeD3 --remove-v2 "out/$f"
