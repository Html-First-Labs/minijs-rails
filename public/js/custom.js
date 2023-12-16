function initializeTippy() {
  tippy('[data-tippy-content]');
}

function initializeTomSelect() {
  document.querySelectorAll('.custom-select').forEach((el)=>{
    let settings = {
      highlight: el.getAttribute('data-highlight')
    };
    new TomSelect(el,settings);
  });
}

function reinitializeJs() { 
  initializeTippy();
  initializeTomSelect();
}

document.addEventListener("DOMContentLoaded", function(event){
  reinitializeJs();
});

// add an event listener for the htmx afterRequest event
document.addEventListener("htmx:afterRequest", function(event) {
  reinitializeJs();
});
