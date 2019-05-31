User.destroy_all
Place.destroy_all
PlaceConnection.destroy_all
Character.destroy_all

# User
u1 = User.create(username: 'admin', password: 'Milan')


# Places
p1 = Place.create(name: 'Fountain', description: 'Howdy partner! Kick back and let your horse take a drink.')
p2 = Place.create(name: 'Shop', description: "Welcome to the local shop. You are free to browse, but nothin' is free")
p3 = Place.create(name: 'Pond', description: 'Looks like a nice pond, I wonder if there is anything Down there?')
p4 = Place.create(name: 'Mine', description: 'The abandoned gold mine, looks like prospectors gave up on it years ago. I wonder if they left anything?')
p5 = Place.create(name: 'Saloon', description: 'Old Mike always has a cold brew in your hand. watch your wallet though.')
p6 = Place.create(name: 'Jail', description: 'Only a few prisoners here, maybe they would be an interesting chat.')
p7 = Place.create(name: 'Grave Yard', description: 'Scary at this time of night.... Woah, someone could trip in that open grave.')


# Place Connections
pc1 = PlaceConnection.create(current_place_id: p1.id, next_place_id: p2.id)
pc2 = PlaceConnection.create(current_place_id: p2.id, next_place_id: p1.id)

pc3 = PlaceConnection.create(current_place_id: p1.id, next_place_id: p3.id)
pc4 = PlaceConnection.create(current_place_id: p3.id, next_place_id: p1.id)

pc5 = PlaceConnection.create(current_place_id: p3.id, next_place_id: p4.id)
pc6 = PlaceConnection.create(current_place_id: p4.id, next_place_id: p3.id)

pc7 = PlaceConnection.create(current_place_id: p1.id, next_place_id: p5.id)
pc8 = PlaceConnection.create(current_place_id: p5.id, next_place_id: p1.id)

pc9 = PlaceConnection.create(current_place_id: p5.id, next_place_id: p6.id)
pc10 = PlaceConnection.create(current_place_id: p6.id, next_place_id: p5.id)

pc11 = PlaceConnection.create(current_place_id: p6.id, next_place_id: p7.id)
pc12 = PlaceConnection.create(current_place_id: p7.id, next_place_id: p6.id)



# Characters
c1 = Character.create(name: 'Ben Wade', gender: 'male', worth: 10, lvl: 1, intelligence: 7, luck: 5, perception: 3, greeting: "Howdy Partner. if you ever need a good lasso, I'm your man.", user_id: u1.id, place_id: p1.id)
c2 = Character.create(name: 'Wilhawk Tribe', gender: 'female', worth: 11, lvl: 4, intelligence: 9, luck: 3, perception: 8, greeting: "Watch yourself out there, its pretty dangerous for the weak.", user_id: u1.id, place_id: p1.id)
c3 = Character.create(name: 'Smilly Harol', gender: 'male', worth: 17, lvl: 2, intelligence: 7, luck: 10, perception: 1, greeting: "Come closer, So I can smell ya.", user_id: u1.id, place_id: p6.id)
c4 = Character.create(name: "Ol' Mike", gender: 'male', worth: 11, lvl: 4, intelligence: 9, luck: 3, perception: 8, greeting: "Here is another Kombucha.", user_id: u1.id, place_id: p5.id)
c5 = Character.create(name: "lil' Bess", gender: 'female', worth: 40, lvl: 4, intelligence: 9, luck: 3, perception: 8, greeting: "M0000000.", user_id: u1.id, place_id: p3.id)
c6 = Character.create(name: 'Danny, The Champion of the World', gender: 'unknown', worth: 0, lvl: 99, intelligence: 2, luck: 10, perception: 3, greeting: "You made it, it's been scary without you", user_id: u1.id, place_id: p7.id)

# Items
i1 = Item.create(name: "Gold Coin", description: "It's worth something", value: 1)
i2 = Item.create(name: "Gold Nugget", description: "Shiny Shiny", value: 5)
i3 = Item.create(name: "Ruby Gem", description: "I've been looking for you", value: 42219)

i4 = Item.create(name: "Fishing Rod", description: "Now where is some water", value: 15)
i5 = Item.create(name: "Pick", description: "Helps you dig", value: 3)
i6 = Item.create(name: "Book", description: "I bet you won't read me", value: 30)
i7 = Item.create(name: "Fish", description: "Yay, a new hat.", value: 7)


# Item Connections
i1 = CharactersItem.create(character_id: c1.id, item_id: i1.id, amount: 1)
i2 = CharactersItem.create(character_id: c1.id, item_id: i4.id, amount: 1)





