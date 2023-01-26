require 'nokogiri'
require 'open-uri'
PAGE_URL = "https://fr.wikipedia.org/wiki/Mont_Saint_Helens"

#when the page is online - use open-uri
page = Nokogiri::HTML(URI.open('https://fr.wikipedia.org/wiki/Mont_Saint_Helens'))
puts page.css('html')

# Extraire les éléments HTML que tu veux scrapper en 
# --> utilisant leur XPath
#--> les stockant dans un array (ex : all_emails_links) avec all_emails_links = page.xpath('/mettre_ici_le_XPath')
# >>> all_emails_links = array d'éléments HTML.

# Fetch and parse HTML document
#doc = Nokogiri::HTML(URI.open('https://nokogiri.org/tutorials/installing_nokogiri.html'))

# Search for nodes by css
#doc.css('nav ul.menu li a', 'article h2').each do |link|
#  puts link.content
#end

# Search for nodes by xpath
#doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
#  puts link.content
#end

# Or mix and match
#doc.search('nav ul.menu li a', '//article//h2').each do |link|
#  puts link.content
#end