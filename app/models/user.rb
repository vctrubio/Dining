class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader
  before_create :if_profile_photo_nil

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         #:omniauthable, :lockable
  has_many :restaurants, dependent: :destroy
  has_many :reservations, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)/, message: 'please enter a valid e-mail' }

  # this will make chef default to FALSE
  after_initialize :init

  def init
    self.chef  ||= false           #will set the default value only if it's nil
  end

  def if_profile_photo_nil
    #make profilpicture defulat if nothing past
    #photo.file.nil ? "pass argument" : photo
  end
end
