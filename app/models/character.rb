class Character < ApplicationRecord
	belongs_to :user
	belongs_to :place
	has_many :characters_items
	has_many :items, through: :characters_items

	def num_item(item)
		CharactersItem.all.where(character_id: self.id, item_id: item.id)[0][:amount]
	end
end
