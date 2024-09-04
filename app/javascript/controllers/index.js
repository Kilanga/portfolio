import { Application } from "@hotwired/stimulus"
import ModalController from "./modal_controller"

// Initialiser Stimulus
const application = Application.start()

// Enregistrer les contrôleurs manuellement
application.register("modal", ModalController)

// Configurer l'expérience de développement de Stimulus
application.debug = false
window.Stimulus = application

export { application }
