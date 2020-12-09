class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to dashboard_path, flash: { success: "Post was created successfully!"}
    else
      redirect_to new_post_path, flash: { danger: "Post wasn't saved!"}
    end
  end


  private

  def post_params
    params.require(:post).permit(:image, :image_cache)
  end
end
