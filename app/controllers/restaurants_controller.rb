class RestaurantsController < ApplicationController
  before_action :set_restaurant, only [:show, :edit, :update, :destroy]

  def index
    @restaurant = Restaurant.all
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    # redirect_to restuarants_path
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit() end

  def show() end

  def update
    @restaurant.update(restaurant_params)
    # redirect_to restuarants_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    # redirect_to restuarants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :description, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
