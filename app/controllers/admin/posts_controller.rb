class Admin::PostsController < Admin::BaseController
  def index
    @posts = Post.all
  end

  def show; end

  def new; end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post successfully created"
      redirect_to [:admin, @post]
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end
  
  def update
    if post.update_attributes(post_params)
      flash[:success] = "Object was successfully updated"
      redirect_to [:admin, post]
    else
      flash[:error] = "Something went wrong"
      render :edit
    end
  end
  
  def edit; end

  def destroy
    post.destroy
    redirect_to admin_posts_path
  end
  

  private

  def post_params
    params.require(:post).permit(:title, :content_ru, :content_en)
  end

  def post
    @post ||= params[:id] ? Post.find(params[:id]) : Post.new
  end

  helper_method :post
end
