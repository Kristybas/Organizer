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
p "creating EDF app"
edf = App.new
edf.nom = "EDF"
edf.url_redirections = {
  rib: "https://www.edf.fr/entreprises/faq-entreprises/contrat/modifier-votre-contrat/comment-communiquer-un-nouveau-rib-pour-payer-vos-factures-edf-en-ligne"
}

edf.save!

p "creating"
engie = App.new
engie.nom =	"ENGIE"
engie.url_redirections = {
  address: "https://particuliers.engie.fr/aide-contact.html?question=vous-demenagez-quelles-demarches-effectuer",
  rib: "https://particuliers.engie.fr/aide-contact.html?question=comment-changer-mes-coordonnees-bancaires"
}
engie.save!

p "creating"
eni = App.new
eni.nom = "ENI"
eni.url_redirections ={
  addresse:"https://fr.eni.com/particuliers/demenager-eni" ,
  rib: "https://fr.eni.com/particuliers/faq/paiements"
}

eni.save!


# Administration publique
p "creating Impot app"
impot_gouv = App.new
impot_gouv.nom = "Impot"
impot_gouv.url_redirections = {
  addresse: "https://www.impots.gouv.fr/particulier/questions/je-viens-de-demenager-quelles-demarches-dois-je-accomplir-aupres-de",
  rib: "https://www.impots.gouv.fr/particulier/questions/comment-modifier-mes-coordonnees-bancaires-mon-rib-pour-payer-mes-impots#:~:text=Pour%20effectuer%20cette%20modification%2C%20rendez,%C3%A0%20jour%20vos%20coordonn%C3%A9es%20bancaires%20%C2%BB."
}

impot.save!

p"creating Ameli app"
ameli = App.new
ameli.nom = "Ameli"
ameli.url  ={
  addresse: "https://www.ameli.fr/assure/adresses-et-contacts/un-changement-de-situation/declarer-un-changement-de-coordonnees/declarer-une-nouvelle-adresse-postale" ,
 rib:"https://www.ameli.fr/assure/adresses-et-contacts/un-changement-de-situation/declarer-un-changement-de-coordonnees/declarer-un-changement-de-compte-bancaire"
}

ameli.save!



p "creating France Travail app"

france_travail = App.new
france_travail.nom = "France Travail"
france_travail.url_redirections = {
  address: "https://www.francetravail.fr/faq/candidat/ma-situation-change/actualisation-et-changement-de-s/changement-de-situation-administ/je-change-dadresse--que-dois-je.html
",
  rib: "https://www.francetravail.fr/faq/candidat/ma-situation-change/actualisation-et-changement-de-s/changement-de-situation-administ/changer-de-rib-france-travail.html"
}

france_travail.save!


p "creating Caf app"
caf = App.new
caf.nom = "CaF"
caf.url_redirections = {
  address: "https://www.caf.fr/allocataires/aides-et-demarches/ma-situation/logement/je-demenage" ,
  rib: "https://www.caf.fr/allocataires/caf-de-la-marne/offre-de-service/vie-personnelle/vous-changez-de-domiciliation-bancaire-prevenez-la-caf-au-plus-vite#:~:text=d'Allocations%20familiales-,Vous%20changez%20de%20domiciliation%20bancaire%2C%20pr%C3%A9venez%20la%20Caf%20au%20plus,paiement%20de%20vos%20prestations%20mensuelles"
}

caf.save!



 p "creating la poste app"
 laposte = App.new
 laposte.nom = "laPoste"
 laposte.url_redirections = {

 addresse: "https://www.laposte.fr/demenager/comment-faire-changement-adresse
"
 }

 laposte.save!

 #Assurances et Mutelles

 #Banques

 #Télecommunication
 p "crating sfr app"
 sfr = App.new
 sfr.nom = "SFR"
 sfr.url_redirections = {
  addresse: "https://www.sfr.fr/offre-internet/demenagement?esl-k=google%7Cng%7Cc443888133540%7Cmp%7Ckd%C3%A9m%C3%A9nagement%20sfr%7Cp%7Ct%7Cdc%7Ca105645464840%7Cg10371243279&gclsrc=aw.ds&sfrcpid=t1_google_fixe&utm_source=google&utm_medium=cpc&utm_campaign=m_fixe&utm_term=&utm_content=&gad_source=1&gclid=Cj0KCQjww5u2BhDeARIsALBuLnNiPci-kbJHzepewqPvkZaTG52W09zz3Hho8UpppHxHRHecti0EGYwaAs4JEALw_wcB&r=61670133" ,
  rib: "https://assistance.sfr.fr/gestion-client/offre-contrat/maj-coordonnees-bancaires-espace-client.html"
 }

 sfr.save!
