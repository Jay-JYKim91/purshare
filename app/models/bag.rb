class Bag < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image

  validates :name, :price, :brand, :description, :image, presence: true
end
