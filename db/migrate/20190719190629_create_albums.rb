class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.text :description
      t.date :began_at
      t.date :ended_at

      t.timestamps
    end

    add_index :albums, :title
  end
end
