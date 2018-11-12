class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => {name: "Wagas", address: "West Nanjing", category: "healthy" },
    2 => {name: "Tocks", address: "Maoming lu", category: "canadian"}
  }
  def index
    @food_type = params["food_type"]
    if @food_type
      @restaurants = RESTAURANTS.select { |id, restaurant| restaurant[:category] == @food_type }
    else
      @restaurants = RESTAURANTS
    end
    # @restaurant = Restaurant.all
  end

  def create
    # raise
    # @restaurant = Restaurant.new(name: params["name"], address: params["address"])
    # @restaurant.save
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
    # @restaurant = Restaurant.find(params[:id])
  end
end
