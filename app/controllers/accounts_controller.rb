class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_account, only: [:profile]
  def index
    #user feed
    @posts = Post.active
    @post = current_account
  end

  def profile
    #user profile
    @posts = @account.posts.active
  end

  private

  def set_account
    @account = Account.find_by_username(params[:username, :image, :description])  
  end
end
