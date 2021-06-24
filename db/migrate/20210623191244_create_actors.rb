class CreateActors < ActiveRecord::Migration[6.1]
#we are creating the structure for the database here
  def change
    create_table :actors do |t| #creates table called actors
      t.string :actor_name
      t.integer :salary

      #do we need a movie id?
    end
  end
end


