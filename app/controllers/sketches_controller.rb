class SketchesController < ApplicationController
  def show; end

  private

  def sketch
    @sketch ||= params[:id] ? Sketch.find(params[:id]) : Sketch.new
  end

  helper_method :sketch
end
