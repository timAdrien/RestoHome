class Plat < ActiveRecord::Base
  belongs_to :restaurant
  has_many :commandes
end
