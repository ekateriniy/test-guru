document.addEventListener('turbolinks:load', function() {
  const inputForm = document.querySelector('form')
  const confirmation = inputForm.elements.user_password_confirmation
  const password = inputForm.elements.user_password
  
  if (inputForm) {inputForm.addEventListener('input', function() {
    if ((confirmation) && (confirmation.value !== '')) {
      changeIcon(password, confirmation)
    }
  })}
})

function changeIcon(password, confirmation) {
  let correctIconClassList = confirmation.parentNode.querySelector('.octicon-check').classList
  let wrongIconClassList = confirmation.parentNode.querySelector('.octicon-x').classList

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
