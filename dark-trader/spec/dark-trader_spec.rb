require_relative '../lib/dark-trader'

describe "open_nokogiri" do
  it "must return something which is not nil" do
    expect(open_nokogiri).not_to be(nil)
  end

  it "must return an hash of array with all crypto" do
    page = open_nokogiri
    expect(crypto(page).length).not_to be(0)
  end
end
# test = ce que return la methode login_twitter ne doit pas être égal à nil
#begin
  # Any exceptions in here... 
  #1/0
#rescue
  # ...will cause this code to run
  #puts "Got an exception, but I'm responding intelligently!"
  #do_something_intelligent()
#end


#____________________________________________________________________________
#1 - lancer nokogiri (avec url)
# 2- créer les arrays et hash
#3 - recup les noms + les mettre dans array
#4 recup les prix + les mettre dans array
#5 - synthétiser tout dans une hash
#6 - mettre le hash dans un array
#7 - perform
