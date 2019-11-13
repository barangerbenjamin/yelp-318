class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.where(user: current_user)
  end
end