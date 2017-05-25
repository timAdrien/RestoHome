class VillesController < ApplicationController
  def index
    Jobs.new(session)
    @villes = Ville.all
  end
  def show
    @ville = Ville.find_by(id: params[:id])
  end
end
