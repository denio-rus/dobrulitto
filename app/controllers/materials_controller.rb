class MaterialsController < ApplicationController
  before_action :set_materials, except: :destroy
  before_action :find_material, only: [:update, :destroy]
  
  def index; end

  def create
    @material = Material.new(material_params)
    if @material.save
      flash.now[:notice] = "Material '#{@material.title}' successfully created"
      redirect_to materials_path
    else
      flash.now[:alert] = "Something went wrong, object was NOT created"
      render :index
    end
  end
  
  def update
    if @material.update_attributes(material_params)
      flash.now[:notice] = "Object was successfully updated"
      redirect_to materials_path
    else
      flash.now[:alert] = "Something went wrong, object was NOT updated"
      render :index
    end
  end
  
  def destroy
    @material.destroy
    redirect_to materials_path
  end

  private

  def material_params
    params.require(:material).permit(:title)
  end

  def find_material
    @material = Material.find(params[:id])    
  end

  def set_materials
    @materials = Material.all
  end
end
