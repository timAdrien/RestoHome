class PanierController < ApplicationController
  def index
  end
  def destroy
    session[:paniers].delete_at(params[:id].to_i)
    @index = params[:id]
  end
  def create
    session[:paniers] << {
        "id" => "1",
        "name" => "pizza",
        "description" => "sdsdsd",
        "image" => "https://scontent-cdg2-1.cdninstagram.com/t51.2885-15/e35/18579854_1534923216580475_3277782138224640000_n.jpg",
    }
    @id = params[:id]
  end
end
