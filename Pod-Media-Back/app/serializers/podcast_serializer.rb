class PodcastSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :listens, :likes
end
