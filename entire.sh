#!/bin/bash

#fn = filename, sn = 
find ./ -iname "*.md" -exec bash -c 'fn=${1%.*}; sn=${fn##*/}; 
    echo "Converting $1 to $sn.htmli"; 
    pandoc $1 -o $fn.htmli;
' bash {} \;

FILES=*.htmli

for f in $FILES
do
  echo $f
  filename="${f%.*}"
  echo "filename is $filename"
  if [[ $f == 'index.htmli' ]]
  then
    echo "creating index.html"
    cat header_index.html index.htmli footer.html > index.html
  else
    echo "creating $filename.html"
    cat header_post.html $f footer.html > $filename.html 
  fi
done


# create intermediate html files from new and modified md files
#pandoc $FILE.md -o $FILE'_'.html
#pandoc index.md -o index_.html

# create full html files with header and footer
#cat header_post.html $POSTMD'_'.html footer.html > $POSTMD.html
#cat header_index.html index_.html footer.html > index.html

# remove intermediate files
#rm *_.html
