class Buddy < ApplicationRecord
  SKILLS = ["Ruby", "Javascript", "HTML/CSS", "Python", "PHP"]
  validates :description, :skills,  presence: true
  validates :skills, inclusion: { in: SKILLS }
  validates :user, uniqueness: true
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
end
