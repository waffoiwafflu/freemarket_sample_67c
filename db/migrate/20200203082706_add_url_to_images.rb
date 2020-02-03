class AddUrlToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :url, :string, null: false
    add_column :images, :item_id, :integer, foreign_key: true
  end
end
