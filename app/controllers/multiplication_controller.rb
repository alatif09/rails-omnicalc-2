class MultiplicationController < ApplicationController

  def show_multiplication_form
    render({ :template => "multiplication_templates/mult_form" })
  end

  def multiply_these
    @first_num = params.fetch("first_number").to_f
    @second_num = params.fetch("second_number").to_f

    @result =  @first_num * @second_num

    render({ :template => "multiplication_templates/mult_results" })
  end
end
