module ApplicationHelper

  def datepicker (form, field)
    form.text_field(field, data: {provide: "datepicker",
      'date-format': 'dd/mm/yyyy',
      'date-autoclose': 'true',
      'date-today-btn': 'linked',
      'date-today-highlight': 'true'}
    ).html_safe
  end

end
