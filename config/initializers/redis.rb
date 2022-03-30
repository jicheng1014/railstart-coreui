# frozen_string_literal: true

require 'redis'
require 'redis-namespace'

$redis = Redis.new(url: (ENV["REDIS_URL"] || 'redis://127.0.0.1:6379/1'))
$statis_redis = Redis::Namespace.new(:statis, redis: $redis)