//= require rails-ujs
//= require_tree .



// const scrollToSomething = (targetElement, pixels) => {
//   target = document.querySelector(targetElement);
// targetElement.onClick = window.scrollTo({
//   top: pixels,
//   behavior: 'smooth'
// });
// };


targetNavbar = document.querySelector(".scroll-event-menu");
targetButton = document.querySelector(".scroll-event-button");


targetNavbar.addEventListener("click", (event) => {
  event.preventDefault();
  window.scrollTo({
    top: 850,
    behavior: 'smooth'
  });
});

targetButton.addEventListener("click", (event) => {
  event.preventDefault();
  window.scrollTo({
    top: 850,
    behavior: 'smooth'
  });
});
