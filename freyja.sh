#!/bin/sh

mv $1 ~/script/Freyja
cd ~/script/Freyja
fileName=`basename $1`
echo $fileName
git add $fileName
git commit -m 'Upload picture $fileName'
git push -u origin master
echo "https://github.com/khotyn/Freyja/blob/master/$fileName?raw=true"