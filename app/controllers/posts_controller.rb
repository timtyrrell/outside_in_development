class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new params[:post]
    if @post.save
      redirect_to posts_path(@post), :notice => "New post created"
    else
      render :new
    end
  end
end
