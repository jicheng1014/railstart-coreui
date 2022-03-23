import * as Turbo from '@hotwired/turbo'
import "@src/controllers"

// import "@src/stylesheets/index"

const channels = import.meta.globEager('./**/*_channel.js')

Turbo.start()

// import ActiveStorage from '@rails/activestorage'
// ActiveStorage.start()

// Example: Import a stylesheet in app/frontend/index.css
// import '~/index.css'
console.log('Vite ⚡️ Rails')