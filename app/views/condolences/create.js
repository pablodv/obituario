if ("<%= resource.valid? %>" == "true") {
  $("#<%= parent.id %>").html("");
} else {
  $("#<%= parent.id %>").html("<%= escape_javascript render('form') %>");
}