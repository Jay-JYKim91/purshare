class Bag < ApplicationRecord
  belongs_to :user

  validates :name, :price, :brand, :description, :image, presence: true
end
