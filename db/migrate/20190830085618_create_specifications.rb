class CreateSpecifications < ActiveRecord::Migration[5.2]
  def change
    create_table :specifications do |t|
      t.references :material, foreign_key: true
      t.belongs_to :specificable, polymorphic: true 

      t.timestamps
    end
  end
end
