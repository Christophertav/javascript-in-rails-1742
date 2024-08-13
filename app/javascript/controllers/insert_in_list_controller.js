import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ['form', 'items']
  connect() {
    console.log('insert in list');
    console.log(this.itemsTarget);
    console.log(this.formTarget);
  }

  insertItem(event) {
    event.preventDefault();
    fetch(this.formTarget.action, {
      method: "POST", // Could be dynamic with Stimulus values
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        this.formTarget.outerHTML = data.form

        if (data.inserted_item) {
          this.itemsTarget.insertAdjacentHTML('beforeend', data.inserted_item)
        }
      })
  }
}
