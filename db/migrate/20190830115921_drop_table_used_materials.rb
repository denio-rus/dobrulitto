class DropTableUsedMaterials < ActiveRecord::Migration[5.2]
  def change
    drop_table :used_materials, if_exists: true
  end
end
