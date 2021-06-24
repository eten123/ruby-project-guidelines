class Role < ActiveRecord::Base


 #establishing associations 
 belongs_to :movie
 belongs_to :actor 

end