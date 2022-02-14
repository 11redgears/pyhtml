#!/bin/bash

# Name of new post markdown file
POSTMD="uses"

# create intermediate html files from new and modified md files
pandoc $POSTMD.md -o $POSTMD'_'.html
pandoc index.md -o index_.html

# create full html files with header and footer
cat header_post.html $POSTMD'_'.html footer.html > $POSTMD.html
cat header_index.html index_.html footer.html > index.html

# remove intermediate files
#rm *_.html
