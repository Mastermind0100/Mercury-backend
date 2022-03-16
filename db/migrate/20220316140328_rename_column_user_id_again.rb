class RenameColumnUserIdAgain < ActiveRecord::Migration[7.0]
  def change
    rename_column :items, :type, :value_type
  end
end
