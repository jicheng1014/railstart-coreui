# frozen_string_literal: true
if ENV['ORIGIN']
  source 'https://rubygems.org'
end
source 'https://gems.ruby-china.com'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.2', '>= 7.0.2.3'

# db and server
gem 'pg', '~> 1.2'
gem 'pghero', '~> 2.8'
gem 'puma', '~> 5.0'
gem 'redis', '~> 4.0'
gem 'sqlite3', '~> 1.4'

# front tools
# gem "importmap-rails"
gem 'chartkick'
gem 'sassc-rails'
gem 'simple_form'
gem 'slim'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'vite_rails'

# backend jobs
gem 'sidekiq', '~> 6.3'
gem 'sidekiq-cron', '~> 1.2.0'
gem 'sidekiq-failures'

# user center
gem 'devise', '~> 4.8'
gem 'omniauth-github'

# api
gem 'oj'
gem 'rack-attack', '~> 6.4.0'
gem 'rack-cors', require: 'rack/cors'

# tools
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', require: false
gem 'dotenv-rails', '~> 2.7'
gem 'enumerize', '~> 2.4.0'
gem 'figaro'
gem 'groupdate', '~> 6.0'
gem 'jbuilder'
gem 'meta-tags', '~> 2.16'
gem 'pagy'
gem 'pundit'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# monitor
gem 'sentry-rails'
gem 'sentry-ruby'
gem 'sentry-sidekiq'

group :production do
  gem 'newrelic_rpm'
end

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'ffaker', '~> 2.20'
  gem 'rspec-rails', '~> 5.0.2'
  gem 'pry-rails'
end

group :development do
  gem 'web-console'
  # gem "rack-mini-profiler"
  gem 'spring'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'mocha'
  gem 'selenium-webdriver'
  gem 'webmock'
end
