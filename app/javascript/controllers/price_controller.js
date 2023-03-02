import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["startDate", "endDate", "priceTag"]

  connect() {
    // console.log(this.startDateTarget.value)
    // console.log(this.endDateTarget.value)

  }

  result() {

    // console.log("coucou");

    // console.log(this.startDateTarget.value)
    // console.log(this.endDateTarget.value)
    // console.log(this.element.dataset.price)

    const end = new Date(this.endDateTarget.value)
    const start =  new Date(this.startDateTarget.value)
    const time = Math.abs(end - start)
    const basePrice = this.element.dataset.price
    const total =( time * basePrice)/86400000
    // console.log(total)
    if (this.endDateTarget.value && this.startDateTarget.value) {
      this.priceTagTarget.innerHTML = `${total} €`
    }
  }
}
