class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :buddy
  validates :start_date, :end_date, presence: true
end
