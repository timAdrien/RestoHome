class Restaurant < ActiveRecord::Base
  belongs_to :ville
  has_many :plats
end
