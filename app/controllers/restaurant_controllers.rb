class RestaurantsController < ApplicationController
 def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.new

  def new
    @restaurant= Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save

     redirect_to restaurant_path(@restaurant)
    else
      render "new"
    end
  end

  def index
    @restaurants = restauramnt.all
  end

end
