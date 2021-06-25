require "pry"
class CommandLine

    #attr_accessor :input

    #greet user and run cli
    def run
        system("clear") #this allows us to clear terminal
        welcome_user
        
        #Menu: Takes input and returns something
        user_input = get_input
        #binding.pry
        
        if user_input == "Forest Gump"
            choose_option(user_input)
        elsif user_input == "Game of Thrones"
            choose_option(user_input)
        elsif user_input == "Suicide Squad"
            choose_option(user_input)
        elsif user_input == "Harry Potter"
            choose_option(user_input)
        elsif user_input == "exit"
            end_program 
        else
            puts "\n"
            puts "Invalid Response. Run Again"
            run
        end
        should_salary_update?

        
    end

    
    def welcome_user
        puts "Welcome to Movie Selector.\n"
        puts "\n"
    
    end

    def get_input
    puts "Write the movie you whant learn more about from the list of options?"
    puts "Want to leave? Simply type exit."
    list_movies
    input = gets.chomp
     return input
    end

    def list_movies
        puts <<-DOC.gsub /^\s*/, ''
        --------------
        Harry Potter
        Game of Thrones
        Forest Gump
        Suicide Squad
        --------------
        DOC
    end

    def choose_option(option)
        1.times {puts "\n"}
        puts "Below is more information about the movie selected." 
        1.times {puts "\n"}
        movie_object = Movie.find_movie_by_movie_title(option)
        movie_object.return_actors
        puts "Leading Actor Name: #{movie_object.actors.first.actor_name}"  
        puts "Leading Actor Salary: $#{movie_object.actors.first.salary}"
        1.times {puts "\n"}
        #binding.pry
    end

   def should_salary_update?
    puts "Do you think the selected actor should be payed another salary? Type yes or no."
    puts "\n"
    salary_input = gets.chomp.downcase
    if salary_input =="yes"
        puts "\n"
        puts "Please input desired salary."
        puts "\n"
        puts  "Great! The actor's salary is $#{gets.chomp} for their role in the movie."
        #update_actor_salary
        end_program
    end
    if salary_input == "no"
    puts "\n"
    puts "Ok thats fine."
    puts "\n"
    end_program
    end
    end

    # def create_review()
    #     puts "Would you like to create a review? Type yes or no.\n"
    #     choice = gets.chomp.downcase
    #     if choice == "yes"
    #         review_text = gets.chomp
    #         puts "Please enter a rating between 1 to 10. \n"
    #         review_rating = gets.chomp
    #         new_review = Review.create(movie_id: Movie.id.sample, rating: review_rating.to_i, text: review_text)
    #     end
    # end



    def end_program
        puts "Thanks for stopping by Movie Selector. See you later!"
    end

    

end