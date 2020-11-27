class Bag < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :images, dependent: :destroy

  validates :name, :price, :brand, :description, :images, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_brand,
                  against: [:name, :brand],
                  using: {
                    tsearch: { prefix: true }
                  }
end
