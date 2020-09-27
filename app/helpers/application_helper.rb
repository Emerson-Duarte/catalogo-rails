module ApplicationHelper
  def value_formatted(number)
    number_to_currency(number, :unit => "R$ ", :separator => ",", :delimiter => ".")

  end
end
