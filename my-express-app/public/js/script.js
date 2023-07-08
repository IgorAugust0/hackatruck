// script.js

// Example function to add interactivity to the page
function changeText() {
  const heading = document.querySelector('h1');
  heading.textContent = 'Hello World!';
}

// Attach the function to a button click event
const button = document.querySelector('button');
button.addEventListener('click', changeText);