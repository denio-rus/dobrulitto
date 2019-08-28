class WatercolorsController < ApplicationController
  def index
    @watercolors = Watercolor.all
  end

  def show; end

  def new; end

  def create
    @watercolor = Watercolor.new(watercolor_params)

    if @watercolor.save!
      redirect_to @watercolor
    else
      render :new
    end
  end

  def edit; end

  def update
    watercolor.update(watercolor_params)
  end

  def destroy
    watercolor.destroy
  end

  private

  def watercolor
    @watercolor ||= params[:id] ? Watercolor.with_attached_file.find(params[:id]) : Watercolor.new
  end

  helper_method :watercolor

  def watercolor_params
    params.require(:watercolor).permit(:title, :description, :date, :genre_id, :width, :height, :picture)
  end
end
