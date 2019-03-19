class UsersController < ApplicationController
  def restaurants
    @user = User.find(params[:id])
  end

end
