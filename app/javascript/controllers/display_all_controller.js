import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-all-summary"
export default class extends Controller {
  static targets = ["summary", "summary_all", "form", "button"]

  connect() {
    console.log("coucou")
    console.log(this.formTarget)
  }

  displaySummary() {
    this.summaryTarget.classList.toggle("d-none")
    this.summary_allTarget.classList.toggle("d-none")
  }

  displayForm() {
    this.formTarget.classList.toggle("d-none")
    this.buttonTarget.classList.toggle("d-none")
  }
}
