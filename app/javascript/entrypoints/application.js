import * as Turbo from '@hotwired/turbo'
import "@src/controllers"
// import coreui from '@coreui/coreui'
import 'simplebar';
import { Toast } from '@coreui/coreui'

const channels = import.meta.globEager('./**/*_channel.js')

Turbo.start()

// import ActiveStorage from '@rails/activestorage'
// ActiveStorage.start()

// Example: Import a stylesheet in app/frontend/index.css
// import '~/index.css'
console.log('Vite ⚡️ Rails')