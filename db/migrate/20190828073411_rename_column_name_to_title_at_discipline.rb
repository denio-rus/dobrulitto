class RenameColumnNameToTitleAtDiscipline < ActiveRecord::Migration[5.2]
  def change
    rename_column :disciplines, :name, :title
  end
end
