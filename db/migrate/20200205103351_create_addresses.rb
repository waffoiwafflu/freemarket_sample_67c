class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :zipcode
      t.string :region,       null: false
      t.string :municipality, null: false
      t.string :street_mansion
      t.references :user
      t.timestamps
    end
  end
end
