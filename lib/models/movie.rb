class Movie < ActiveRecord::Base


    has_many :roles
    has_many :actors, through: :roles

    def self.find_movie_by_movie_title(title)
        movie_object = Movie.find_by({movie_name: title})
    end

   def return_actors
        actors
   end

    # def format_movie_director
    #     puts movies.director
    # end

    # def show_movie_information(reviews)
    #     reviews.each do |review|
    #       # How could we output this review's content and the username associated with it?
    #     end
    #   end
end