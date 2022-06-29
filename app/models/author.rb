class Author < ApplicationRecord
    validates :name, presence: true 
    validates :name.downcase, uniqueness: true 

    #could combine the above to 
    #validates :name, presence: true, uniqueness: true

    validates :phone_number, length: {is: 10}

end
