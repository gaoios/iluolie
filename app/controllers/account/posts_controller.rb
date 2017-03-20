class Account::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts
  end

  def edit
    @post = Post.new(post_params)
    redirect_to account_posts_path
  end

  def update
    if @posts.update(group_params)
      redirect_to account_posts_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def destroy
    @posts.destroy
    flash[:alert] = "Post deleted"
      redirect_to account_groups_path
  end

end
