# frozen_string_literal: true

module Admin
  class BaseController < ActionController::Base
    layout 'admin'
    include Pagy::Backend
    include Pundit
    include ResourceConcern
    include RescueConcern

    helper_method :attributes, :resource, :resource_class, :show_attributes
    
    before_action :auth_user!
    after_action :add_pagy_header

    def auth_user!
      authenticate_user!
    end
  
    private

    def add_pagy_header
      pagy_headers_merge(@pagy) if @pagy      
    end
  end
end
