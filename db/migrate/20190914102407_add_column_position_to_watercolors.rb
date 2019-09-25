class AddColumnPositionToWatercolors < ActiveRecord::Migration[5.2]
  def change
    add_column :watercolors, :position, :integer, unique: true
  end
end
