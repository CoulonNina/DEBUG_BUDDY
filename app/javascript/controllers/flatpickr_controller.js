import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {

  static targets = [ 'start', 'end' ]
  connect() {
    console.log("Hello flat")
    flatpickr(".datepickr", {
      enableTime: false,
      minDate: new Date(),
    })
  }
}
