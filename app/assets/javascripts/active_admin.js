//= require arctic_admin/base


document.addEventListener("DOMContentLoaded", function() {
  var editor = CodeMirror.fromTextArea(document.getElementById('recipe_content'), {
    mode: "xml",
    htmlMode: true,
    lineNumbers: true,
    theme: "material-palenight"
    // Add other options here as needed.
  });
});
