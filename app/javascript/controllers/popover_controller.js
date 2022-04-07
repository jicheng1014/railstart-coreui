import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['card', 'content']
  static values = {
    url: ''
  }
  connect() {

  }

  show = async (event) => {
    console.log('event', event, event.currentTarget)
    let content = null

    if (this.hasContentTarget) {
      content = this.contentTarget.innerHTML
    } else {
      content = await this.fetch()
    }

    if (!content) return

    const fragment = document.createRange().createContextualFragment(content)
    // debugger;
    event.target?.appendChild(fragment)
  }

  hide () {
    if (this.hasCardTarget) {
      this.cardTarget.remove()
    }
  }

  fetch = async () =>  {
    if (!this.remoteContent) {
      if (!this.hasUrlValue) {
        console.error('[stimulus-popover] You need to pass an url to fetch the popover content.')
        return
      }

      const response = await fetch(this.urlValue)
      this.remoteContent = await response.text()
    }

    return this.remoteContent
  }
}
