Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:number", { :controller => "calculations", :action => "flex_square"})

  get("/flexible/square_root/:number", { :controller => "calculations", :action => "flex_square_root"})

  get("/square/new", { :controller => "calculations", :action => "square_form"})

  get("/square/results", { :controller => "calculations", :action => "square"})

  get("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller => "calculations", :action => "payment"})

  get("/flexible/random/:min/:max", { :controller => "calculations", :action => "random_number"})

end
