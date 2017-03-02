class ApplicationController < ActionController::API

  private

  def current_user
    @current_user ||= User.find_by(token: params[:token]) if params[:token]
  end

  def require_user
    unless current_user
      render json: ["You need to be logged in!"], status: 401
    end
  end

end
