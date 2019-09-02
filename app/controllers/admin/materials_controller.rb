class Admin::MaterialsController < Admin::BaseController
  before_action :set_materials, except: :destroy
  before_action :find_material, only: [:update, :destroy]
  
  def index; end

  def create
    @material = Material.new(material_params)
    if @material.save
      redirect_to admin_materials_path, notice: "Material '#{@material.title}' successfully created"
    else
      flash.now[:alert] = "Something went wrong, object was NOT created"
      render :index
    end
  end
  
  def update
    if @material.update_attributes(material_params)
      redirect_to admin_materials_path, notice: "Object was successfully updated"
    else
      flash.now[:alert] = "Something went wrong, object was NOT updated"
      render :index
    end
  end
  
  def destroy
    @material.destroy
    redirect_to admin_materials_path, alert: "Material '#{@material.title}' was deleted"
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
