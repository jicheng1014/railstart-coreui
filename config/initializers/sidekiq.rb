sidekiq_redis = ENV['JOB_REDIS_URL'] || 'redis://127.0.0.1:6379/0'
Sidekiq.configure_server do |config|
  config.redis = { url: sidekiq_redis  }
end

Sidekiq.configure_client do |config|
  config.redis = { url: sidekiq_redis }
end