source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '>= 5.0.0.rc1', '< 5.1'
gem 'puma', '~> 3.0'
gem 'pg', '~> 0.18.4'
gem "cells-rails"
gem "cells-erb"

# Assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'sprockets', '>=3.0.0.beta'
gem 'sprockets-es6'
gem 'font-awesome-sass', '~> 4.6.2'

gem 'jbuilder', '~> 2.0'
gem 'will_paginate'

# Authentication
gem 'omniauth-facebook', '~> 3.0'
gem "omniauth-google-oauth2"
gem "omniauth-vkontakte"

gem 'faker' # moved to production group for heroku

group :development, :test do
  gem 'sqlite3'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-livereload', '~> 2.5', require: false
end

group :test do
  gem 'poltergeist'
  gem 'site_prism'
  gem 'selenium-webdriver', '~> 2.53.3'
  gem "capybara-webkit"
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end
