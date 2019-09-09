class LikeSerializer < ActiveModel::Serializer
  # belongs_to :user
  # belongs_to :post
  attributes :id, :post, :user
end
