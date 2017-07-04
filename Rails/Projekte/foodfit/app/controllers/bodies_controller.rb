class BodiesController < ApplicationController
  before_action :set_body, only: [:show, :edit, :update, :destroy]
  before_action :require_signin

  # GET /bodies
  # GET /bodies.json
  def index
    @bodies = Body.where(user_id: current_user.id).order(:datum).paginate(:page => params[:page], :per_page => 8)
    @weight_today = false
    @bodies.each do |body|
      convert_date = Date.parse(body.datum.to_s)
      if convert_date == Date.today
        @weight_today = true
      end
    end
  end

  # GET /bodies/1
  # GET /bodies/1.json
  def show
    @successes = @body.successes
  end

  # GET /bodies/new
  def new
      @body = Body.new
      respond_to do |format|
          format.html 
          format.js
      end
    end

  # GET /bodies/1/edit
  def edit
  end

  # POST /bodies
  # POST /bodies.json
  def create
    @body = Body.new(body_params)
      @body.user_id = current_user.id
    respond_to do |format|
      if @body.save
        format.html { redirect_to bodies_path }
        format.json { render :show, status: :created, location: @body }
      else
        format.html { render :new }
        format.json { render json: @body.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bodies/1
  # PATCH/PUT /bodies/1.json
  def update
    respond_to do |format|
      if @body.update(body_params)
        format.html { redirect_to bodies_path }
        format.json { render :show, status: :ok, location: @body }
      else
        format.html { render :edit }
        format.json { render json: @body.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodies/1
  # DELETE /bodies/1.json
  def destroy
    @body.destroy
    respond_to do |format|
      format.html { redirect_to bodies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body
      @body = Body.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def body_params
      params.require(:body).permit(:datum, :weigth, :user_id)
    end
end
