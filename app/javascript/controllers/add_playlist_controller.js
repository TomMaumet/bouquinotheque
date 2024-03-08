import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-playlist"
export default class extends Controller {
  static targets =  ["page"]

  open_page(){
    this.pageTarget.classList.remove("d-none")
  }
  close_page(){
    this.pageTarget.classList.add("d-none")
  }
}
