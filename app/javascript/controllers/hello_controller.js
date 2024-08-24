import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["userCard", "moreInfo"]
  connect() {
    console.log("Hello, Stimulus!", this.element)
  }

  grow(event) {
    // if (this.userCardTarget.classList.contains("expanded")) {
    //   this.userCardTarget.classList.remove("expanded");
    //   this.moreInfoTarget.style.display = "none";
    // }
    // else {
    //   this.userCardTarget.classList.add("expanded");
    //   this.moreInfoTarget.style.display = "block";
    // }

    if (event.currentTarget.classList.contains("expanded")) {
      console.log("expanded");
      event.currentTarget.classList.remove("expanded");
      event.currentTarget.querySelector("#moreInfo").style.display = "none";
    }
    else {
      event.currentTarget.classList.add("expanded");
      event.currentTarget.querySelector("#moreInfo").style.display = "block";
    }

  }
}
// document.addEventListener("DOMContentLoaded", function () {
//   const userCard = document.getElementById("userCard");
//   const moreInfo = document.getElementById("moreInfo");

//   userCard.addEventListener("click", function () {
//     if (userCard.classList.contains("expanded")) {
//       moreInfo.style.display = "none";
//       userCard.classList.remove("expanded");
//     } else {
//       moreInfo.style.display = "block";
//       userCard.classList.add("expanded");
//     }
//   });
// });
