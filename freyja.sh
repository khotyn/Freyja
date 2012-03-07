#!/bin/sh

fileName=`basename "$1" | sed 's/ /_/g'`
cd "/Users/apple/script/Freyja"
touch "$fileName"
cat "$1" > "$fileName"
git add $fileName
git commit -m 'Upload picture $fileName'
git push -u origin master
echo "https://github.com/khotyn/Freyja/raw/master/$fileName"
