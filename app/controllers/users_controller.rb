class UsersController < ApplicationController
  before_action :get_user
  def restaurants

  end

  def show

  end

  def edit

  end

  private

  def get_user
    @user = User.find(params[:id])
    authorize @user
  end

end

# @restuarants = Restaurant.where(user: current_user)
