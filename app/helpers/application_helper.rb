module ApplicationHelper
  def format_mena(cena)
    number_to_currency(cena)
  end
end
