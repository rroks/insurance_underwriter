class Api::PerosonsController < Api::ApplicationController
  before_action :set_peroson, only: [:show, :update, :destroy]

  # GET /perosons.json
  def index
    @perosons = Peroson.all
  end

  # GET /perosons/1.json
  def show
  end

  # GET /perosons/new
  def new
    @peroson = Peroson.new
  end

  # POST /perosons.json
  def create
    @peroson = Peroson.new(peroson_params)

    respond_to do |format|
      if @peroson.save
        format.json { render :show, status: :created, location: @peroson }
      else
        format.json { render json: @peroson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perosons/1.json
  def update
    respond_to do |format|
      if @peroson.update(peroson_params)
        format.json { render :show, status: :ok, location: @peroson }
      else
        format.json { render json: @peroson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perosons/1.json
  def destroy
    @peroson.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peroson
      @peroson = Peroson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peroson_params
      params.require(:peroson).permit(:title, 
                                      :forename, 
                                      :surname, 
                                      :email, 
                                      :date_of_birth, 
                                      :telephone_number, 
                                      :street, 
                                      :city, 
                                      :county, 
                                      :postcode, 
                                      :license_type, 
                                      :license_period, 
                                      :occupation,
                                      vehicle_attributes:[:vehicle_registration, :estimated_annual_mileage, :estimated_vehicle_value, :typical_parking_location, :policy_start_date],
                                      driver_histories_attributes:[:date_of_incident, :total_value_of_claim, :incident_type, :description])
    end
end
