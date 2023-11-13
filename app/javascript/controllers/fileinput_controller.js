import { Controller } from "@hotwired/stimulus";
// Connects to data-controller="admin--fileinput"
export default class extends Controller {

  connect(){
    console.log('hi')
  }
  photoPreview() {
    const input = this.element
    const parentInput = input.closest('.fileinput-button')
    console.log(parentInput)
    const targetPreview = parentInput.querySelector(this.element.dataset.targetPreview)
    const targetLabel = targetPreview.nextElementSibling;

    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        targetPreview.setAttribute('src', e.target.result);
        targetLabel.classList.add('change-photo-wrapper--hover');
        targetLabel.querySelector('.label').innerHTML = 'Change Photo'
      };

      reader.readAsDataURL(input.files[0]);
    }
  }
}