import { Controller } from "@hotwired/stimulus";
// import SimpleBar from 'simplebar'
import { Sidebar } from "@coreui/coreui";
export default class extends Controller {
  static targets = [ "source" ]

  connect() {
    // const simpleBar = new SimpleBar(document.getElementById("#sidebar"));
    // this.toggle()
    var mySidebar = document.querySelector('#sidebar')
    var sidebar = new Sidebar(mySidebar)
  }

  toggle() {
    console.log('toggle')
    // debugger;
    const sidebarId = document.querySelector("#sidebar")
    Sidebar.getInstance(document.getElementById("sidebar")) && Sidebar.getInstance(document.getElementById("sidebar")).toggle();
  }
}
