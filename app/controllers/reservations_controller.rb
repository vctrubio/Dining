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
    @reservation.save!
  end

  def update
    @rating = Reservation.find(params[:id])
    if @rating.update(rating_params)
      redirect_to root_path
    else
      redirect_to restaurant_path(@restaurant)
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :time, :name, :guests)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def rating_params
    params.require(:reservation).permit(:rating)
  end

end
