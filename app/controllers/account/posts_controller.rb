class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def edit
    @posts = Post.find(params[:groups_id])
  end
  
end
