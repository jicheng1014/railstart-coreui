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
import Lightbox from 'stimulus-lightbox'
import CharacterCounter from 'stimulus-character-counter'
import Notification from 'stimulus-notification'
// import Popover from 'stimulus-popover'

// import Carousel from 'stimulus-carousel'
application.register('animated-number', AnimatedNumber)
application.register('clipboard', Clipboard)
application.register('content-loader', ContentLoader)
application.register('dropdown', Dropdown)
application.register('lightbox', Lightbox)
application.register('character-counter', CharacterCounter)
application.register('notification', Notification)
// application.register('popover', Popover)


// application.register('carousel', Carousel)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }