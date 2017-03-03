class FollowController < ApplicationController

  before_action :require_user

  def follow
    user = User.find(params[:id])
    current_user.follow!(user)
    #needs to add followed person's chirps to chirps timeline
  end

  def unfollow
    user = User.find(params[:id])
    current_user.unfollow!(user)
    #needs to remove unfollowed person's chirps from chirp timeline
  end


end
