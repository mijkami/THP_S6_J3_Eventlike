FactoryBot.define do
  factory :event do
    title {"#{Faker::Dune.character} Time!"}
    description {"Totally not a Bojack Horseman citation : #{Faker::Dune.quote}"}
    start_date {Faker::Date.forward(30)}
    duration {5 * rand(1..120)}
    price {rand(1..1000)}
    location {Faker::Dune.planet}
    administrator {FactoryBot.create(:user)}
  end
end