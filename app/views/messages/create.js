if ("<%= @message.valid? %>" == "true") {
  $("#<%= @obituary.id %>").html("");
} else {
  $("#<%= @obituary.id %>").html("<%= escape_javascript render('form') %>");
}
