class CatchError
  class << self
    def error(err)
      ::Sentry.capture_exception(err)
    end

    def message(text)
      ::Sentry.capture_message(text)
    end
  end
end