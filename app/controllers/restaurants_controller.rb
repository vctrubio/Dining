class RestaurantsController < ApplicationController
  # Just one line to allow the show of the index before login
  skip_before_action :authenticate_user!, only: :index
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = policy_scope(Restaurant).where.not(latitude: nil, longitude: nil)
    @active = user_signed_in?
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        image_url: helpers.asset_url('fork.png')
      }
    end
  end

  def show
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
    redirect_to user_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :capacity, :open_hour, :close_hour, :photo)
  end
  #:photo added

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end
end
