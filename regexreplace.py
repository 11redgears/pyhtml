import re
from bs4 import BeautifulSoup


footer_file = open("../homepage/footer.html", 'r')
#print(footer_file.read())

footer_str = footer_file.read()

repltxt = 'test'

pattern = r'<footer>\n(.*?)\n</footer>'

y = re.findall(r'<footer>\n(.*?)\n</footer>', footer_str)
print(y)

#y = re.sub(pattern, repltxt, footer_str)
#print(y)

#soup = BeautifulSoup(y)
#prettyHTML = soup.prettify()

#print(prettyHTML)
