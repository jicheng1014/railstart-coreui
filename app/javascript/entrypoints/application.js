import * as Turbo from '@hotwired/turbo'
import "@src/controllers"
// import '@coreui/coreui/dist/css/coreui.min.css';
// import coreui from '@coreui/coreui'
import '@coreui/coreui/dist/css/coreui.min.css'

import 'simplebar';


import { Toast } from '@coreui/coreui'

// import "@src/stylesheets/index"

const channels = import.meta.globEager('./**/*_channel.js')

Turbo.start()

// import ActiveStorage from '@rails/activestorage'
// ActiveStorage.start()

// Example: Import a stylesheet in app/frontend/index.css
// import '~/index.css'
console.log('Vite ⚡️ Rails')