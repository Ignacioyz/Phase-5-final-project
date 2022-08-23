class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :address, :username, :email, :admin
  has_many :carts
  # took out - :password, 
end
