class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :phone_number, numericality: {greater_or_equal_to: 10}
    validates :password, presence: true, length: {minimum: 8}
    has_many :reservations, dependent: :destroy
end
