class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    # @restaurants = Restaurant.all
    @restaurants = policy_scope(Restaurant)
  end

  def myrestaurants
    # @myrestaurants = current_user.restaurants
    @myrestaurants = policy_scope(Restaurant)
  end
end
