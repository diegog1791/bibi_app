// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// Master DOManipulator v2 ------------------------------------------------------------
const items = document.querySelectorAll('.item'),
  controls = document.querySelectorAll('.control'),
  headerItems = document.querySelectorAll('.item-header'),
  descriptionItems = document.querySelectorAll('.item-description'),
  activeDelay = .76,
  interval = 5000;

let current = 0;


//MENU AVATAR TOGGLE




//MODAL
$('#myModal').on('shown.bs.modal', function() {
  $('#myInput').trigger('focus')
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

//SignIn SignUp Modal
// for the second screen
const signUpButton2 = document.getElementById('signUp2');
const signInButton2 = document.getElementById('signIn2');
const container2 = document.getElementById('container2');
const conflict = document.getElementById('conflict'); // <= this is a temporary fix to correct the style issue, because both headers are overlapping.

signUpButton2.addEventListener('click', () => {
  container2.classList.add("right-panel-active");
  conflict.classList.add('d-none');
});

signInButton2.addEventListener('click', () => {
  container2.classList.remove("right-panel-active");
  conflict.classList.remove("d-none");
});