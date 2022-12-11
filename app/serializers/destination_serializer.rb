class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :destination, :image_url, :meals, :activities, :price
end
