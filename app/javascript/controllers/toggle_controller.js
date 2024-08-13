import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ['togglableElement']
  static values = {
    klass: String
  }
  connect() {
    console.log(this.klassValue);
  }

  fire(event) {
    this.togglableElementTarget.classList.toggle(this.klassValue)
  }
}
