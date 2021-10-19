class AirConditioningsController < ApplicationController
  before_action :set_air_conditioning, only: %i[ show edit update destroy ]

  # GET /air_conditionings or /air_conditionings.json
  def index
    @air_conditionings = AirConditioning.all
  end

  # GET /air_conditionings/1 or /air_conditionings/1.json
  def show
  end

  # GET /air_conditionings/new
  def new
    @air_conditioning = AirConditioning.new
  end

  # GET /air_conditionings/1/edit
  def edit
  end

  # POST /air_conditionings or /air_conditionings.json
  def create
    @air_conditioning = AirConditioning.new(air_conditioning_params)

    respond_to do |format|
      if @air_conditioning.save
        format.html { redirect_to @air_conditioning, notice: "Air conditioning was successfully created." }
        format.json { render :show, status: :created, location: @air_conditioning }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @air_conditioning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /air_conditionings/1 or /air_conditionings/1.json
  def update
    respond_to do |format|
      if @air_conditioning.update(air_conditioning_params)
        format.html { redirect_to @air_conditioning, notice: "Air conditioning was successfully updated." }
        format.json { render :show, status: :ok, location: @air_conditioning }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @air_conditioning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_conditionings/1 or /air_conditionings/1.json
  def destroy
    @air_conditioning.destroy
    respond_to do |format|
      format.html { redirect_to air_conditionings_url, notice: "Air conditioning was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def import
    AirConditioning.my_import(params[:file])
    redirect_to root_path, notice: "CSV Importado!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_conditioning
      @air_conditioning = AirConditioning.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def air_conditioning_params
      params.require(:air_conditioning).permit(:category, :provider, :brand, :model_intern, :model_extern, :version, :capacity_btu_hour, :capacity_kw, :power_kw, :efficiency_kw_127v, :efficiency_kw_220v, :consumption_127v, :consumption_220v, :voltage, :consumption_procel_kwh_per_month, :consumption_average_brazil_kwh_per_month, :hours_consumption_per_month)
    end
end
