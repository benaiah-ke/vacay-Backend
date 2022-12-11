class Reservation < ApplicationRecord
    validates :destination, presence: true
    validates :adults, numericality: {greater_than: 0}
    validates :kids, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    belongs_to :user 
    belongs_to :destination
end
