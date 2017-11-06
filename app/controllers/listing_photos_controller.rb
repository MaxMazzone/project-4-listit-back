class ListingPhotosController < ApplicationController
  before_action :set_listing_photo, only: [:show, :update, :destroy]

  # GET /listing_photos
  def index
    @listing_photos = ListingPhoto.all

    render json: @listing_photos
  end

  # GET /listing_photos/1
  def show
    render json: @listing_photo
  end

  # POST /listing_photos
  def create
    @listing_photo = ListingPhoto.new(listing_photo_params)

    if @listing_photo.save
      render json: @listing_photo, status: :created, location: @listing_photo
    else
      render json: @listing_photo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /listing_photos/1
  def update
    if @listing_photo.update(listing_photo_params)
      render json: @listing_photo
    else
      render json: @listing_photo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /listing_photos/1
  def destroy
    @listing_photo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing_photo
      @listing_photo = ListingPhoto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def listing_photo_params
      params.require(:listing_photo).permit(:url, :apartment_id)
    end
end
