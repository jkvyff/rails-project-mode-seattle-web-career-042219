class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :amount
      t.integer :value

      t.timestamps
    end
  end
end
