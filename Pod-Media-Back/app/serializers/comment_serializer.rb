class CommentSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :post
  
  attributes :id, :comment, :user, :created_at, :updated_at
  
end
