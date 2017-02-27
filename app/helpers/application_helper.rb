module ApplicationHelper
  def salary_display(salary)
    salary ||= 0.00
    number_to_currency(salary) + ' Yay!'
  end
end
