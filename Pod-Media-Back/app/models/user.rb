class User < ApplicationRecord
    has_secure_password
    
    has_many :subscriptions
    has_many :podcasts, through: :subscriptions

    validates :username, presence: true
    validates :username, uniqueness: { case_sensitive: false }

    has_many :relationships
    has_many :friends, through: :relationships
    has_many :inverse_relationships, :class_name => "Relationship", :foreign_key => "friend_id"
    has_many :inverse_friends, :through => :inverse_relationships, :source => :user
end
