class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number
  has_many :reservations
end
