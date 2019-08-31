class GenresController < ApplicationController
  before_action :find_genre, except: [:index, :create]
  before_action :set_tests

  def index
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genres_path, notice: "New genre '#{@genre.title}' was created"
    else 
      flash.now[:alert] = "Genre was NOT created. Got errors!"
      render :index
    end
  end

  def update
    if @genre.update(genre_params)
      redirect_to genres_path, notice: "Genre was updated"
    else
      flash.now[:alert] = "Genre was NOT updated"
      render :index
    end
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
