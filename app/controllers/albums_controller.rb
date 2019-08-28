class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def create
  end

  def new; end

  def update
  end

  def destroy
    @album.destroy
  end

  def edit; end

  def show; end

  private

  def album
    @album ||= params[:id] ? Album.find(params[:id]) : Album.new
  end

  helper_method :album

  def album_params
    params.require(:album).permit(:title, :description, :began_at, :ended_at)
  end
end
