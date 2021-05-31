class User < ApplicationRecord
  validates :name, presence: { message: 'Please enter you name', minimum: 3, too_short: "Username must be at least 3 characters long." }
  validates :password, length: { minimum: 8, too_short: 'Password must be at least 8 characters long.' }
  validates :email, uniqueness: { message: 'Email already exists' }
end
