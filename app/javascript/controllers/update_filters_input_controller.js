import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-filters-input"
export default class extends Controller {
  static targets = ["form", "inputTri", "inputAuthor", "inputGenre", "inputStatus", "readings", "books"]

  connect() {
  }

  triR() {
    this.#filter("tri", this.inputTriTarget, this.readingsTarget)
  }

  statusR() {
    this.#filter("reading_status", this.inputStatusTarget, this.readingsTarget)
  }

  authorR() {
    this.#filter("author", this.inputAuthorTarget, this.readingsTarget)
  }

  genreR() {
    this.#filter("genre", this.inputGenreTarget, this.readingsTarget)
  }

  triB() {
    this.#filter("tri", this.inputTriTarget, this.booksTarget)
  }

  authorB() {
    this.#filter("author", this.inputAuthorTarget, this.booksTarget)
  }

  genreB() {
    this.#filter("genre", this.inputGenreTarget, this.booksTarget)
  }

  #filter(action, targetI, targetC) {
    const url = `${this.formTarget.action}?${action}=${targetI.value}`
    console.log(url)
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      targetC.innerHTML = data
    })
  }
}
