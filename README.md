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



![](https://media1.tenor.com/images/f99ad6444483da12b58a2a81be281358/tenor.gif)