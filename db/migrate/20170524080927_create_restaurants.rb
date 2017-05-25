class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :image
      t.string :name
      t.text :description
      t.integer  :ville_id
      t.timestamps
    end
  end
end
