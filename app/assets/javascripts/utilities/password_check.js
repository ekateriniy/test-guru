function passwordCheck() {
  var password = document.querySelector('input[id=user_password]');
  var confirmation = document.querySelector('input[id=user_password_confirmation]');
  var confirm_window = document.getElementById("confirm")
  
  if (confirmation.value === password.value) {
      confirm_window.style.color = 'green';
    } else if (confirmation.value != '' && confirmation.value !== password.value) {
      confirm_window.style.color = 'red';
    }
}
