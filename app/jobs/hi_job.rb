require 'sidekiq-scheduler'

class HiJob < ApplicationJob
  sidekiq_options retry: 0, queue: :default

  def perform(*args)      
    p "Say hi HiJob #{Time.now().strftime('%F - %H:%M:%S.%L')}"
  end
end