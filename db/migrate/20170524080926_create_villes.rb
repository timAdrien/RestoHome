class CreateVilles < ActiveRecord::Migration
  def change
    create_table :villes do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
