class UsersController < ApplicationController
  before_action :get_user
  def restaurants

  end

  def show

  end

  def edit


  end

  def update
    if @user.update(user_params)
      redirect_to user_path
    else
      render :update
    end
  end


  private

    def user_params
    params.require(:user).permit(:description)
  end


  def get_user
    @user = User.find(params[:id])
    authorize @user
  end

end

# @restuarants = Restaurant.where(user: current_user)
