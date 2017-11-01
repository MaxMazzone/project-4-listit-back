class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.string :address
      t.integer :rent
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :description
      t.boolean :pets_allowed

      t.timestamps
    end
  end
end
