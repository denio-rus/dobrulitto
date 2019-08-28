class SketchesController < ApplicationController
  def create
  end

  def update
  end

  def destroy
  end

  private

  def album
    @sketch ||= params[:id] ? Sketch.find(params[:id]) : Sketch.new
  end

  helper_method :sketch

  def album_params
    params.require(:sketch).permit(:title, :description, :date, :height, :width, :materials)
  end
end
