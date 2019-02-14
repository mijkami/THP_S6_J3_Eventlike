FactoryBot.define do
  factory :user do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.first_name}
    email {Faker::Internet.email}
    description { Faker::Lorem.paragraph(25) }
    encrypted_password {"verylazy"}
  end
end
