class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # has_many :buddies, through: :bookings
  has_one :buddy, dependent: :destroy
  has_many :bookings, dependent: :destroy # bookings fait par lui pour louer d'autre buddies
  has_many :client_bookings, through: :buddy, source: :bookings # reservation faite pour son profils de "buddy"
  validates :first_name, :last_name, uniqueness: true, presence: true
  validates :email, presence: true, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
