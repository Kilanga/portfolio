import { Controller } from "stimulus"
import { Modal } from "bootstrap"

export default class extends Controller {
  static targets = ["form", "modal"]

  connect() {
    this.modal = new Modal(this.modalTarget)
  }

  submit(event) {
    event.preventDefault()
    this.modal.show()
  }
}
