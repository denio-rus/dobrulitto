class WatercolorsController < ApplicationController
  def index
    @watercolors = Watercolor.all
  end

  def show; end

  private

  def watercolor
    @watercolor ||= params[:id] ? Watercolor.with_attached_picture.find(params[:id]) : Watercolor.new
  end

  helper_method :watercolor
end
