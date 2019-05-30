class CharactersController < ApplicationController
	def show
		@character = Character.find(params[:id])
		@place_img = get_place_img
	end

	def update
		@character = Character.find(params[:id])
		if params[:character][:place_id] && params[:commit] == "Travel to"
			@character.update(params.require(:character).permit(:place_id))
		elsif params[:character][:items] && params[:commit] == "Pickup Item"
			CharactersItem.create(character_id: @character.id, item_id: params[:character][:items])
		elsif params[:character][:items] && params[:commit] == "Use Item"
			item = CharactersItem.where(character_id: @character.id, item_id: params[:character][:items]).first.destroy
		end
		redirect_to @character
	end
		

	private

	def get_place_img
		place_name = @character.place.name

		case place_name
		when 'Fountain'
			'fountain.jpg'
		when 'Shop'
			'shop.jpg'
		when 'Pond'
			'pond.jpg'
		when 'Mine'
			'mine.jpg'
		when 'Saloon'
			'saloon.jpg'
		when 'Jail'
			'jail.jpg'
		when 'Grave Yard'
			'graveyard.jpg'
		end
	end
end
