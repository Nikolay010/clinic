class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments, class_name: 'Appointment'
  has_many :doctors, through: :appointments

  validates :phone, presence: true, uniqueness: true

  def ability
    @ability ||= Ability.new(self)
  end
end
