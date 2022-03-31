
module RescueConcern
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordInvalid do |e|
      render json: { error: e.to_s }, status: 422
    end

    rescue_from ActiveRecord::RecordNotFound do |error|
      render json: { status: 404, error: "NOT FOUND", detail: error.to_s }, status: 404
    end

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  end
  
  def user_not_authorized(exception)
    policy_name = exception.policy.class.to_s.underscore
    error_message = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
    render json: { error: error_message }, status: 403
  end
end