class AddStatusToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :status, :integer,          null: false, limit: 1
    add_column :items, :delivery_charge, :integer, null: false, limit: 1
    add_column :items, :address, :integer,         null: false, limit: 1
    add_column :items, :price, :integer,           null: false, limit: 1
    add_column :items, :date, :integer,            null: false, limit: 1
    add_column :items, :detail, :text, null: false
    add_column :items, :category_id, :integer, foreign_key: true
    add_column :items, :brand_id, :integer, foreign_key: true
    add_column :items, :saler_id, :integer, foreign_key: { to_table: :users }
    add_column :items, :buyer_id, :integer, foreign_key: { to_table: :users }
  end
end