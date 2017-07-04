class FooddiariesController < ApplicationController
  before_action :set_fooddiary, only: [:show, :edit, :update, :destroy]
  before_action :set_food
  before_action :require_signin

  # GET /fooddiaries
  # GET /fooddiaries.json
  def index
    if params[:search]
      @fooddiaries = Fooddiary.where(datum: params[:search], user_id: current_user.id).order(:datum)
    else
      @fooddiaries = Fooddiary.where(user_id: current_user.id).order(:datum)
    end
  end

  # GET /fooddiaries/1
  # GET /fooddiaries/1.json
  def show
  end

  # GET /fooddiaries/new
  def new
    @fooddiary = @food.fooddiaries.new
    respond_to do |format|
      format.html 
      format.js
    end
  end

  # GET /fooddiaries/1/edit
  def edit
  end

  # POST /fooddiaries
  # POST /fooddiaries.json
  def create
    @fooddiary = @food.fooddiaries.new(fooddiary_params)
    @fooddiary.user_id = current_user.id
    @fooddiary.name = @food.name
    @fooddiary.eiweiß = @food.eiweiß
    @fooddiary.fett = @food.fett
    @fooddiary.kohlenhydrate = @food.kohlenhydrate
    @fooddiary.kalorien = @food.kalorien
    respond_to do |format|
      if @fooddiary.save
        format.html { redirect_to foods_path }
        format.json { render :show, status: :created, location: @fooddiary }
      else
        format.html { render :new }
        format.json { render json: @fooddiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fooddiaries/1
  # PATCH/PUT /fooddiaries/1.json
  def update
    respond_to do |format|
      if @fooddiary.update(fooddiary_params)
        format.html { redirect_to foods_path }
        format.json { render :show, status: :ok, location: @fooddiary }
      else
        format.html { render :edit }
        format.json { render json: @fooddiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fooddiaries/1
  # DELETE /fooddiaries/1.json
  def destroy
    @fooddiary.destroy
    respond_to do |format|
      format.html { redirect_to food_fooddiaries_url(@food.id) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fooddiary
      @fooddiary = Fooddiary.find(params[:id])
    end

    def set_food
      @food = Food.find(params[:food_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fooddiary_params
      params.require(:fooddiary).permit(:anzahl, :name, :datum, :eiweiß, :fett, :kohlenhydrate, :kalorien, :food_id, :user_id)
    end
end
