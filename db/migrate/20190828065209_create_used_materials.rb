class CreateUsedMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :used_materials do |t|
      t.references :material, foreign_key: true
      t.belongs_to :sketch, foreign_key: true

      t.timestamps
    end
  end
end
