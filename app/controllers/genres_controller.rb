class GenresController < ApplicationController
  before_action :find_genre, except: [:index, :create]
  before_action :set_tests

  def index
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    render :index
  end

  def update
    @genre.update(genre_params)
    render :index
  end

  def destroy
    @genre.destroy
    render :index
  end

  private

  def genre_params
    params.require(:genre).permit(:title)
  end

  def find_genre
    @genre = Genre.find(params[:id])
  end

  def set_tests
    @genres = Genre.all
  end
end
