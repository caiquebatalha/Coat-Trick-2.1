const input = document.getElementById("cpf");

input.addEventListener("keyup", formatarCPF);

function formatarCPF(e){

var v=e.target.value.replace(/\D/g,"");

v=v.replace(/(\d{3})(\d)/,"$1.$2");

v=v.replace(/(\d{3})(\d)/,"$1.$2");

v=v.replace(/(\d{3})(\d{1,2})$/,"$1-$2");

e.target.value = v;

} 
var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Senhas diferentes!");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;

