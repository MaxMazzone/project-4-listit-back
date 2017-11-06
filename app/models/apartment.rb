class Apartment < ApplicationRecord
  belongs_to :user
  has_many :listing_photos, dependent: :destroy
end
