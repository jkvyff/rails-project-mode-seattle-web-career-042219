class PlaceConnection < ApplicationRecord
	belongs_to :current_place, class_name: :Place
	belongs_to :next_place, class_name: :Place
end
