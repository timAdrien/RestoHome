class AdresseController < ApplicationController
  def index
    Jobs.new(session)
    if session[:user_id] == false
      redirect_to "/connection"
    end
  end
end
