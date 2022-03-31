# frozen_string_literal: true

module Admin
  class UsersController < BaseController

    before_action :set_user, only: [:show, :edit, :update]
    def index
      @users = User.all
      @pagy, @users = pagy(@users)
    end

    def edit

    end

    def update
    end

    def new
    end

    private
    def user_params
      params.require(:user).permit(:email)
    end

    def set_user
      @user = User.find(params[:id])
    end
  end
end
