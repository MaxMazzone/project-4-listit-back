class ApartmentsController < OpenReadController
  before_action :set_apartment, only: [:update, :destroy]

  # GET /apartments
  def index
    @apartments = Apartment.all

    render json: @apartments
  end

  # GET /apartments/1
  def show
    render json: Apartment.find(params[:id])
  end

  # POST /apartments
  def create
    @apartment = current_user.apartments.build(apartment_params)

    if @apartment.save
      render json: @apartment, status: :created, location: @apartment
    else
      render json: @apartment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /apartments/1
  def update
    if @apartment.update(apartment_params)
      render json: @apartment
    else
      render json: @apartment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /apartments/1
  def destroy
    @apartment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment
      @apartment = current_user.apartments.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def apartment_params
      params.require(:apartment).permit(:address, :rent, :bedrooms, :bathrooms, :description, :pets_allowed)
    end
end
