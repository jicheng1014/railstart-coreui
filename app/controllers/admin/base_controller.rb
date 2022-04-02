# frozen_string_literal: true

module Admin
  class BaseController < ActionController::Base
    include Pagy::Backend
    include Pundit
    include ResourceConcern
    include RescueConcern
    helper_method :attributes, :resource, :resource_class, :show_attributes
    
    after_action :add_pagy_header

    layout 'admin'

    before_action :auth_user!

    def auth_user!
      authenticate_user!
      1/0
    end
  
    private

    def add_pagy_header
      pagy_headers_merge(@pagy) if @pagy      
    end
  end
end
