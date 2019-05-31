class CreateCharactersItems < ActiveRecord::Migration[5.2]
  def change
    create_table :characters_items do |t|
      t.integer :character_id
      t.integer :item_id
      t.integer :amount

      t.timestamps
    end
  end
end
