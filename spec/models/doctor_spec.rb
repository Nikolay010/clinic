require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe '#validations' do

    it 'is valid with valid attributes' do
      doctor = FactoryBot.build :doctor
      expect(doctor).to be_valid
    end

    it 'is not valid phone' do
      doctor = FactoryBot.build :doctor, phone: nil
      expect(doctor).to_not be_valid
    end
  end
end
