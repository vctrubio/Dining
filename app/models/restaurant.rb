class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :user, presence: :true

  #chec to see if user is chef boolean true

  validates :name, presence: :true
  validates :location, uniqueness: :true
  validates :capacity, numericality: { more_than_or_equal_to: 1,  only_integer: true }
  validates :open_hour, presence: :true
  validates :close_hour, presence: :true

  #validation for intereger to become time from 0-23:59H


  # def user_must_be_a_chef
  #   if self.user.chef == false
  #     errors.add(" user must a chef to create restaurant")
  #   end
end
