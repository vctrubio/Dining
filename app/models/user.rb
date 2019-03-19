class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         #:omniauthable, :lockable
  has_many :restaurants, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)/, message: 'please enter a valid e-mail' }

  # this will make chef default to FALSE
  after_initialize :init

  def init
    self.chef  ||= false           #will set the default value only if it's nil
  end
end
