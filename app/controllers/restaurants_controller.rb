class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    Restaurant.create(params[:restaurant])
    # redirect_to '/restaurants'
  end

  # def restaurant_params
  #   params.require(:restaurant).permit(:name)
  # end
end
