class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.integer :worth
      t.integer :lvl
      t.integer :intelligence
      t.integer :luck
      t.integer :perception
      t.integer :user_id
      t.integer :place_id

      t.timestamps
    end
  end
end
