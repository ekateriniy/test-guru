class Check {
  constructor(form) {
    this.form = form
    this.confirmation = form.elements.user_password_confirmation
    this.password = form.elements.user_password

    this.setup()
  }

  checkPassword() {
    let correctIconClassList = this.form.querySelector('.octicon-check').classList
    let wrongIconClassList = this.form.querySelector('.octicon-x').classList

    if (this.confirmation.value === this.password.value) {
      correctIconClassList.remove('hide')
      wrongIconClassList.add('hide')
    } else if (this.confirmation.value !== this.password.value) {
      correctIconClassList.add('hide')
      wrongIconClassList.remove('hide')
    } else {
      correctIconClassList.add('hide')
      wrongIconClassList.add('hide')
    }
  }

  setup() {
    this.form.addEventListener('input', event => {
      if(this.confirmation.value !== '') {this.checkPassword()}
    })
  }
}
