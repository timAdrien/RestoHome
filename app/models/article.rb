class Article < ActiveRecord::Base
  belongs_to :commande
  belongs_to :plat
end
