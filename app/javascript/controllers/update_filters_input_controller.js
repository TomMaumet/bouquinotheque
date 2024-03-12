import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-filters-input"
export default class extends Controller {
  static targets = ["form", "inputTri", "inputAuthor", "inputGenre", "inputStatus", "readings"]

  connect() {
  }

  tri() {
    const url = `${this.formTarget.action}?tri=${this.inputTriTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      console.log(data)
      this.readingsTarget.innerHTML = data
    })
  }

  status() {
    const url = `${this.formTarget.action}?status=${this.inputTriTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.readingsTarget.innerHTML = data
    })
  }

  author() {
    const url = `${this.formTarget.action}?author=${this.inputAuthorTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.readingsTarget.innerHTML = data
    })
  }

  genre() {
    const url = `${this.formTarget.action}?genre=${this.inputGenreTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.readingsTarget.innerHTML = data
    })
  }
}
