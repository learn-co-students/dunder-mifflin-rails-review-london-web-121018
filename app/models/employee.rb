class Employee < ApplicationRecord
<<<<<<< HEAD
    belongs_to :dog
=======
  belongs_to :dog


  validates :alias, uniqueness:true
  validates :title, uniqueness:true
  
>>>>>>> c5f3e0ba58aa107dac84f78506b629068921066f
end
