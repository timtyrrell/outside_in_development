source 'https://rubygems.org'

gem 'rails', '4.0.0'

gem 'sqlite3'

gem 'jquery-rails'

gem 'pry-rails'
gem 'fabrication'

group :doc do
  gem 'sdoc', require: false
end

group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.0.0'
end

group :development do
  gem 'binding_of_caller'
  gem 'coffee-rails-source-maps'
  gem 'cucumber', '>= 1.3.0'
  gem 'cucumber-rails', require: false
  gem 'pry-debugger'
  gem 'quiet_assets'
  gem 'rspec-rails', '~> 2.0'
  gem 'sextant'
  gem 'thin'
end

group :test do
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'shoulda'
end

group :test, :development do
  gem 'pry-debugger'
  gem 'rspec'
  gem 'rspec-rails', '~> 2.0'
  gem 'parallel_tests'
  gem 'teaspoon'
end

group :assets, :development, :test do
  gem 'backbone-on-rails'
end
