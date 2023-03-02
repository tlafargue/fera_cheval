import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["pour une course pleine d'adrénaline", "pour une balade en forêt", "pour jouer au cow boy", "pour aller au travail"],
      typeSpeed: 50,
      loop: true
    })
  }
}
