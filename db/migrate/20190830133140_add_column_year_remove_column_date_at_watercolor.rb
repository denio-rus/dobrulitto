class AddColumnYearRemoveColumnDateAtWatercolor < ActiveRecord::Migration[5.2]
  def change
    remove_column :watercolors, :date
    add_column :watercolors, :year, :integer, null: false, default: 2019
  end
end
