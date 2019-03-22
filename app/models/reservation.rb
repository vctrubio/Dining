class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant, dependent: :destroy

  validates :date, presence: true
  validates :rating, allow_nil: true, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5] }
end
