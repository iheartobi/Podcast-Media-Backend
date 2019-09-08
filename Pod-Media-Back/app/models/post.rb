class Post < ApplicationRecord

  belongs_to :user
  belongs_to :friend, class_name: :User, optional: true
  has_many :likes
  has_many :comments, dependent: :destroy
  
end
