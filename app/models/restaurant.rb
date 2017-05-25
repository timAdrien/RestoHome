class Restaurant < ActiveRecord::Base
  belongs_to :ville
  has_attachment :photo
end
