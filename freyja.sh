#!/bin/sh

fileName=`basename "$1" | sed 's/ /_/g'`
newFile="/Users/apple/script/Freyja/$fileName"
mv "$1" "$newFile"
cd "/Users/apple/script/Freyja"
git add $fileName
git commit -m "Upload picture $fileName"
git push -u origin master
echo "https://github.com/khotyn/Freyja/raw/master/$fileName"
