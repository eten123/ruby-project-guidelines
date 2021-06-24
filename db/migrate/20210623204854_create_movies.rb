class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t| #creates table called actors
      t.string :movie_name
    end
  end
end
