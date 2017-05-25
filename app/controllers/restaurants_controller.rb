class RestaurantsController < ApplicationController
  def show
    @plats = [
      {
          :id => "1",
          :name => "pizza",
          :description => "sds dsd",
      },
      {
          :id => "2",
          :name => "humberger",
          :description => "qsdq sd qsd sd",
      }
    ]
  end
end
