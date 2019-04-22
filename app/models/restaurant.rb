class Restaurant < ApplicationRecord
  paginates_per 6
  belongs_to :user
  has_many :reservations

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :user, presence: :true
  validates :name, presence: :true
  validates :location, uniqueness: :true
  validates :capacity, numericality: { greater_than_or_equal_to: 1,  only_integer: true }
  validates :open_hour, presence: :true
  validates :close_hour, presence: :true

  mount_uploader :photo, PhotoUploader

  #scope for search
  include PgSearch
  pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  #validation for intereger to become time from 0-23:59H

  def average_rating
    reservation_count = self.reservations.where("rating is not null").count
    rating_sum = self.reservations.sum(:rating)
    if reservation_count > 0 and rating_sum
      return rating_sum/reservation_count
    else
      return nil
    end
  end

end
