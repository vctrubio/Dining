class UsersController < ApplicationController
  before_action :get_user
  def restaurants
    
  end

  def show
    
  end

  def edit
    
  end

  def update
    @user.update(user_params_update_chef)
  end
  private 

  def get_user 
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params_update_chef
    params.require(:user).permit(:chef, :photo)
  end

end

# @restuarants = Restaurant.where(user: current_user)
