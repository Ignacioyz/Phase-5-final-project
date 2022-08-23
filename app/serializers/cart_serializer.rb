class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :purchased, :purchased_on
  # this renders all paintings associated with a given cart 
  has_many :paintings
end
