# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# ENERGIES
require 'open-uri'

UserApp.destroy_all
App.destroy_all
# Effacer les utilisateurs existants
User.destroy_all

# Créer des utilisateurs
# users = [
#   # { first_name: "John", last_name: "Doe", email: "john.doe@example.com", phone: "0123456789", address: "123 Main Street, Paris", rib: "FR7630006000011234567890189", password: "password", photo: "https://res.cloudinary.com/doq2qvren/image/upload/v1724923295/development/29lc8c172xdl9dmwjnl3blgqr6y2.jpg" },
#   # { first_name: "Jane", last_name: "Smith", email: "jane.smith@example.com", phone: "0987654321", address: "456 Elm Street, Lyon", rib: "FR7630006000019876543210987", password: "password", photo: "https://res.cloudinary.com/doq2qvren/image/upload/v1724924293/development/22ovv5gzwsqc1n8tjnxtxnnwlu77.jpg" },
#   # { first_name: "Alice", last_name: "Johnson", email: "alice.johnson@example.com", phone: "0111222333", address: "789 Oak Avenue, Marseille", rib: "FR7630006000011122334455667", password: "password", photo: "https://res.cloudinary.com/doq2qvren/image/upload/v1724923379/development/m2kvl7kg2a53cmde03oro8x3wn82.jpg" },
#   { first_name: "Bob", last_name: "Brown", email: "bob.brown@example.com", phone: "0333444555", address: "101 Pine Road, Nice", rib: "FR7630006000013334445556667", password: "password" },
# ]




# Créer un utilisateur avec une photo
file=URI.open("https://images.pexels.com/photos/2182970/pexels-photo-2182970.jpeg?auto=compress&cs=tinysrgb&w=800")

user = User.create!(first_name: "John", last_name: "Doe", email: "johndoe@mail.com", phone: "0123456789", address: "123 Main Street, Paris", rib: "FR7630006000011234567890189", password: "password")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save!

file2=URI.open("https://images.pexels.com/photos/18108130/pexels-photo-18108130/free-photo-of-nature-ensoleille-soleil-mode.jpeg?auto=compress&cs=tinysrgb&w=800")

user2 = User.create!(first_name: "Jane", last_name: "smith", email: "janesmith@mail.com", phone: "0123456789", address: "123 Main Street, Paris", rib: "FR7630006000011234567890189", password: "password")
user2.photo.attach(io: file2, filename: "profile2.png", content_type: "image/png")
user2.save!

file3=URI.open("https://images.pexels.com/photos/718978/pexels-photo-718978.jpeg?auto=compress&cs=tinysrgb&w=800")

user3 = User.create!(first_name: "Alice", last_name: "Johnson", email: "alicejohnson@mail.com", phone: "0123456789", address: "123 Main Street, Paris", rib: "FR7630006000011234567890189", password: "password")
user3.photo.attach(io: file3, filename: "profile2.png", content_type: "image/png")
user3.save!

file4=URI.open("https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=800")

user4= User.create!(first_name: "Bob", last_name: "Brown", email: "bobbrown@mail.com", phone: "0123456789", address: "123 Main Street, Paris", rib: "FR7630006000011234567890189", password: "password")
user4.photo.attach(io: file4, filename: "profile2.png", content_type: "image/png")
user4.save!



puts "Created #{User.count} users."
p "creating EDF app"

edf = App.new
edf.logo = "/app/assets/images/edf.png"

edf.name = "EDF"
edf.url_redirections = {
  address: "https://particulier.edf.fr/fr/accueil/espace-client/mon-compte/changer-mon-adresse-de-facturation.html" ,
  rib: "https://www.edf.fr/entreprises/faq-entreprises/contrat/modifier-votre-contrat/comment-communiquer-un-nouveau-rib-pour-payer-vos-factures-edf-en-ligne"
}

edf.save!


p "creating ENGIE app"

engie = App.new
engie.logo = "/app/assets/images/engie.jpg"

engie.name =	"ENGIE"
engie.url_redirections = {
  address: "https://particuliers.engie.fr/aide-contact.html?question=vous-demenagez-quelles-demarches-effectuer",
  rib: "https://particuliers.engie.fr/aide-contact.html?question=comment-changer-mes-coordonnees-bancaires"
}
engie.save!


p "creating ENI app"

eni = App.new
eni.logo = "/app/assets/images/eni.png"

eni.name = "ENI"
eni.url_redirections ={

  address:"https://fr.eni.com/particuliers/demenager-eni" ,
  rib: "https://fr.eni.com/particuliers/faq/paiements"
}

eni.save!


# Administrations Publique

p "creating Impot app"

impot_gouv = App.new
impot_gouv.logo = "/app/assets/images/impot.jpg"

impot_gouv.name = "Impot gouv"
impot_gouv.url_redirections = {
 address: "https://www.impots.gouv.fr/particulier/questions/je-viens-de-demenager-quelles-demarches-dois-je-accomplir-aupres-de",
 rib: "https://www.impots.gouv.fr/particulier/questions/comment-modifier-mes-coordonnees-bancaires-mon-rib-pour-payer-mes-impots#:~:text=Pour%20effectuer%20cette%20modification%2C%20rendez,%C3%A0%20jour%20vos%20coordonn%C3%A9es%20bancaires%20%C2%BB"

}

impot_gouv.save!


p"creating AMELI app"

ameli = App.new
ameli.logo = "/app/assets/images/ameli.png"

ameli.name = "Ameli"
ameli.url_redirections = {
  address: "https://www.ameli.fr/assure/adresses-et-contacts/un-changement-de-situation/declarer-un-changement-de-coordonnees/declarer-une-nouvelle-adresse-postale" ,
  rib:"https://www.ameli.fr/assure/adresses-et-contacts/un-changement-de-situation/declarer-un-changement-de-coordonnees/declarer-un-changement-de-compte-bancaire"
}

ameli.save!



p "creating France Travail app"

france_travail = App.new
france_travail.logo = "/app/assets/images/francetravail.png"

france_travail.name = "France Travail"
france_travail.url_redirections = {
  address: "https://www.francetravail.fr/faq/candidat/ma-situation-change/actualisation-et-changement-de-s/changement-de-situation-administ/je-change-dadresse--que-dois-je.html" ,
  rib: "https://www.francetravail.fr/faq/candidat/ma-situation-change/actualisation-et-changement-de-s/changement-de-situation-administ/changer-de-rib-france-travail.html"
}

france_travail.save!



p "creating CAF app"

caf = App.new
caf.logo = "/app/assets/images/caf.png"

caf.name = "Caf"
caf.url_redirections = {
  address: "https://www.caf.fr/allocataires/aides-et-demarches/ma-situation/logement/je-demenage" ,
  rib: "https://www.caf.fr/allocataires/caf-de-la-marne/offre-de-service/vie-personnelle/vous-changez-de-domiciliation-bancaire-prevenez-la-caf-au-plus-vite#:~:text=d'Allocations%20familiales-,Vous%20changez%20de%20domiciliation%20bancaire%2C%20pr%C3%A9venez%20la%20Caf%20au%20plus,paiement%20de%20vos%20prestations%20mensuelles"
}

caf.save!



p "creating La POSTE app"

laposte = App.new
laposte.logo = "/app/assets/images/laposte.jpg"

laposte.name = "laPoste"
laposte.url_redirections = {
  address: "https://www.laposte.fr/demenager/comment-faire-changement-adresse"
}

laposte.save!

 # Assurances et Mutelles

p "creating generali app"

generali = App.new
generali.logo = "/app/assets/images/generali.jpg"

generali.name = "Generali"
generali.url_redirections = {
addrese: "https://www.generali.fr/agence/lecomte/aquitaine/assurance/je-demenage#:~:text=Avec%20Generali%2C%20profitez%20d'un%20d%C3%A9m%C3%A9nagement%20sans%20stress&text=Avec%20Generali%2C%20tout%20est%20simplifi%C3%A9,adapt%C3%A9%20%C3%A0%20votre%20nouvelle%20habitation" ,
rib: "https://www.generali.fr/aide/user-question/modifie-mon-rib#:~:text=Je%20veux%20changer%20les%20coordonn%C3%A9es,choisir%20%3A%20Changement%20de%20coordonn%C3%A9es%20bancaires."
}

generali.save!


p "creating MACSF app"

macsf = App.new
macsf.logo = "/app/assets/images/macsf.jpg"

macsf.name = "MACSF"
macsf.url_redirections = {
  address: "https://www.macsf.fr/vie-pratique/habitation/je-demenage-aide-au-demenagement" ,
  rib: "https://www.macsf.fr/aide-et-contact/espace-personnel/questions-frequentes-espace-personnel#:~:text=Vous%20pouvez%20changer%20le%20compte,cliquez%20sur%20Changer%20de%20compte."
 }

macsf.save!


p "creating Swisslife app"

swisslife = App.new
swisslife.logo = "/app/assets/images/swisslife.png"

swisslife.name = "Swisslife"
swisslife.url_redirections = {
   address: "https://www.swisslife-select.ch/fr/decidez-vous-meme/evenements-delavie/umzug.html" ,
   rib: "https://myswisslife.fr/connection/login"
}

swisslife.save!




p "creating Allianz app"

allianz = App.new
allianz.logo = "/app/assets/images/allianz.jpg"

allianz.name = "Allianz"
allianz.url_redirections = {
  address: "https://www.allianz.fr/assurance-particulier/projet-vie/preparer-son-demenagement.html" ,
  rib: "https://www.allianz.fr/assurance-particulier/service-client/mon-allianz-mobile.html"
}

allianz.save!



# BANQUES

p "creating Crédit Agricole app"

credit_agricole = App.new
credit_agricole.logo = "/app/assets/images/creditagricole.jpg"

credit_agricole.name = "Credit Agricole"
credit_agricole.url_redirections = {
 address: "https://www.credit-agricole.fr/particulier/conseils/magazine/tout-un-mag/demenagement-les-10-reflexes-du-credit-agricole.html#:~:text=PR%C3%89VENIR%20SON%20BANQUIER&text=Ou%20vous%20%C3%AAtes%20d%C3%A9j%C3%A0%20client,ou%20de%20suivre%20ces%20d%C3%A9marches" ,
 rib: "https://www.credit-agricole.fr/particulier/conseils/magazine/tout-un-mag/comment-changer-de-banque-avec-la-loi-macron-c-est-facile.html"
 }

credit_agricole.save!



p "creating  BNP app"

bnp = App.new
bnp.logo = "/app/assets/images/bnp.jpg"

bnp.name = "BNP"
bnp.url_redirections = {
 address: "https://mabanque.bnpparibas/fr/gerer/comptes-et-formules/gerer-ses-comptes/demenager-formalites" ,
 rib: "https://mabanque.bnpparibas/fr/gerer/services-lies-compte/options-et-services/justificatifs-informations-personnelles"
 }

bnp.save!


p "creating  HelloBank app"

hellobank = App.new
hellobank.logo = "/app/assets/images/hellobank.jpg"

hellobank.name = "HelloBank"
hellobank.url_redirections = {
 address:"https://www.hellobank.fr/faq/comment-modifier-mon-adresse-postale.html#:~:text=Reponse%3A,puis%20sur%20%22Mon%20adresse%22" ,
 rib: "https://www.hellobank.fr/lexique/changement-de-coordonnees-bancaires/#:~:text=Pour%20que%20le%20changement%20de,bancaire%20d%C3%A8s%20le%20mois%20suivant.&text=Les%20plus%20d'Hello%20bank!"
}

hellobank.save!



p "creating  Societe Generale app"

societe_generale = App.new
societe_generale.logo = "/app/assets/images/societe_generale.png"
societe_generale.name = "societe generale"
societe_generale.url_redirections ={
 address:"https://particuliers.sg.fr/nos-conseils/comptes-et-cartes/demenage-change-banque" ,
 rib: "https://particuliers.sg.fr/services-en-ligne/mobilite-bancaire-service-bienvenue"
}

societe_generale.save!

 # Telecommunication

p "creating SFR app"

sfr = App.new
sfr.logo = "/app/assets/images/sfr.jpg"

sfr.name = "SFR"
sfr.url_redirections = {
  address: "https://www.sfr.fr/offre-internet/demenagement?esl-k=google%7Cng%7Cc443888133540%7Cmp%7Ckd%C3%A9m%C3%A9nagement%20sfr%7Cp%7Ct%7Cdc%7Ca105645464840%7Cg10371243279&gclsrc=aw.ds&sfrcpid=t1_google_fixe&utm_source=google&utm_medium=cpc&utm_campaign=m_fixe&utm_term=&utm_content=&gad_source=1&gclid=Cj0KCQjww5u2BhDeARIsALBuLnNiPci-kbJHzepewqPvkZaTG52W09zz3Hho8UpppHxHRHecti0EGYwaAs4JEALw_wcB&r=61670133" ,
  rib: "https://assistance.sfr.fr/gestion-client/offre-contrat/maj-coordonnees-bancaires-espace-client.html"
 }

sfr.save!


p "creating ORANGE app"

orange = App.new
orange.logo = "/app/assets/images/orange.png"

orange.name = "Orange"
orange.url_redirections = {
  address: "https://www.orange.be/fr/produits-et-services/internet-tv-mobile/demenagement-love?utm_source=google&utm_medium=cpc&utm_campaign=b2c-act-fr-love-overview-alwayson-bra-movers&gad_source=1&gclid=Cj0KCQjww5u2BhDeARIsALBuLnMTi60Iv42i1gtsKfnYSrvCaQGvvLdX2kgKii0Lq-7DHBrQPxZQCjYaAofCEALw_wcB" ,
  rib: "https://orangeetmoi.orange.fr/"
  }

orange.save!


p "creating FREE app"

free = App.new
free.logo = "/app/assets/images/free.png"

free.name = "Free"
free.url_redirections = {
  address: "https://www.free.fr/freebox/demenagement/" ,
  rib: "https://assistance.free.fr/articles/904"
 }
free.save!



p "creating Bouygues Telecom app"

bouyguestelecom = App.new
bouyguestelecom.logo = "/app/assets/images/bouyguestelecom.jpg"

bouyguestelecom.name = "BouyguesTelecom"
bouyguestelecom.url_redirections = {
   address: "https://www.bouyguestelecom.fr/offres-internet/demenagement" ,
   rib: "https://www.assistance.bouyguestelecom.fr/s/article/coordonnees-bancaires-adresse-facturation"
  }
bouyguestelecom.save!



  p "creating SOSH app"

sosh = App.new
sosh.logo = "/app/assets/images/sosh.png"

sosh.name = "Sosh"
sosh.url_redirections = {
   address: "https://shop.sosh.fr/demenagement" ,
   rib: "https://communaute.sosh.fr/t5/Ma-facture-mon-paiement-Mon/Changement-de-compte-bancaire-pour-pr%C3%A9l%C3%A8vements/td-p/2357610"
  }
sosh.save!

   # DIVERTISSEMENTS

p "creating Disney app"

disney = App.new
disney.logo = "/app/assets/images/disney.png"

disney.name = "Disney"
disney.url_redirections = {
  address: "https://www.disneyplus.com/identity/login/enter-email?pinned=true"
}
disney.save!



p "creating Amazon app"


amazon = App.new
amazon.logo = "/app/assets/images/amazon.png"

amazon.name = "Amazon"
amazon.url_redirections = {
  address: "https://www.amazon.fr/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.fr%2Fcompte%2Fs%3Fk%3Dvotre%2Bcompte%26ref_%3Dnav_ya_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=frflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0"
}
amazon.save!


p "creating Spotify app"

spotify = App.new
spotify.logo = "/app/assets/images/spotify.png"

spotify.name = "Spotify"
spotify.url_redirections = {
 address: "https://accounts.spotify.com/fr/login" ,
 rib: "https://support.spotify.com/fr/article/update-payment-details/"

}
spotify.save!



p "creating Netflix app"

netflix = App.new
netflix.logo = "/app/assets/images/netflix.jpg"

netflix.name = "Netflix"
netflix.url_redirections = {
  address: "https://www.netflix.com/login" ,
  rib: "https://help.netflix.com/fr/node/244"

}
netflix.save!

User.all.each do |user|
  App.all.shuffle.sample(rand(3..5)).each do |app|
    UserApp.create!(
      user: user,
      app: app,
      phone: user.phone,
      address: user.address,
      email: user.email,
      rib: user.rib,
      date_prelevement: Date.today,
      date_renouvellement: Date.today + 1.year,
      montant: rand(20..100),
      name: "#{user.first_name}'s #{app.name}"
    )
  end
  p "tout est ok"
end
