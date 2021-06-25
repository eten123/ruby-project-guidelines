class CreateRoles < ActiveRecord::Migration[6.1]
  def change
     create_table :roles do |t| 
      t.string :leading_role
      t.integer :movie_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
