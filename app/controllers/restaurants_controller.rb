class RestaurantsController < ApplicationController
  # Just one line to allow the show of the index before login
  skip_before_action :authenticate_user!, only: :index
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
      @restaurant_results = Restaurant.all
      gon.restaurant_results = @restaurant_results
    # search logic for index
    if params[:query].present?
      @restaurants = Restaurant.search_by_name_and_location(params[:query]).page(params[:page])



    else
      @restaurants = Restaurant.order(:name).page(params[:page])
    end

    @restaurants = policy_scope(@restaurants).all
    @active = user_signed_in?
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        image_url: helpers.asset_url('fork.png'),
        infoWindow: render_to_string(partial: "components/infowindow", locals: { restaurant: restaurant })
      }
    end

  end

  def show
    @reservation = Reservation.new
    @user_reservation = current_user.reservations.where(restaurant_id: @restaurant.id).first
  end

  def new
    @restaurant = Restaurant.new
    authorize @restaurant
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    authorize @restaurant
    @restaurant.user = current_user
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path
    else
      render :update
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to root_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :capacity, :open_hour, :close_hour, :photo, :latitude, :longitude, :description)
  end
  #:photo added

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

end
