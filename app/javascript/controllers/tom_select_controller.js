import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tom-select"
export default class extends Controller {
  connect() {
    new TomSelect("#select-beast",{
      create: true,
      sortField: {
        field: "text",
        direction: "asc"
      }
    });
  }
}