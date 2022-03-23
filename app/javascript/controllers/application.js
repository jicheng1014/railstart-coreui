import { Application } from "@hotwired/stimulus"
import { registerControllers } from 'stimulus-vite-helpers'

const application = Application.start()
const controllers  = import.meta.globEager('./**/*_controller.js')

registerControllers(application, controllers)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }