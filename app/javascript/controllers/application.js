import { Application } from "@hotwired/stimulus"
import { registerControllers } from 'stimulus-vite-helpers'

const application = Application.start()
const controllers  = import.meta.globEager('./**/*_controller.js')
registerControllers(application, controllers)


// other controller
import AnimatedNumber from 'stimulus-animated-number'
import Clipboard from 'stimulus-clipboard'
import ContentLoader from 'stimulus-content-loader'
import Dropdown from 'stimulus-dropdown'

// import Carousel from 'stimulus-carousel'
application.register('animated-number', AnimatedNumber)
application.register('clipboard', Clipboard)
application.register('content-loader', ContentLoader)
application.register('dropdown', Dropdown)

// application.register('carousel', Carousel)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }