class User < ApplicationRecord
  has_many :posts
  has_many :comments
   
  validates :name, presence: { message: 'Please enter you name', minimum: 3, too_short: "Username must be at least 3 characters long." }
  validates :password, length: { minimum: 4, too_short: 'Password must be at least 4 characters long.' }
  validates :email, uniqueness: { message: 'Email already exists' }
end
