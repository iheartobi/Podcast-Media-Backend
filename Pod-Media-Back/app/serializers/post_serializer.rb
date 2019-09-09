class PostSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :content, :like_count, :user, :created_at, :updated_at
end
