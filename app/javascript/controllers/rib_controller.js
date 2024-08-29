import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="rib"
export default class extends Controller {
  static targets = ["decrypt", "encrypt"]

  connect() {
    // Le code à exécuter lors de la connexion du controller peut être ajouté ici
    console.log("Rib controller connected");
  }

  toggle(event) {
    this.encryptTarget.classList.toggle("d-none")
    this.decryptTarget.classList.toggle("d-none")
  }



}
