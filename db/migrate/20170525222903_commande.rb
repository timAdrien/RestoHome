class Commande < ActiveRecord::Migration
  def change
    create_table :commandes do |t|
      t.integer :adresse_id
      t.integer :user_id
      t.timestamps
    end
  end
end
