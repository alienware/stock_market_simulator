module ApplicationHelper
  include ActionView::Helpers::NumberHelper

  def cash_in_rupees cash
    number_to_currency(cash, locale: 'en-IN')
  end
end
