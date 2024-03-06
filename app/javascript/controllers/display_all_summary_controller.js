import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-all-summary"
export default class extends Controller {
  static targets = ["summary", "summary_all", "show", "hide"]

  connect() {
    console.log("coucou")
    console.log(this.summaryTarget)
  }

  display() {
    this.summaryTarget.classList.toggle("d-none")
    this.showTarget.classList.toggle("d-none")
    this.summary_allTarget.classList.toggle("d-none")
    this.hidTarget.classList.toggle("d-none")
  }
}
