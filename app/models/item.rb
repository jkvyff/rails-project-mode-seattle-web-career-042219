class Item < ApplicationRecord
	has_many :characters_items
	has_many :characters, through: :characters_items
end
