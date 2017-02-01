class LebensmittelsController < ApplicationController
  before_action :set_lebensmittel, only: [:show, :edit, :update, :destroy]

  # GET /lebensmittels
  # GET /lebensmittels.json
  def index
    @lebensmittels = Lebensmittel.all
  end

  # GET /lebensmittels/1
  # GET /lebensmittels/1.json
  def show
  end

  # GET /lebensmittels/new
  def new
    @lebensmittel = Lebensmittel.new
  end

  # GET /lebensmittels/1/edit
  def edit
  end

  # POST /lebensmittels
  # POST /lebensmittels.json
  def create
    @lebensmittel = Lebensmittel.new(lebensmittel_params)

    respond_to do |format|
      if @lebensmittel.save
        format.html { redirect_to @lebensmittel, notice: 'Lebensmittel was successfully created.' }
        format.json { render :show, status: :created, location: @lebensmittel }
      else
        format.html { render :new }
        format.json { render json: @lebensmittel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lebensmittels/1
  # PATCH/PUT /lebensmittels/1.json
  def update
    respond_to do |format|
      if @lebensmittel.update(lebensmittel_params)
        format.html { redirect_to @lebensmittel, notice: 'Lebensmittel was successfully updated.' }
        format.json { render :show, status: :ok, location: @lebensmittel }
      else
        format.html { render :edit }
        format.json { render json: @lebensmittel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lebensmittels/1
  # DELETE /lebensmittels/1.json
  def destroy
    @lebensmittel.destroy
    respond_to do |format|
      format.html { redirect_to lebensmittels_url, notice: 'Lebensmittel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lebensmittel
      @lebensmittel = Lebensmittel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lebensmittel_params
      params.require(:lebensmittel).permit(:name, :menge, :einheit, :eiweiß, :fett, :kohlenhydrate, :kalorien)
    end
end
