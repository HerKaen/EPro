class TagebuchesController < ApplicationController
  before_action :set_tagebuch, only: [:show, :edit, :update, :destroy]
  before_action :set_lebensmittel

  # GET /tagebuches
  # GET /tagebuches.json
  def index
    @tagebuches = @lebensmittel.tagebuches
  end

  # GET /tagebuches/1
  # GET /tagebuches/1.json
  def show
  end

  # GET /tagebuches/new
  def new
    @tagebuch = @lebensmittel.tagebuches.new
  end

  # GET /tagebuches/1/edit
  def edit
  end

  # POST /tagebuches
  # POST /tagebuches.json
  def create
    @tagebuch = @lebensmittel.tagebuches.new(tagebuch_params)

    respond_to do |format|
      if @tagebuch.save
        format.html { redirect_to lebensmittel_tagebuch_path(@lebensmittel.id, @tagebuch.id), notice: 'Tagebuch was successfully created.' }
        format.json { render :show, status: :created, location: @tagebuch }
      else
        format.html { render :new }
        format.json { render json: @tagebuch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tagebuches/1
  # PATCH/PUT /tagebuches/1.json
  def update
    respond_to do |format|
      if @tagebuch.update(tagebuch_params)
        format.html { redirect_to lebensmittel_tagebuch_path(@lebensmittel, @tagebuch), notice: 'Tagebuch was successfully updated.' }
        format.json { render :show, status: :ok, location: @tagebuch }
      else
        format.html { render :edit }
        format.json { render json: @tagebuch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tagebuches/1
  # DELETE /tagebuches/1.json
  def destroy
    @tagebuch.destroy
    respond_to do |format|
      format.html { redirect_to lebensmittel_tagebuches_url(@lebensmittel, @tagebuch), notice: 'Tagebuch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tagebuch
      @tagebuch = Tagebuch.find(params[:id])
    end

    def set_lebensmittel
        @lebensmittel = Lebensmittel.find(params[:lebensmittel_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tagebuch_params
      params.require(:tagebuch).permit(:name, :menge, :eiweiß, :fett, :kohlenhydrate, :kalorien, :anzahl, :datum)
    end
end
