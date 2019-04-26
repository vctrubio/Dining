class Api::V1::RestaurantsController < ActionController::API
  def index
      @restaurants = policy_scope(Restaurant.search_by_name_and_location(params[:query]))
  end
end
