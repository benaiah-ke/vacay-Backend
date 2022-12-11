class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :adults, :kids, :start_date, :end_date
  belongs_to :destination
  belongs_to :user 
end
