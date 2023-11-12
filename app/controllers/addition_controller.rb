class AdditionController < ApplicationController
  
  def show_addition_form
    render({ :template => "addition_templates/add_form" })
  end

  def add_these
    @first_num = params.fetch("first_number").to_f
    @second_num = params.fetch("second_number").to_f

    @result = @first_num + @second_num


    render({ :template => "addition_templates/add_results" })
  end
end
