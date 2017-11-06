require "rails_helper"

RSpec.describe ListingPhotosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/listing_photos").to route_to("listing_photos#index")
    end


    it "routes to #show" do
      expect(:get => "/listing_photos/1").to route_to("listing_photos#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/listing_photos").to route_to("listing_photos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/listing_photos/1").to route_to("listing_photos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/listing_photos/1").to route_to("listing_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/listing_photos/1").to route_to("listing_photos#destroy", :id => "1")
    end

  end
end
