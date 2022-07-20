FactoryBot.define do
  factory :doctor do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.cell_phone }
    encrypted_password { SecureRandom.hex(6) }
    association :category, factory: :category
  end
end
