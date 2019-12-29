# Payments
A very simple custom payment information app for buldings administration.

Ruby 2.6.1
Rails 5.2.3

## Start

Install third party libraries

* `$ bundle install`

Create and migrate database 

* `$ rails db:create db:migrate db:seed`

Start the application

* `$ rails s`

Go to

[http://localhost:3000](http://localhost:3000)


## Add Users to the database (development)

```
$ rails c
$ @user = User.new(:building_id => '01', :username => 'user', :email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
$ @user.save
```