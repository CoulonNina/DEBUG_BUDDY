class Buddy < ApplicationRecord
  SKILLS = ["Ruby", "Javascript", "HTML/CSS", "Python", "PHP"]
  validates :description, :skills,  presence: :true
  validates :skills, inclusion: { in: SKILLS }
  belongs_to :user
  has_many :bookings
end
