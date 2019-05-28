class Place < ApplicationRecord
	has_many :characters
	has_many :place_connections, foreign_key: :current_place_id, class_name: :PlaceConnection
	has_many :places, through: :place_connections, source: :next_place_id
end
