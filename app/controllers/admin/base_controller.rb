# frozen_string_literal: true

module Admin
  class BaseController < ActionController::Base
    include Pagy::Backend
    include Pundit
    include ResourceConcern
    include RescueConcern
    
    after_action :add_pagy_header

    layout 'admin'

    before_action :auth_user!

    def auth_user!
      authenticate_user!
    end
  
    private

    def add_pagy_header
      pagy_headers_merge(@pagy) if @pagy      
    end
  end
end
