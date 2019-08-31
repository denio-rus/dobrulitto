class SketchesController < ApplicationController
before_action :find_album, only: [:create, :new]

  def create
    @sketch = @album.sketches.new(sketch_params)
    if @sketch.save
      redirect_to @sketch.album, notice: 'Sketch saved successfuly.'
    else
      flash.now[:alert] = 'Got problems with saving'
      render :new
    end
  end

  def update
    if sketch.update(sketch_params)
      redirect_to sketch.album
    else
      @album = sketch.album
      render :edit
    end
  end

  def edit; end


  def destroy
  end

  def new
    @sketch = @album.sketches.new
    @sketch.specifications.new
  end

  private

  def sketch
    @sketch ||= params[:id] ? Sketch.find(params[:id]) : Sketch.new
  end

  helper_method :sketch

  def sketch_params
    params.require(:sketch).permit(:title, :description, :date, :height, :width, :materials, :picture,
                                    specifications_attributes: [:id, :material_id, :_destroy])
  end

  def find_album
    @album = Album.find(params[:album_id])
  end
end
