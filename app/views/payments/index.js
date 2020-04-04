<%# app/views/payments/index.js.erb %>
<% js = escape_javascript(
  render(partial: 'payments/list', locals: { payments: @payments })
) %>
$("#filterrific_results").html("<%= js %>");