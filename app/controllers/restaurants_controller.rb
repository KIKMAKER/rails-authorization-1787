class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @restaurants = Restaurant.all
  end

  def myrestaurants
    @myrestaurants = current_user.restaurants
  end
end
