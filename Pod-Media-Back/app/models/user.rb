class User < ApplicationRecord
    has_secure_password
    
    has_many :posts, dependent: :destroy
    has_many :subscriptions, dependent: :destroy
    has_many :podcasts, through: :subscriptions
    has_many :comments, dependent: :destroy

    validates :username, presence: true
    validates :username, uniqueness: { case_sensitive: false }
    validates :email, presence: true 
    validates :email, uniqueness: { case_sensitive: false }

    has_many :friend_posts, class_name: :Post, foreign_key: :friend_id
    has_many :friends, through: :friend_posts, source: :friend

    has_many :friends, class_name: :User
    has_many :relationships, through: :friends

    has_many :relationships, class_name: :Relationship
    has_many :friends, through: :relationships

    has_many :inverse_relationships, class_name: :Relationship, foreign_key: :friend_id
    has_many :inverse_friends, :through => :inverse_relationships, :source => :user
end
