class Role < ActiveRecord::Base


 #establishing associations 
 belongs_to :movie
 belongs_to :actor 

 def self.find_movie_by_actor(actor_name)
    actor_object = Role.find_by({role: actor_name})
end

def return_actors
    actors
end

end