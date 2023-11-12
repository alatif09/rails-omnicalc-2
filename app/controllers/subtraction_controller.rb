class SubtractionController < ApplicationController
  
  def show_subtraction_form
    render({ :template => "subtraction_templates/sub_form" })
  end

  def sub_these
    @first_num = params.fetch("first_number").to_f
    @second_num = params.fetch("second_number").to_f

    @result = @second_num - @first_num


    render({ :template => "subtraction_templates/sub_results" })
  end
end
