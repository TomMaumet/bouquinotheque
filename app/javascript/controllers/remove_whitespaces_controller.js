import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "block" ]

  connect() {
    console.log("coucou")
    this.blockTarget.innerHTML = this.blockTarget.innerHTML.trim()
  }
}
