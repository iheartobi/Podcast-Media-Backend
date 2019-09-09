class PostSerializer < ActiveModel::Serializer
  has_many :comments
  has_many :likes
  attributes :id, :content, :user, :created_at, :updated_at
end