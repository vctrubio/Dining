class ReservationsController < ApplicationController
  before_action :find_restaurant, only:[:new, :create]

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def show
    @reservation = Reservation.find(params[:id])
    authorize @reservation

  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.restaurant = @restaurant
    authorize @reservation
    if @reservation.save!
      redirect_to reservation_path(@reservation)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :time, :name, :guests)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
