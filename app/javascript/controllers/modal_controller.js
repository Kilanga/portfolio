import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

export default class extends Controller {
  static targets = ["modal", "form"]

  connect() {
    this.modal = new Modal(this.modalTarget)
  }

  async submit(event) {
    event.preventDefault()

    const url = this.formTarget.action
    const formData = new FormData(this.formTarget)

    try {
      const response = await fetch(url, {
        method: 'POST',
        body: formData,
        headers: {
          'X-Requested-With': 'XMLHttpRequest',
          'Accept': 'application/json'
        }
      })

      if (response.ok) {
        const data = await response.json()
        this.modal.show()
        this.formTarget.reset()
      } else {
        console.error("Erreur lors de la soumission du formulaire")
      }
    } catch (error) {
      console.error("Erreur lors de la soumission du formulaire", error)
    }
  }
}
