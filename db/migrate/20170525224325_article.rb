class Article < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :commande_id
      t.integer :plat_id
      t.timestamps
    end
  end
end
