class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content_ru
      t.text :content_en

      t.timestamps
    end
  end
end
