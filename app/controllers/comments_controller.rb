class CommentsController < ApplicationController
  def create
    @post = Post.find params[:post_id]
    @comment = @post.comments.build comment_params

    if @comment.save
      redirect_to post_path(@post), :notice => "New comment created!"
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:retort)
  end
end
