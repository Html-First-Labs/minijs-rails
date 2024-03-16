
function reinitializeJs() { 
}

document.addEventListener("DOMContentLoaded", function(event){
  reinitializeJs();
});

// add an event listener for the htmx afterRequest event
document.addEventListener("htmx:afterRequest", function(event) {
  reinitializeJs();
});
