class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @commets = @post.comments
    @comment = @post.comments.new
  end
end
