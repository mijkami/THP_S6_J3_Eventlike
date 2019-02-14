### Eventbrite-like Project

  
## How to setup :

~~~~~~~~~~~~~~~~~

- add your own sendgrid API in a .env file in root folder

$ bundle install

$ rails db:create

$ rails db:environment:set RAILS_ENV=development

$ rails db:schema:load

$ rails db:seed

$ rails console
~~~~~~~~~~~~~~~~~

## How to check things :

~~~~~~~~~~~~~~~~~
($ rails console)
- tables : 
$ tp User.all 
$ tp Event.all 
$ tp Attendance.all

- associations (examples) : 
$ Attendance.first.event.administrator.first_name 
$ Event.first.attendees

- all associations : 
$ Rails.application.eager_load! 
$ ActiveRecord::Base.descendants

~~~~~~~~~~~~~~~~~

## How to check email feature :

~~~~~~
$ rails console

$ mememe = User.create(first_name:"MyFirstName", last_name:"MyLastName", description:"Me, myself and I", email:"mijkamouz@yopmail.com", encrypted_password:"123456")

$ party = Event.create(title:"THP Night", description:"Come along and drink all you can afford", price:5, location:"Paris", start_date:"29/05/2019", duration:20, administrator:mememe)'

$ iamin = Attendance.create(stripe_customer_id:"312233", event: party, attendee: User.all.sample)

Go check the mails sent at "mijkamouz@yopmail.com" on <http://www.yopmail.com?mijkamouz>
~~~~~~

![](https://media1.tenor.com/images/f99ad6444483da12b58a2a81be281358/tenor.gif)