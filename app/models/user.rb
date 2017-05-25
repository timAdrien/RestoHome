class User < ActiveRecord::Base
  has_many :commandes
end
