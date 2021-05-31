class Comment < ApplicationRecord
    belongs_to :user 
    belongs_to :post  
    
    validates :body, presence: { message: 'Please enter you comment.' }, length: { minimum: 5, too_short: 'Comments must be longer than 5 characters.' }
end
