class DivisionController < ApplicationController
  
  def show_division_form
    render({ :template => "division_templates/div_form" })
  end

  def divide_these
    @first_num = params.fetch("first_number").to_f
    @second_num = params.fetch("second_number").to_f

    @result =  @first_num / @second_num

    render({ :template => "division_templates/div_results" })
  end
end
