class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # not sure where is my path to create a restaurant
    # @restaurant = Restaurant.new(restaurant_params)
    # if @restaurant.save
    #   redirect_to restaurant_path(@restaurant)
    # else
    #   render :new
    # end
  end

  private

  # def restaurant_params
  #   params.require(:restaurant).permit(:name, :location, :capacity, :open_hour, :close_hour)
  # end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
