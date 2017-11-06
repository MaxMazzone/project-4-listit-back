class AddApartmentToListingPhotos < ActiveRecord::Migration[5.1]
  def change
    add_reference :listing_photos, :apartment, foreign_key: true
  end
end
