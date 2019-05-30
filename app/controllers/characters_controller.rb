class CharactersController < ApplicationController
	def show
		@character = Character.find(params[:id])
		@place_img = get_place_img
	end

	def update
		@character = Character.find(params[:id])
		@character.update(params.require(:character).permit(:place_id))
		redirect_to @character
	end

	def add_item
		params
		@character = Character.find(params[:id])
		item = params[:character][:items]
		@character.update(params.require(:character).permit(:items))
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
