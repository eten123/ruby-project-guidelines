class Movie < ActiveRecord::Base


    has_many :roles
    has_many :actors, through: :roles

    def self.find_movie_by_movie_title(title)  
        movie_object = Movie.find_by({movie_name: title})
    end

   def return_actors
        actors
   end

  
end