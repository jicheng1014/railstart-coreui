# frozen_string_literal: true

module Admin
  class UsersController < BaseController

    before_action :set_user, only: [:show, :edit, :update]
    def index
      @q = User.all.ransack(params[:q])
      @users = @q.result
      @pagy, @users = pagy(@users)
    end

    def edit

    end

    def update
      if @user.save
        render :edit
      else
        render :edit
      end
    end

    def new
    end

    private
    def user_params
      params.require(:user).permit!
    end

    def set_user
      @user = User.find(params[:id])
    end
  end
end
