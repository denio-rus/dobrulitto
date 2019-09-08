class CommentsController < ApplicationController
  before_action :find_comment, only: [:update, :destroy]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      flash[:success] = "Comment successfully created"
      redirect_to @comment.post
    else
      flash[:error] = "Something went wrong"
      render 'post#show'
    end
  end

  def update
    if @comment.update_attributes(params[:comment])
      flash[:success] = "Object was successfully updated"
      redirect_to @comment.post
    else
      flash[:error] = "Something went wrong"
      @post = @comment.post
      render 'post#show'
    end
  end

  def destroy 
    @comment.destroy
    redirect_to @comment.post, alert: "Your comment was deleted"
  end
  
  private 

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
