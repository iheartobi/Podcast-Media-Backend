class PodcastSerializer < ActiveModel::Serializer
  
  attributes :id, :title, :image, :publisher, :thumbnail, :listennotes_url
end
