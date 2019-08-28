class CreateSketches < ActiveRecord::Migration[5.2]
  def change
    create_table :sketches do |t|
      t.string :title, null: false
      t.text :description
      t.date :date
      t.integer :height
      t.integer :width
      t.string :materials
      t.belongs_to :album, foreign_key: true

      t.timestamps
    end
  end
end
