class SwimsController < ApplicationController
  before_action :set_swim, only: [:show, :edit, :update, :destroy]

  # GET /swims
  # GET /swims.json
  def index
    @swims = Swim.all
  end

  # GET /swims/1
  # GET /swims/1.json
  def show
  end

  # GET /swims/new
  def new
    @swim = Swim.new
  end

  # GET /swims/1/edit
  def edit
  end

  # POST /swims
  # POST /swims.json
  def create
    @swim = Swim.new(swim_params)

    respond_to do |format|
      if @swim.save
        format.html { redirect_to @swim, notice: 'Swim was successfully created.' }
        format.json { render :show, status: :created, location: @swim }
      else
        format.html { render :new }
        format.json { render json: @swim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swims/1
  # PATCH/PUT /swims/1.json
  def update
    respond_to do |format|
      if @swim.update(swim_params)
        format.html { redirect_to @swim, notice: 'Swim was successfully updated.' }
        format.json { render :show, status: :ok, location: @swim }
      else
        format.html { render :edit }
        format.json { render json: @swim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swims/1
  # DELETE /swims/1.json
  def destroy
    @swim.destroy
    respond_to do |format|
      format.html { redirect_to swims_url, notice: 'Swim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swim
      @swim = Swim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swim_params
      params.require(:swim).permit(:when, :duration, :distance, :pool_id)
    end
end
