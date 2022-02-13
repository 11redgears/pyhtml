import re
from bs4 import BeautifulSoup

x = '''
</main>
<footer>
<p><a href="#top">^Top</a> | <a href="index.html">Blog</a> - <a href="about.html">About</a></p><p> Cascading Style Sheet <a href="https://simplecss.org">simple.css</a> and HTML inspiration from the <a href="https://simplecss.org/showcase">showcase</a>. Cursor animation from <a href="https://www.amitmerchant.com/simple-blinking-cursor-animation-using-css/">Amit Merchant</a> Thank you all! </p>
</footer>
</body>
</html>
'''

repltxt = '''
<p><a href="#top">^Top</a> | <a href="index.html">Blog</a> - <a href="about.html">About</a></p><p> Cascading Style Sheet <a href="https://simplecss.org">simple.css</a> and HTML inspiration from the <a href="https://simplecss.org/showcase">showcase</a>. Cursor animation from <a href="https://www.amitmerchant.com/simple-blinking-cursor-animation-using-css/">Amit Merchant</a> Thank you all!!! </p>
'''

pattern = r'<footer>\n(.*?)\n</footer>'
y = re.findall(r'<footer>\n(.*?)\n</footer>', x)[0]
print(y)

y = re.sub(pattern, repltxt, x)

soup = BeautifulSoup(y)
prettyHTML = soup.prettify()

print(prettyHTML)
