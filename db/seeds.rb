# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

##USERS##

user1 = User.create(username: "ScumBucket", display_name: "Mike", password: "123", email: "scummy@gmail.com")

user2 = User.create(username: "TheDonald", display_name: "Daddy Donald", password: "123", email: "president@whitehouse.com")

##MEDIA TYPES##

music1 = MediaType.create(name: "LCD Soundsystem", format: "Music", img: "")

movie1 = MediaType.create(name: "The Dark Knight", format: "Movies", img: "")

tv1 = MediaType.create(name: "Rick and Morty", format: "TV", img: "")

game1 = MediaType.create(name: "Overwatch", format: "Video Games", img: "")


##FAVORITES##

Favorite.create(user: user1, media_type: music1)

Favorite.create(user: user1, media_type: movie1)

Favorite.create(user: user2, media_type: tv1)

Favorite.create(user: user2, media_type: game1)
