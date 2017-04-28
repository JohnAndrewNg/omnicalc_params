class CalculationsController < ApplicationController
  def flex_square
    # params = {"the_number" =>"17"}

    @user_provided_number = params["number"].to_i

    @squared_number = (@user_provided_number**2).round(0)

    render("/calculations/flex_square.html.erb")
  end

  def flex_square_root

    @user_provided_number = params["number"].to_i

    @squared_root_number = (@user_provided_number**0.5).round(2)

    render("/calculations/flex_square_root.html.erb")

  end

  def square_form

    render("calculations/square_form.html.erb")
  end

  def square
    @user_provided_number = params["number_to_be_squared"].to_f
    @squared_number = @user_provided_number**2
    render("calculations/square.html.erb")
  end

  def square_root_form

    render("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_provided_number = params["number_to_be_rooted"].to_f
    @squared_root_number = @user_provided_number**(0.5)
    render("calculations/square_root.html.erb")
  end


  def flex_payment

    @user_provided_rate = params["basis_points"].to_i
    @user_provided_years = params["number_of_years"].to_i
    @user_provided_pv = params["present_value"].to_i

    @rate_in_percent = (@user_provided_rate/100.0).round(2)

    @pv = @user_provided_pv.to_f
    @rate = (@user_provided_rate/120000.0).to_f
    @n = (@user_provided_years*12).to_f

    @monthly_payment = ((@rate*@pv)/(1-(1+@rate)**(-@n))).round(2)

    render("calculations/flex_payment.html.erb")
  end

  def payment_form
    render("calculations/payment_form.html.erb")
  end


  def payment

    @user_provided_rate = params["apr"].to_f
    @user_provided_years = params["years"].to_f
    @user_provided_pv = params["principal"].to_f

    @rate_in_percent = (@user_provided_rate).round(2)

    @pv = @user_provided_pv.to_f
    @rate = (@user_provided_rate/1200.0).to_f
    @n = (@user_provided_years*12).to_f

    @monthly_payment = ((@rate*@pv)/(1-(1+@rate)**(-@n))).round(2)
    render("calculations/payment.html.erb")
  end


  def random_number
    @user_min = params["min"].to_i
    @user_max = params["max"].to_i

    @random_number = rand(@user_min..@user_max)
    render("calculations/flex_random_number.html.erb")
  end

  def random_form
    render("calculations/random_form.html.erb")
  end


  def random
    @user_min = params["min"].to_f
    @user_max = params["max"].to_f

    @random_number = (rand(@user_min..@user_max)).round(3)
    render("calculations/random.html.erb")
  end



end
