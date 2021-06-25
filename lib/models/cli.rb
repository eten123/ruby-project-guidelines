
#so basically I am supposed to require something because command line is a constant and can't be seen
require "pry"
class CommandLine

    #attr_accessor :input

    #greet user and run cli
    def run
        system("clear") #this allows us to clear terminal
        welcome_user
        
        #Menu: Takes input and returns something
        user_input = get_input
        if user_input
            choose_option(user_input)
        elsif user_input == 'exit'
        end_program 

        else
            puts "Incorrect choice. Try again"
            run
        end

    end

    
    def welcome_user
        puts "Welcome to Movie Selector.\n"
        puts "\n"
    
    end

    def get_input
    puts "Please write the movie you would like to learn more about from the list of options?"
    list_movies
     input = gets.chomp
     #binding.pry
     return input
    end

    def list_movies
        puts <<-DOC.gsub /^\s*/, ''
        Harry Potter
        Game of Thrones
        Forest Gump
        Suicide Squad
        --------------
        DOC
    end

    def choose_option(option)
        case option
        when "Harry Potter"
            puts "Harry Potter selected" 
        when "Game of Thrones"
            puts "Game of Thrones selected" 
        when "Forest Gump"
            puts "Forest Gump selected" 
        when "Suicide Squad"
            puts "Suicide Squad selected" 
        end
        puts "Below is more information about the movie selected" 
        movie_object = Movie.find_movie_by_movie_title(option)
        movie_object.return_actors
        puts "Leading Actor Name: #{movie_object.actors.first.actor_name}"  
        puts "Leading Actor Salary: #{movie_object.actors.first.salary}"
        1.times {puts "\n"}
        #binding.pry
    end


    def end_program
        puts "Thanks for stopping by Movie Selector. See you later!"
    end
    


end