class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number, :email
  has_many :reservations
end
