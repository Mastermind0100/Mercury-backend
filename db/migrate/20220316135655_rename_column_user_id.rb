class RenameColumnUserId < ActiveRecord::Migration[7.0]
  def change
    rename_column :items, :user_id, :type
  end
end
