#!/bin/bash
REPLACEWITH="<p><a href="#top">^Top</a> | <a href="index.html">Blog</a> - <a href="about.html">About</a></p><p> Cascading Style Sheet <a href="https://simplecss.org">simple.css</a> and HTML inspiration from the <a href="https://simplecss.org/showcase">showcase</a>. Cursor animation from <a href="https://www.amitmerchant.com/simple-blinking-cursor-animation-using-css/">Amit Merchant</a> Thank you all! </p>"
STARTTAG="footer"
ENDTAG="/footer"
sed -E "s/(<\!\-\-$STARTTAG\-\->)(.*)(<\!\-\-$ENDTAG\-\->)/\1$REPLACEWITH\3/" -i *.html
