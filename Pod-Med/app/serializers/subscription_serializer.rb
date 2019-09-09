class SubscriptionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user_id
  has_one :podcast_id
end
