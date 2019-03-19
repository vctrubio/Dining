class ReservationsController < ApplicationController
  before_action :find_restaurant, only:[:new, :create]


  def new
    @reservation = Reservation.new
  end

  def index
  end

  def show
  end

  def create
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


end
