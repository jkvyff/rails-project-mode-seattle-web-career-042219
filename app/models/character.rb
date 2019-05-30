class Character < ApplicationRecord
	belongs_to :user
	belongs_to :place
	has_many :characters_items
	has_many :items, through: :characters_items
end
