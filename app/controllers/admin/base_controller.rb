# frozen_string_literal: true

module Admin
  class BaseController < ActionController::Base
    layout 'admin'

    before_action :auth_user!

    def auth_user!
      authenticate_user!
    end
  end
end
