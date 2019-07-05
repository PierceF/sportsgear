//= require rails-ujs
//= require_tree .



const scrollToSomething = (targetElement, pixels) => {
  target = document.querySelector(targetElement);
targetElement.onClick = window.scrollTo({
  top: pixels,
  behavior: 'smooth'
});
};

scrollToSomething(".scroll-event-button", 800)
scrollToSomething(".scroll-event-menu", 1000)

function refreshPage(){
    window.location.reload();
}
