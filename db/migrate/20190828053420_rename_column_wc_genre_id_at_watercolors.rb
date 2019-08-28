class RenameColumnWcGenreIdAtWatercolors < ActiveRecord::Migration[5.2]
  def change
    rename_column :watercolors, :wc_genre_id, :genre_id
  end
end
