class Adresse < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :code_postal
      t.string :ville
      t.string :voie
      t.timestamps
    end
  end
end
