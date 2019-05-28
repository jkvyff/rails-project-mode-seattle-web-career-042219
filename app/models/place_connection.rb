class PlaceConnection < ApplicationRecord
	belongs_to :current, foreign_key: :current_place_id, class_name: :Place
	belongs_to :next, foreign_key: :next_place_id, class_name: :Place
end
