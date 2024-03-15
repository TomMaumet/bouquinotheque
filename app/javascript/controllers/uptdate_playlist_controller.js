import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="uptdate-playlist"
export default class extends Controller {
  static targets = ["title","form","pen"]

  display_title(){
    this.titleTarget.classList.add("d-none")
    this.formTarget.classList.remove("d-none")
    this.penTarget.classList.add("d-none")
  }
}
