class ScalingController < ApplicationController
  
  def user_multiplication
    render({ :template => "calculations/multiply.html.erb"})
  end

  def multiplication_wizard
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f

    @result = @first_number * @second_number
    
    render({ :template => "calculations/wizard_multiply.html.erb"})
  end

  def user_division
    render({ :template => "calculations/divide.html.erb"})
  end

  def division_wizard
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f

    @result = @first_number / @second_number
    
    render({ :template => "calculations/wizard_division.html.erb"})
  end
end