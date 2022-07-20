class Doctor < ApplicationRecord
  belongs_to :category

  has_many :appointments
  has_many :patients, through: :appointments

  validates :phone, presence: true, uniqueness: true
end
