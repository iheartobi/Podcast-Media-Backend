class PostSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :content, :likes, :user, :created_at, :updated_at
end
