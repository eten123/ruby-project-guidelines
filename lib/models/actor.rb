class Actor < ActiveRecord::Base

    has_many :roles
    has_many :movies, through: :roles

    def self.find_actor_by_salary(salary)  
        actor_object = Actor.find_by({actor_name: salary})
    end
end