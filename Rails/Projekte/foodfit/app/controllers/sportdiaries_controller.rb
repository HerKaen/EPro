class SportdiariesController < ApplicationController
  before_action :set_sportdiary, only: [:show, :edit, :update, :destroy]
  before_action :set_sport
  before_action :require_signin

  # GET /sportdiaries
  # GET /sportdiaries.json
  def index
    @sportdiaries = @sport.sportdiaries.where(user_id: current_user.id)
  end

  # GET /sportdiaries/1
  # GET /sportdiaries/1.json
  def show
  end

  # GET /sportdiaries/new
  def new
    @sportdiary = @sport.sportdiaries.new
  end

  # GET /sportdiaries/1/edit
  def edit
  end

  # POST /sportdiaries
  # POST /sportdiaries.json
  def create
    @sportdiary = @sport.sportdiaries.new(sportdiary_params)
    @sportdiary.user_id = current_user.id
    @sportdiary.name = @sport.name
    @sportdiary.kalorien = @sport.kalorien
    respond_to do |format|
      if @sportdiary.save
        format.html { redirect_to sport_sportdiaries_path, notice: 'Sportdiary was successfully created.' }
        format.json { render :show, status: :created, location: @sportdiary }
      else
        format.html { render :new }
        format.json { render json: @sportdiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sportdiaries/1
  # PATCH/PUT /sportdiaries/1.json
  def update
    respond_to do |format|
      if @sportdiary.update(sportdiary_params)
        format.html { redirect_to sport_sportdiary_path(@sport.id, @sportdiary.id), notice: 'Sportdiary was successfully updated.' }
        format.json { render :show, status: :ok, location: @sportdiary }
      else
        format.html { render :edit }
        format.json { render json: @sportdiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sportdiaries/1
  # DELETE /sportdiaries/1.json
  def destroy
    @sportdiary.destroy
    respond_to do |format|
      format.html { redirect_to sport_sportdiaries_url(@sport.id), notice: 'Sportdiary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sportdiary
      @sportdiary = Sportdiary.find(params[:id])
    end

    def set_sport
      @sport = Sport.find(params[:sport_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sportdiary_params
      params.require(:sportdiary).permit(:datum, :name, :anzahl, :kalorien, :sport_id, :user_id)
    end
end
