class CreatePlaceConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :place_connections do |t|
      t.integer :current_place_id
      t.integer :next_place_id

      t.timestamps
    end
  end
end
