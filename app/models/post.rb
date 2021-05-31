class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: { message: 'Please give a title for your post' }
  validates :body, presence: { message: 'Please give some information to your post' },
                   length: { minimum: 10, too_short: 'Posts must be longer than 10 characters' }
end
