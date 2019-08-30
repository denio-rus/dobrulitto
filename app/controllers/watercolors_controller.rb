class WatercolorsController < ApplicationController
  def index
    @watercolors = Watercolor.all
  end

  def show; end

  def new
    watercolor.specifications.new
  end

  def create
    @watercolor = Watercolor.new(watercolor_params)

    if @watercolor.save
      redirect_to @watercolor
    else
      render :new
    end
  end

  def edit; end

  def update
    if watercolor.update(watercolor_params)
      redirect_to watercolor
    else
      render :edit
    end
  end

  def destroy
    watercolor.destroy
    redirect_to watercolors_path
  end

  private

  def watercolor
    @watercolor ||= params[:id] ? Watercolor.with_attached_picture.find(params[:id]) : Watercolor.new
  end

  helper_method :watercolor

  def watercolor_params
    params.require(:watercolor).permit(:title, :description, :year, :genre_id, :width, :height, :picture,
                                        specifications_attributes: [:id, :material_id, :_destroy])
  end
end
