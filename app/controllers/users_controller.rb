class UsersController < ApplicationController
  def restaurants
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end


end

# @restuarants = Restaurant.where(user: current_user)
