require 'watir'

n = Watir::Browser.new (:firefox)

n.goto 'https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Accueil_principal'

recherche = n.text_field(:xpath => "//*[@id='searchInput']")
recherche.set("Hacking")

#recherche.send_keys(:enter)

clique = n.button(type: "submit")
clique.click

n.elements(:xpath => "//*[@id='mw-content-text']/div/p[1]").each do |content|

  p content.text
end

lien = n.link(:text => "hackers")

lien.exist?
lien.click
