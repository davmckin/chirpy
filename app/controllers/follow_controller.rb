class FollowController < ApplicationController

  before_action :require_user

  def follow
    user = User.find_by(id: params[:id])
    current_user.follow!(user)
    render json: ["#{current_user.username} is now following #{user.username}."]
  end

  def unfollow
    user = User.find_by(id: params[:id])
    current_user.unfollow!(user)
    render json: ["#{current_user.username} unfollowed #{user.username}."]
  end

end
