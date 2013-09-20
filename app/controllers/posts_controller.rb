class PostsController < ApplicationController
  def new
    @new = Post.new
  end
end
