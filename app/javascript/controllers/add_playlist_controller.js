import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-playlist"
export default class extends Controller {
  static targets =  ["button"]
  connect() {
    console.log("coucou")
    console.log(this.buttonTarget)
  }
  open_pages(){
    console.log("coucou")
    this.buttonTarget.classList.remove("d-none")
  }
}
