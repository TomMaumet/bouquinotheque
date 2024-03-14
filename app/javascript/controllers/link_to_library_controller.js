import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="link-to-library"
export default class extends Controller {
static targets = ["link", "libraryName", "libraries"]

  connect() {
    console.log(this.libraryNameTargets)
  }

  redirect() {
    library = this.libraryNameTargets.find((this.linkTarget.innerHTML), this.linkTarget.innerHTML === this.libraryNameTarget.innerHTML)
    console.log(library)
  }
}
