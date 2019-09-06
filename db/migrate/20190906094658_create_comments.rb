class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.belongs_to :commentable, polymorphic: true
      t.belongs_to :user, foreign_key: true
      t.boolean :confirmed, default: false
      t.references :branch

      t.timestamps
    end
  end
end
