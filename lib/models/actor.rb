class Actor < ActiveRecord::Base

    #Create object in the tableobject
    #a1= Actor.new({})
    #save object in database. creates row in database and id 
    #a1.save 

    #do we need to put in movie_id if it will just increment. or are we putting in movie id to set it equal to the 
    # #id of the corresponding movie number

    has_many :roles
    has_many :movies, through: :roles

    def self.find_actor_by_salary(salary)  
        actor_object = Actor.find_by({actor_name: salary})
    end
end