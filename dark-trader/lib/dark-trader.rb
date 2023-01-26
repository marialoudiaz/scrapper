require 'nokogiri'
require 'open-uri'
require 'money'
require 'xpath'

#lancer nokogiri
def open_nokogiri
  Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))   
end


def fusiontab(tab1,tab2)
  return Hash[tab1.zip(tab2)]
end

#creer hash et array : pour collecter noms et prix
def crypto(page)
  array_name = Array.new
  array_price = Array.new
  hash_sortie = Hash.new
  array_sortie = Array.new
  little_hash = Hash.new

# recup les noms
  page.xpath('//tr//td[3]/div').each do |name_crypto|
    array_name.push(name_crypto.text)
  end

# recup les prix
  page.xpath('//tr//td[5]/div/a/span').each do |price_crypto|
    array_price.push(price_crypto.text)
  end
# synthétiser dans hash
  array_price.map! {|s| s.gsub(/[^\d\.]/, '').to_f}
  hash_sortie=Hash[array_name.zip(array_price)]

#mettre dans une array le hash
  hash_sortie.each do |key, value|
    little_hash = {}
    little_hash.store(key,value)
    array_sortie.push(little_hash) #.push() : elements a add a la fin de l'array en question
  end
  return array_sortie

end

#methode orchestre
def perform
  page = open_nokogiri
  array_crypto = crypto(page)
  puts array_crypto
end
perform