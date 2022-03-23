require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'capybara/rails'
require 'pundit/rspec'
require 'ffaker'
require 'sidekiq/testing'
require "clearance/rspec"
require 'database_cleaner'
require 'wisper/rspec/stub_wisper_publisher'
require 'spec_init_data'
Sidekiq::Testing.inline!

# Add additional requires below this line. Rails is not loaded until this point!

# Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }
ActiveRecord::Migration.maintain_test_schema!

DatabaseCleaner.strategy = :truncation, { except: %w[member_levels account_ban_levels] }

SpecInitData.init
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  # config.filter_gems_from_backtrace("gem name")

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation, { except: %w[member_levels account_ban_levels] }
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do      
      example.run
    end
  end

  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end


# SWAGGER_DRY_RUN=0 rails rswag:specs:swaggerize
# 