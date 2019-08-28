class CreateWatercolors < ActiveRecord::Migration[5.2]
  def change
    create_table :watercolors do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.date :date, null: false
      t.integer :height
      t.integer :width
      t.belongs_to :wc_genre, foreign_key: true

      t.timestamps
    end

    add_index :watercolors, :title
    add_index :watercolors, :date
  end
end
