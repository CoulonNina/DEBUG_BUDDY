class Buddy < ApplicationRecord
  SKILLS = ["Ruby", "Javascript", "HTML/CSS", "Python", "PHP", "SQL", "C++", "Swift"]
  validates :description, :skills, presence: true
  validates :skills, inclusion: { in: SKILLS }
  validates :user, uniqueness: true
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo


  # def array_of_skills
  #   return  self.skills.split(" ")
  # end
end
