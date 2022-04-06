import * as Turbo from '@hotwired/turbo'
import "@src/controllers"
import 'simplebar';
import 'lightgallery/css/lightgallery.css'

// import coreui from '@coreui/coreui'
import { Toast, Popover, Tab, Dropdown } from '@coreui/coreui'

const channels = import.meta.globEager('./**/*_channel.js')
Turbo.start()

// import ActiveStorage from '@rails/activestorage'
// ActiveStorage.start()

// Example: Import a stylesheet in app/frontend/index.css
// import '~/index.css'


Array.from(document.querySelectorAll('.toast'))
    .forEach(toastNode => new Toast(toastNode))

// https://coreui.io/docs/components/popovers/
var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-coreui-toggle="popover"]'))
var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
  return new Popover(popoverTriggerEl)
})

// https://getbootstrap.com/docs/5.1/forms/validation/#custom-styles
// Example starter JavaScript for disabling form submissions if there are invalid fields
// (function () {
//   'use strict'

//   // Fetch all the forms we want to apply custom Bootstrap validation styles to
//   var forms = document.querySelectorAll('.needs-validation')

//   // Loop over them and prevent submission
//   Array.prototype.slice.call(forms)
//     .forEach(function (form) {
//       form.addEventListener('submit', function (event) {
//         if (!form.checkValidity()) {
//           event.preventDefault()
//           event.stopPropagation()
//         }

//         form.classList.add('was-validated')
//       }, false)
//     })
// })();
// 
// var triggerTabList = [].slice.call(document.querySelectorAll('#sidebar .nav-group > .nav-link'))
// triggerTabList.forEach(function (triggerEl) {
//   var tabTrigger = new Tab(triggerEl)

//   triggerEl.addEventListener('click', function (event) {
//     event.preventDefault()
//     tabTrigger.show()
//   })
// })

var dropdownElementList = [].slice.call(document.querySelectorAll('.dropdown-toggle'))
var dropdownList = dropdownElementList.map(function (dropdownToggleEl) {
  return new Dropdown(dropdownToggleEl)
})
console.log('Vite ⚡️ Rails')