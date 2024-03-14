import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="link-to-library"
export default class extends Controller {
static targets = ["link", "libraryName", "libraries"]

  connect() {
    contole.log(typeof this.librariesTarget)
  }

  redirect() {
    this.linkTarget.innerHTML === this.libraryNameTarget.innerHTML
  }
}
