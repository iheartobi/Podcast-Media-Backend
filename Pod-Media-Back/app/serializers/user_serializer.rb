class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :img_url, :notes, :follows, :followers, :likes
end
