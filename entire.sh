#!/bin/bash

# fn = filename, sn = extension name
# find all markdown files in directory and convert to html file with hmtli extension to act as an intermediate file.

#PATH=/home/ryan/git-repos/homepage

find ./ -iname "*.md" -exec bash -c 'fn=${1%.*}; sn=${fn##*/}; 
    echo "Converting $1 to $sn.htmli"; 
    pandoc $1 -o $fn.htmli;
' bash {} \;

# variable holding all of the temporary .htmli files
FILES=*.htmli

# all htmli files converted to html files with header and footer included
# if then else looks for files with a non-standard header (eg. index.html) and concatenates the appropriate header file.

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

# delete all intermediate htmli files
rm *.htmli >
