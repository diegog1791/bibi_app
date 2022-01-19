//MENU AVATAR TOGGLE
//MODAL
$('#myModal').on('shown.bs.modal', function() {
    $('#myInput').trigger('focus');
});
//SignIn SignUp Modal
const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');
signUpButton.addEventListener('click', () => {
    container.classList.add("right-panel-active");
});
signInButton.addEventListener('click', () => {
    container.classList.remove("right-panel-active");
});