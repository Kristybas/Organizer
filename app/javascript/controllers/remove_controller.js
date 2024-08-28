import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="remove"
export default class extends Controller {
  static targets = ["input"]
  connect() {
    this.delete()

  }

  delete() {
    const inputs = this.element.querySelectorAll('input.is-valid');
    inputs.forEach(input => {
      input.classList.remove('is-valid');
    });
  }
}
