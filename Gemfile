source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.2", ">= 7.0.2.3"

# db and server
gem "puma", "~> 5.0"
gem "redis", "~> 4.0"
gem "sqlite3", "~> 1.4"
gem "pg", "~> 1.2"
gem "pghero", "~> 2.8"

# front tools
# gem "importmap-rails"
gem "sprockets-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "sassc-rails"
gem "chartkick"
gem 'simple_form'
gem 'slim'
gem 'vite_rails'

# backend jobs
gem "sidekiq", "~> 6.3"
gem 'sidekiq-cron', '~> 1.2.0'
gem 'sidekiq-failures'

# user center
gem "devise", "~> 4.8"

# api
gem 'rack-attack', '~> 6.4.0'
gem 'rack-cors', require: 'rack/cors'
gem 'oj'

# tools 
gem "dotenv-rails", "~> 2.7"
gem "bcrypt", "~> 3.1.7"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "meta-tags", "~> 2.16"
gem "groupdate", "~> 6.0"
gem 'figaro'
gem 'enumerize', '~> 2.4.0'
gem 'pagy'
gem 'pundit'

# monitor
gem "sentry-ruby"
gem "sentry-rails"
gem "sentry-sidekiq"

group :production do
  gem 'newrelic_rpm'
end

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do  
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "ffaker", "~> 2.20"
  gem 'rspec-rails', '~> 5.0.2'
end

group :development do
  gem "web-console"
  # gem "rack-mini-profiler"  
  gem "spring"
end

group :test do
  gem 'capybara'
  gem "selenium-webdriver"
  gem 'database_cleaner'
  gem 'factory_bot_rails'  
  gem 'mocha'  
  gem 'webmock'  
end