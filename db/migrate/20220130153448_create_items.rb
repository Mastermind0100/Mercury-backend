class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :url
      t.string :user_id

      t.timestamps
    end
  end
end
