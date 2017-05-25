class RestaurantsController < ApplicationController
  def show
    Jobs.new(session)
    @restaurant = Restaurant.find_by(id: params[:id])
  end
end
