class Bag < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :image, dependent: :destroy

  validates :name, :price, :brand, :description, :image, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_brand,
                  against: [:name, :brand],
                  using: {
                    tsearch: { prefix: true }
                  }
end
