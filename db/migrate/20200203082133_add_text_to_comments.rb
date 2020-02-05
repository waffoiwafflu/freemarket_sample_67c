class AddTextToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :text, :text, null: false
    add_column :comments, :user_id, :integer, foreign_key: true   
    add_column :comments, :item_id, :integer, foreign_key: true
  end
end
