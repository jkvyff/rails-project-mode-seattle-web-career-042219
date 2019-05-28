class CreateItemsAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :items_abilities do |t|
      t.integer :item_id
      t.integer :ability_id

      t.timestamps
    end
  end
end
