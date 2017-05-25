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

  def create
    code_postal = params["adresse"]["code_postal"]
    ville = params["adresse"]["ville"]
    voie = params["adresse"]["voie"]

    adresse = Adresse.create(code_postal:code_postal,ville:ville,voie:voie)

    commande = Commande.create(adresse_id: adresse[:id], user_id: session[:user_id])

    session[:paniers].each do |panier|
      Article.create(commande_id: commande[:id], plat_id: panier["id"])
    end

    session[:paniers] = []
  end
end
