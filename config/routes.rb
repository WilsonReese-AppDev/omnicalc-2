Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "homepage"})

  get("/add", { :controller => "application", :action => "user_addition"})
  get("/wizard_add", { :controller => "application", :action => "addition_wizard"})

  get("/subtract", { :controller => "application", :action => "user_subtraction"})
  get("/wizard_subtract", { :controller => "application", :action => "subtraction_wizard"})

  get("/multiply", { :controller => "scaling", :action => "user_multiplication"})
  get("/wizard_multiply", { :controller => "scaling", :action => "multiplication_wizard"})

  get("/divide", { :controller => "scaling", :action => "user_division"})
  get("wizard_divide", { :controller => "scaling", :action => "division_wizard"})

  get("/street_to_coords/new", { :controller => "maps", :action => "user_address"})
  get("/street_to_coords/results", { :controller => "maps", :action => "address_to_coords"})

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
