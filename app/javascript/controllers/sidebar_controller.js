import { Controller } from "@hotwired/stimulus";
// import SimpleBar from 'simplebar'
import { Sidebar } from "@coreui/coreui";
export default class extends Controller {
  connect() {
    // const simpleBar = new SimpleBar(document.getElementById("#sidebar"));
    // console.log('xxx')
  }

  toggle() {
    Sidebar.getInstance(document.querySelector("#sidebar")).toggle();
  }
}
