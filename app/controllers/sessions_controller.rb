class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])&.authenticate(params[:password])
      if @user
        render json: @user
      else
        render json: ["Incorrect username or password."], status: 401
      end
  end


end
