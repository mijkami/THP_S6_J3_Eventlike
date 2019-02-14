require 'faker'


1.times do
User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
	description: Faker::Friends.quote, 
	email: "#{Faker::Name.first_name}@yopmail.com",
	password: "Verylazy+"
	)
end

1.times do
Event.create!(
    title: "#{Faker::Books::Dune.character} Time!",
	description: "Totally not a Bojack Horseman citation : #{Faker::Books::Dune.quote}", 
	start_date: Faker::Date.forward(30),
	duration: 5 * rand(1..120),
	price: rand(1..1000),
	location: Faker::Books::Dune.planet,
	administrator: User.all.sample
	)
end

1.times do
Attendance.create!(
	attendee: User.all.sample, 
	event: Event.all.sample,
	stripe_customer_id: Faker::Number.number(10)
	)
end