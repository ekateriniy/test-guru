document.addEventListener('turbolinks:load', function() {
  const inputForm = document.querySelector('form')
  const password = inputForm.querySelector('input[id=user_password]')
  const confirmation = inputForm.querySelector('input[id=user_password_confirmation]')
  
  inputForm.addEventListener('input', function() {
    if (confirmation.value !== '') {passwordCheck(password, confirmation)}
  })
})

function passwordCheck(password, confirmation) {

  let correctIconClassList = document.querySelector('.octicon-check').classList
  let wrongIconClassList = document.querySelector('.octicon-x').classList

  if (confirmation.value === password.value) {
    correctIconClassList.remove('hide')
    wrongIconClassList.add('hide')
  } else if (confirmation.value !== password.value) {
    correctIconClassList.add('hide')
    wrongIconClassList.remove('hide')
  } else {
    correctIconClassList.add('hide')
    wrongIconClassList.add('hide')
  }
}
