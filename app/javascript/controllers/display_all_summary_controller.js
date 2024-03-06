import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-all-summary"
export default class extends Controller {
  static targets = ["summary"]
  
  connect() {
    console.log(this.summaryTarget)
  }
}
