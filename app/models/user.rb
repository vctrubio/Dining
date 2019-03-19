class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         #:omniauthable, :lockable
  has_many :restaurants, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true #REGEX TO CHECK IF TRUE



end
