require 'nokogiri'
require 'open-uri'
require 'money'
require 'xpath'

#when the page is online - use open-uri
#page = Nokogiri::HTML(URI.open('http://annuaire-des-mairies.com'))
#puts page.css('html')

#lancer nokogiri : obtenir URL de l'annuraire(1) + mail d'Avernes (mairie du val d'oise)
def get_townhall_email(townhall_url)
   townhall_mail_hash = Hash.new
   page_mairie = Nokogiri::HTML(URI.open(townhall_url))
   puts page_mairie.xpath('//*[text()[contains(., "@")]]').text
   puts townhall_mail_hash = {page_mairie.xpath('/html/body/div/header/section/div/div[1]/h1/small').text => page_mairie.xpath('//*[text()[contains(., "@")]]').text}
end

get_townhall_email('https://www.annuaire-des-mairies.com/95/avernes.html')
/html/body/div/main/section[2]/div/table/tbody/tr[21]/td[4]/a

  
def get_townhall_urls #recupere URL chaque ville du Val d'Oise
  
end

#def open_nokogiri
  page = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html"))
  #recupere l'email
  email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
  puts email
  #recupere le nom de la mairie
  nom = page.xpath("/html/body/div/main/section[1]/div/div/div/h1").text
  puts nom
#end  
#open_nokogiri

#Récupérer l'URL du Val d'Oise
#creer hash et array : pour collecter noms et prix
#def val_doise(pag)
 # array_val = Array.new
 # hash_sortie = Hash.new

# recup l'URL'
 # page.xpath('//tr//td[3]/div').each do |name_crypto|
 #   array_name.push(name_crypto.text)
#  end

#Aller sur URL et chercher les mails


# les mettre dans un hash



#methode orchestre
#def perform
 # page = open_nokogiri
#end
#perform


#___________
#def get_townhall_email(townhall_url)
  #Nokogiri::HTML(URI.open(townhall_url))
#end
