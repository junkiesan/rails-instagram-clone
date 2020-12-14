class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:profile]
  def index
    #user feed
    @posts = Post.active

    following_ids = Follow.where(follower_id: current_account.id).map(&:following_id)
    following_ids << current_account.id
    
    @post = current_account
    @follower_suggestions = Account.where.not(id: current_account.id)
  end

  def profile
    #user profile
    @posts = @account.posts.active
  end

  def follow_account
    account_id = params[:follow_id]
    if Follower.create(follower_id: current_account.id, following_id: follower_id)
      flash[:success] = "Now following user"
    else
      flash[:danger] = "Unable to follow user"
    end
    redirect_to dashboard_path
  end

  private

  def set_account
    @account = Account.find_by_username(params[:username])  
  end
end
