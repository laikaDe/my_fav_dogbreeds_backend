# README

This is the backend of the React My favorite dog breeds app. 
It handles the frontend and backend data and has CRUD functionality. 
Some of it's db data is seeded from an external api. Some of it's data comes from the frontend. 



* Ruby version
ruby '2.6.1'


* System dependencies
*gem 'open-uri'
*gem 'rest-client', '~> 1.8'
*gem 'json', '~> 1.8', '>= 1.8.3'
*gem 'rack-cors'
*gem 'active_model_serializers'
*gem 'httparty', '~> 0.13.7'
*gem 'dotenv-rails'
*gem 'webpacker'
*gem 'haml'
*gem 'ransack'
*gem 'jbuilder', '~> 2.5'

* Configuration

start the rails server with:
### `rails s`

The backend and frontend servers must be running at the same time for the application to function properly. 


* Database creation
1. ### `rails db:create`

* Database initialization
run

1. ### `rails db:migrate`
2. ### `rails db:seed`

