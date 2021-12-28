source 'https://rubygems.org'
ruby '2.7.3'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails',  '6.1.4.4'
# Use Puma as the app server
gem 'puma', '~> 4.1'

gem 'bootstrap-sass', '~> 3.4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.10.2'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem "minitest-rails", "~> 6.1.0"
group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'

  gem 'rails-controller-testing'
  gem 'minitest-reporters'
end

# group :test do
#   gem 'minitest', '~> 5.5.1'
#   gem 'capybara', '~> 2.4.4'
#   gem 'turn', '~> 0.9.7'
# end

group :development do
  gem 'guard' # NOTE: this is necessary in newer versions
  gem 'guard-minitest'
end
# https://github.com/guard/guard-minitest
group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.4.0'
end

group :production do
  gem 'pg', '>= 0.18', '< 2.0'
  gem 'rails_12factor'
end
