class ChirpsController < ApplicationController

  before_action :require_user, only: [:create]

  def index
    if params[:user_id]
      @chirps = Chirp.where(user_id: params[:user_id]).order(created_at: :desc)
    else
      @chirps = Chirp.order(created_at: :desc)
    end
    render json: @chirps
  end

  def create
    @chirps = current_user.chirps.new(chirp_params)
    if @chirps.save
      render json: @chirps
    else
      render json: @chirps.errors.full_messages, status: 400
    end
  end

  private

  def chirp_params
    params.permit(:body)
  end  

end
