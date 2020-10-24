class ApplicationController < ActionController::Base
  
  def homepage
    render({ :template => "calculations/add.html.erb"})
  end

  def user_addition
    render({ :template => "calculations/add.html.erb"})
  end

  def addition_wizard
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f

    @sum = @first_number + @second_number
    
    render({ :template => "calculations/wizard_add"})
  end

  def user_subtraction
    render({ :template => "calculations/subtract.html.erb"})
  end

  def subtraction_wizard
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f

    @difference = @second_number - @first_number

    render({ :template => "calculations/wizard_subtract"})
  end
end
