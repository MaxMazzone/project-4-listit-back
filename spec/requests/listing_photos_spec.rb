require 'rails_helper'

RSpec.describe "ListingPhotos", type: :request do
  describe "GET /listing_photos" do
    it "works! (now write some real specs)" do
      get listing_photos_path
      expect(response).to have_http_status(200)
    end
  end
end
