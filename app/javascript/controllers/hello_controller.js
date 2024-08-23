import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}
document.addEventListener("DOMContentLoaded", function () {
  const userCard = document.getElementById("userCard");
  const moreInfo = document.getElementById("moreInfo");

  userCard.addEventListener("click", function () {
    if (userCard.classList.contains("expanded")) {
      moreInfo.style.display = "none";
      userCard.classList.remove("expanded");
    } else {
      moreInfo.style.display = "block";
      userCard.classList.add("expanded");
    }
  });
});
