class Commande < ActiveRecord::Base
  belongs_to :user
  belongs_to :adresse
  has_many :articles
end
