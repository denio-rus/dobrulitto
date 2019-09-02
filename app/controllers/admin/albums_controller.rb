class Admin::AlbumsController < Admin::BaseController
  def index
    @albums = Album.all
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to admin_albums_path, notice: "New album '#{@album.title}' added successfully"
    else 
      render :new
    end
  end

  def new; end

  def update
    if album.update_attributes(album_params)
      redirect_to admin_albums_path, notice: "The album '#{@album.title}' edited successfully"
    else
      flash.now.alert = 'Uncorrect edition!'
      render :new
    end
  end

  def destroy
    album.destroy
  end

  def edit; end

  def show
    @sketches = album.sketches
  end

  private

  def album
    @album ||= params[:id] ? Album.find(params[:id]) : Album.new
  end

  helper_method :album

  def album_params
    params.require(:album).permit(:title, :description, :began_at, :ended_at)
  end
end
