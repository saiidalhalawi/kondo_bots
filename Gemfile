source 'https://rubygems.org'
ruby '2.2.2'

# core
gem 'rails'
gem 'rails-api'
gem 'mysql2', '~> 0.3.18'

# auth
gem 'dalli'
gem 'devise'

# core utils
gem 'fileutils'
gem 'nokogiri'

# config
gem 'settingslogic'
gem 'dotenv-rails'
gem 'rails_config'


# active record
gem 'paranoia', '~> 2.0'

# utils
gem 'ransack'
gem 'seedbank'

# background job / scheduling
gem 'redis'
gem 'resque'
gem "capistrano-resque", "~> 0.2.2", require: false
gem 'daemon-spawn', :require => 'daemon_spawn'
gem 'whenever', :require => false

group :development do
  gem 'quiet_assets'
  gem 'spring', group: :development
  gem 'seed_dump'
  gem 'dotenv-deployment'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'spring-commands-rspec'
  gem 'guard-rspec'
  gem 'simplecov'
  gem 'timecop'
  gem 'awesome_print', require: 'ap'
  gem 'rails-erd'
end
