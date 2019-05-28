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
c1 = Character.create(name: 'Ben Wade', gender: 'male', worth: 10, lvl: 1, intelligence: 7, luck: 5, perception: 3, user_id: u1.id, place_id: p1.id)



