class UsersController < ApplicationController
  def restaurants
    @user = User.find(params[:id])
  end

  def show
  end


end

# @restuarants = Restaurant.where(user: current_user)
