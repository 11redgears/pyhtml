from bs4 import BeautifulSoup

html_doc = """
</main>
<footer>
  <p><a href="index.html">Blog</a> - <a href="about.html">About</a></p>
  <p> Cascading Style Sheet <a href="https://simplecss.org">simple.css</a> and HTML inspiration from the <a
      href="https://simplecss.org/showcase">showcase</a>. Cursor animation from <a
      href="https://www.amitmerchant.com/simple-blinking-cursor-animation-using-css/">Amit Merchant</a> Thank you all!
  </p>
</footer>
</body>
</html>
"""

repltxt = 'test'

soup = BeautifulSoup(html_doc)
footer_tag = soup.footer
print(footer_tag)
print('###CONTENTS###')
print(footer_tag.contents)
#footer_tag.contents.replace_with(repltxt)
#print(result)
