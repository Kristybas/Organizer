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


p "creating ENGIE app"
engie = App.new
engie.nom =	"ENGIE"
engie.url_redirections = {
  address: "https://particuliers.engie.fr/aide-contact.html?question=vous-demenagez-quelles-demarches-effectuer",
  rib: "https://particuliers.engie.fr/aide-contact.html?question=comment-changer-mes-coordonnees-bancaires"
}
engie.save!


p "creating ENI app"
eni = App.new
eni.nom = "ENI"
eni.url_redirections = {
  addresse:"https://fr.eni.com/particuliers/demenager-eni" ,
  rib: "https://fr.eni.com/particuliers/faq/paiements"
}

eni.save!


# Administrations Publique

p "creating Impot app"
impot_gouv = App.new
impot_gouv.nom = "Impot_gouv"
impot_gouv.url_redirections = {
addresse: "https://www.impots.gouv.fr/particulier/questions/je-viens-de-demenager-quelles-demarches-dois-je-accomplir-aupres-de",
rib: "https://www.impots.gouv.fr/particulier/questions/comment-modifier-mes-coordonnees-bancaires-mon-rib-pour-payer-mes-impots#:~:text=Pour%20effectuer%20cette%20modification%2C%20rendez,%C3%A0%20jour%20vos%20coordonn%C3%A9es%20bancaires%20%C2%BB."
}

impot_gouv.save!


p"creating AMELI app"
ameli = App.new
ameli.nom = "Ameli"
ameli.url_redirections  = {
  addresse: "https://www.ameli.fr/assure/adresses-et-contacts/un-changement-de-situation/declarer-un-changement-de-coordonnees/declarer-une-nouvelle-adresse-postale" ,
 rib:"https://www.ameli.fr/assure/adresses-et-contacts/un-changement-de-situation/declarer-un-changement-de-coordonnees/declarer-un-changement-de-compte-bancaire"
}

ameli.save!



p "creating France Travail app"

france_travail = App.new
france_travail.nom = "France Travail"
france_travail.url_redirections = {
  address: "https://www.francetravail.fr/faq/candidat/ma-situation-change/actualisation-et-changement-de-s/changement-de-situation-administ/je-change-dadresse--que-dois-je.html" ,
  rib: "https://www.francetravail.fr/faq/candidat/ma-situation-change/actualisation-et-changement-de-s/changement-de-situation-administ/changer-de-rib-france-travail.html"
}

france_travail.save!



p "creating CAF app"
caf = App.new
caf.nom = "CaF"
caf.url_redirections = {
  address: "https://www.caf.fr/allocataires/aides-et-demarches/ma-situation/logement/je-demenage" ,
  rib: "https://www.caf.fr/allocataires/caf-de-la-marne/offre-de-service/vie-personnelle/vous-changez-de-domiciliation-bancaire-prevenez-la-caf-au-plus-vite#:~:text=d'Allocations%20familiales-,Vous%20changez%20de%20domiciliation%20bancaire%2C%20pr%C3%A9venez%20la%20Caf%20au%20plus,paiement%20de%20vos%20prestations%20mensuelles"
}

caf.save!



 p "creating La POSTE app"
 laposte = App.new
 laposte.nom = "laPoste"
 laposte.url_redirections = {

 addresse: "https://www.laposte.fr/demenager/comment-faire-changement-adresse"
 }

 laposte.save!

 #Assurances et Mutelles

 p "creating generali app"
 generali = App.new
 generali.nom = "Generali"
 generali.url_redirections = {
 addresse: "https://www.generali.fr/agence/lecomte/aquitaine/assurance/je-demenage#:~:text=Avec%20Generali%2C%20profitez%20d'un%20d%C3%A9m%C3%A9nagement%20sans%20stress&text=Avec%20Generali%2C%20tout%20est%20simplifi%C3%A9,adapt%C3%A9%20%C3%A0%20votre%20nouvelle%20habitation" ,
 rib: "https://www.generali.fr/aide/user-question/modifie-mon-rib#:~:text=Je%20veux%20changer%20les%20coordonn%C3%A9es,choisir%20%3A%20Changement%20de%20coordonn%C3%A9es%20bancaires."}

generali.save!


 p "creating MACSF app"
macsf = App.new
 macsf.nom = "MACSF"
 macsf.url_redirections = {

 addresse: "https://www.macsf.fr/vie-pratique/habitation/je-demenage-aide-au-demenagement" ,
 rib: ""
 }

 macsf.save!

 p "creating Swisslife app"
 swisslife = App.new
 swisslife.nom = "Allianz"
 swisslife.url_redirections = {
   addresse: "https://www.swisslife-select.ch/fr/decidez-vous-meme/evenements-delavie/umzug.html" ,
   rib: "https://myswisslife.fr/connection/login"
 }

   swisslife.save!




 p "creating Allianz app"
allianz = App.new
allianz.nom = "Allianz"
allianz.url_redirections = {
  addresse: "https://www.allianz.fr/assurance-particulier/projet-vie/preparer-son-demenagement.html" ,
  rib: "https://www.allianz.fr/assurance-particulier/service-client/mon-allianz-mobile.html"
}

  allianz.save!


#Banques

 p "creating Crédit Agricole app"
 credit_agricole = App.new
 credit_agricole.nom = "Credit_Agricole"
 credit_agricole.url_redirections = {
addresse: "https://www.credit-agricole.fr/particulier/conseils/magazine/tout-un-mag/demenagement-les-10-reflexes-du-credit-agricole.html#:~:text=PR%C3%89VENIR%20SON%20BANQUIER&text=Ou%20vous%20%C3%AAtes%20d%C3%A9j%C3%A0%20client,ou%20de%20suivre%20ces%20d%C3%A9marches" ,
rib: "https://www.credit-agricole.fr/particulier/conseils/magazine/tout-un-mag/comment-changer-de-banque-avec-la-loi-macron-c-est-facile.html"
 }

 credit_agricole.save!


 p "creating  BNP app"
bnp = App.new
bnp.nom = "BNP"
bnp.url_redirections = {
addresse: "https://mabanque.bnpparibas/fr/gerer/comptes-et-formules/gerer-ses-comptes/demenager-formalites" ,
rib: "https://mabanque.bnpparibas/fr/gerer/services-lies-compte/options-et-services/justificatifs-informations-personnelles"
 }

 bnp.save!


 p "creating  HelloBank app"
hellobank = App.new
hellobank.nom = "HelloBank"
bhellobank.url_redirections = {
addresse:"https://www.hellobank.fr/faq/comment-modifier-mon-adresse-postale.html#:~:text=Reponse%3A,puis%20sur%20%22Mon%20adresse%22" ,
 rib: "https://www.hellobank.fr/lexique/changement-de-coordonnees-bancaires/#:~:text=Pour%20que%20le%20changement%20de,bancaire%20d%C3%A8s%20le%20mois%20suivant.&text=Les%20plus%20d'Hello%20bank!"
}

hellobank.save!


p "creating  Societe Generale app"
societe_generale = App.new
societe_generale.nom = "Societe_generale"
societe_generale.url_redirections = {
addresse:"https://particuliers.sg.fr/nos-conseils/comptes-et-cartes/demenage-change-banque" ,
 rib: "https://particuliers.sg.fr/services-en-ligne/mobilite-bancaire-service-bienvenue"
}

societe_generale.save!

 #Télecommunications

 p "creating SFR app"
 sfr = App.new
 sfr.nom = "SFR"
 sfr.url_redirections = {
  addresse: "https://www.sfr.fr/offre-internet/demenagement?esl-k=google%7Cng%7Cc443888133540%7Cmp%7Ckd%C3%A9m%C3%A9nagement%20sfr%7Cp%7Ct%7Cdc%7Ca105645464840%7Cg10371243279&gclsrc=aw.ds&sfrcpid=t1_google_fixe&utm_source=google&utm_medium=cpc&utm_campaign=m_fixe&utm_term=&utm_content=&gad_source=1&gclid=Cj0KCQjww5u2BhDeARIsALBuLnNiPci-kbJHzepewqPvkZaTG52W09zz3Hho8UpppHxHRHecti0EGYwaAs4JEALw_wcB&r=61670133" ,
  rib: "https://assistance.sfr.fr/gestion-client/offre-contrat/maj-coordonnees-bancaires-espace-client.html"
 }

 sfr.save!


 p "creating ORANGE app"
 orange = App.new
 orange.nom = "Orange"
 orange.url_redirections = {
  addresse: "https://www.orange.be/fr/produits-et-services/internet-tv-mobile/demenagement-love?utm_source=google&utm_medium=cpc&utm_campaign=b2c-act-fr-love-overview-alwayson-bra-movers&gad_source=1&gclid=Cj0KCQjww5u2BhDeARIsALBuLnMTi60Iv42i1gtsKfnYSrvCaQGvvLdX2kgKii0Lq-7DHBrQPxZQCjYaAofCEALw_wcB" ,
  rib: "https://orangeetmoi.orange.fr/"
  }

  orange.save!


  p "creating FREE app"
 free = App.new
 free.nom = "Free"
 free.url_redirections = {
  addresse: "https://www.free.fr/freebox/demenagement/" ,
  rib: "https://assistance.free.fr/articles/904"
 }
  free.save!


  p "creating Bouygues Telecome app"
  bouyguestelecome = App.new
  bouyguestelecome.nom = "BouyguesTelecome"
  bouyguestelecome.url_redirections = {
   addresse: "https://www.bouyguestelecom.fr/offres-internet/demenagement" ,
   rib: "https://www.assistance.bouyguestelecom.fr/s/article/coordonnees-bancaires-adresse-facturation"
  }
   bouyguestelecome.save!



   p "creating SOSH app"
  sosh = App.new
  sosh.nom = "Sosh"
  sosh.url_redirections = {
   addresse: "https://shop.sosh.fr/demenagement" ,
   rib: "https://communaute.sosh.fr/t5/Ma-facture-mon-paiement-Mon/Changement-de-compte-bancaire-pour-pr%C3%A9l%C3%A8vements/td-p/2357610"
  }
   sosh.save!
