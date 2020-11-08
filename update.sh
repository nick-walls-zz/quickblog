#!/bin/sh
echo "welcome to the quickblog update script!"
echo "which file are you updating (enter the filename)"
read filename
pandoc -s ${filename}.md -o ${filename}.html --metadata title="${title}"
git add ${filename}.md ${filename}.html
git commit add ${filename}.md ${filename}.html -m "update ${filename}"
git push
echo "DONE"
