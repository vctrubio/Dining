class ReservationsController < ApplicationController
  before_action :find_restaurant, only:[:new, :create]
  before_action :find_user, only:[:show, :new, :create]
  before_action :find_reservation, only: [:show]

  def new
    @reservation = Reservation.new
  end

  def show

  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.restaurant = @restaurant
    if @reservation.save!
      redirect_to reservation_path(@reservation)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :user_id)
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def find_user
    @user = current_user
  end

end
