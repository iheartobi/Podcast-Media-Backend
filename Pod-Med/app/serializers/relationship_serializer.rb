class RelationshipSerializer < ActiveModel::Serializer
  
  has_one :user_id
  has_one :friend_id

  attributes :id
end
