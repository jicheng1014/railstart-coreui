# frozen_string_literal: true

module Admin
  class UsersController < BaseController

    def index
      @users = User.all
      @pagy, @users = pagy(@users)
    end
  end
end
