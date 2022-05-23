class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :buddies through: :bookings
  validates :first_name, :last_name, uniqueness: true, presence: true
  validates :email, presence: true, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
end
