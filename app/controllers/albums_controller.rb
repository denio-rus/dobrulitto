class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @sketches = album.sketches
  end

  private

  def album
    @album ||= params[:id] ? Album.find(params[:id]) : Album.new
  end

  helper_method :album
end
