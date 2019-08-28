class ChangeNameWcGenre < ActiveRecord::Migration[5.2]
  def change
    rename_table :wc_genres, :genres
  end
end
