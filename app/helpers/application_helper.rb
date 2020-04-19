module ApplicationHelper

  def datepicker (form, field)
    form.text_field(field, data: {provide: "datepicker",
      'date-format': 'dd/mm/yyyy',
      'date-autoclose': 'true',
      'date-today-highlight': 'true',
      'date-language': 'es'},
      class: 'form-control'
    ).html_safe
  end

end
