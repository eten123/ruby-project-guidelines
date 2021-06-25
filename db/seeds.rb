#we use this to have dummy objects or data to test our code by re-running seeds
puts "Delete Role"
Role.destroy_all

puts "Delete Actor"
Actor.destroy_all

puts "Delete Movie"
Movie.destroy_all


puts "Creating movie information "


#actor data
emma_watson = Actor.create(actor_name: "Emma Watson", salary: 512_000)
kit_harington = Actor.create(actor_name: "Kit Harington", salary: 390_600)
tom_hanks = Actor.create(actor_name: "Tom Hanks", salary: 403_040)
viola_davis = Actor.create(actor_name: "Viola Davis", salary: 740_200)
daniel_kaluuya = Actor.create(actor_name: "Daniel Kaluuya", salary: 452_200)


#movie data
harry_potter = Movie.create(movie_name: "Harry Potter")
game_of_thrones = Movie.create(movie_name: "Game of Thrones")
forest_gump = Movie.create(movie_name: "Forest Gump")
suicide_squad = Movie.create(movie_name: "Suicide Squad")
get_out = Movie.create(movie_name: "Get Out")

#role data
harry_potter_role = Role.create(leading_role: "Hermonie Granger", actor_id: Actor.first.id, movie_id: Movie.first.id)
game_of_thrones_role = Role.create(leading_role: "Kit Harington", actor_id: Actor.second.id, movie_id: Movie.second.id)
forest_gump_role = Role.create(leading_role: "Forest Gump", actor_id: Actor.third.id, movie_id: Movie.third.id)
viola_davis = Role.create(leading_role: "Amanda Waller", actor_id: Actor.fourth.id, movie_id: Movie.fourth.id)
daniel_kaluuya = Role.create(leading_role: "Chris Washington", actor_id: Actor.fifth.id, movie_id: Movie.fifth.id)



