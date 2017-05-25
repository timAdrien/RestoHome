class PanierController < ApplicationController
  def index
    Jobs.new(session)
  end
  def destroy
    session[:paniers].delete_at(params[:id].to_i)
  end
  def show
    plat = Plat.find_by(id: params[:id])
    @restaurant_id = plat["restaurant_id"]
    session[:paniers] << plat
  end
end
