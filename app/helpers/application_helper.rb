module ApplicationHelper
  def used_materials_list(resource)
    resource.materials.pluck(:title).join(', ')
  end
end
