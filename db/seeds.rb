#we use this to have dummy objects or data to test our code by re running seeds

Role.destroy_all
Actor.destroy_all
Movie.destroy_all

#actor data
emma_watson = Actor.create(actor_name: "Emma Watson", salary: 500_000)
kit_harington = Actor.create(actor_name: "Kit Harington", salary: 300_000)
tom_hanks = Actor.create(actor_name: "Tom Hanks", salary: 400_000)
viola_davis = Actor.create(actor_name: "Viola Davis", salary: 700_000)


#movie data

harry_potter = Movie.create(movie_name: "Harry Potter")
game_of_thrones = Movie.create(movie_name: "Game of Thrones")
forest_gump = Movie.create(movie_name: "Forest Gump")
suicide_squad = Movie.create(movie_name: "Suicide Squad")

#actor data
harry_potter_role = Role.create(leading_role: "Hermonie Granger", actor_id: Actor.first.id, movie_id: Movie.first.id)
game_of_thrones_role = Role.create(leading_role: "Kit Harington", actor_id: Actor.kit_harington.id, movie_id: Movie.kit_harington.id)
# do this for remainder of roles
