class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :meeting_time, presence: true
  validates :title, presence: true
end
