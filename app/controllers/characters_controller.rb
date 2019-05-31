class CharactersController < ApplicationController
	def show
		@character = Character.find(params[:id])
		@place_img = get_place_img
	end

	def create
		@character = Character.new
		@character.name = params[:character][:name]
    	@character.gender = params[:character][:gender]
    	@character.worth = rand(1..10)
    	@character.lvl = 1
    	@character.intelligence = rand(1..10)
    	@character.luck = rand(1..10)
    	@character.perception = rand(1..10)
    	@character.greeting = params[:character][:greeting]
    	@character.user_id = flash[:user_id]
    	@character.place_id = 1
    	@character.save
    	CharactersItem.create(character_id: @character.id, item_id: Item.all.sample.id, amount: 1)
    	redirect_to @character
	end

	def update
		@character = Character.find(params[:id])
		check_forms
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

	def check_forms
		if params[:character][:place_id] && params[:commit] == "Travel to"
			travel_to
		elsif params[:character][:items] && params[:commit] == "Pickup Item"
			pickup_item
		elsif params[:character][:items] && params[:commit] == "Use Item"
			drop_items
		elsif params[:character][:id] && params[:commit] == "Lets Talk"
			talk
		end
	end

	def travel_to
		@character.update(params.require(:character).permit(:place_id))
	end

	def pickup_item
		char_item = CharactersItem.where(character_id: @character.id, item_id: params[:character][:items])
		if @character.items.include?(Item.find(params[:character][:items]))
			char_item.update(amount: (char_item[0][:amount] + 1))
		else
			CharactersItem.create(character_id: @character.id, item_id: params[:character][:items], amount: 1)
		end
	end

	def drop_items
		item = CharactersItem.where(character_id: @character.id, item_id: params[:character][:items]).first
		item.destroy
	end

	def talk
		if @character.id == params[:character][:id].to_i
			flash[:name] = @character.name
			flash[:message] = "Damn, Talking to myself again. Hope i'm not going crazy." 
		else
			flash[:name] = Character.find(params[:character][:id]).name
			flash[:message] = Character.find(params[:character][:id].to_i).greeting
		end
	end


end
