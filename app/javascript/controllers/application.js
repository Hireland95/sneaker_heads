import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }


const form = document.querySelector("#form-target")
const button = document.querySelector("#btn-target")

button.addEventListener("click", (e) => {
  form.classList.toggle("d-none");
});
