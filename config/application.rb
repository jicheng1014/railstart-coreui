# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailstartCoreui
  class Application < Rails::Application
    config.load_defaults 7.0    

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.middleware.use Rack::Attack
    config.middleware.insert_before 0, Rack::Cors do
      pagination_headers = %w[X-Total X-Per-Page X-Current-Page Link]
      allow do
        origins '*'
        resource '*', headers: :any, expose: pagination_headers,
                      methods: %i[get post put delete options]
      end
    end

    config.generators do |g|
      g.assets false
      g.helper false
      g.serializer false
      g.test_framework :rspec,
                       fixtures: true,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       request_specs: false
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
    end
  end
end
