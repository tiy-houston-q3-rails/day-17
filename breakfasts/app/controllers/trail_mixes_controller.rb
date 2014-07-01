class TrailMixesController < ApplicationController
  before_action :set_trail_mix, only: [:show, :edit, :update, :destroy]

  # GET /trail_mixes
  # GET /trail_mixes.json
  def index
    @trail_mixes = TrailMix.all
  end

  # GET /trail_mixes/1
  # GET /trail_mixes/1.json
  def show
  end

  # GET /trail_mixes/new
  def new
    @trail_mix = TrailMix.new
  end

  # GET /trail_mixes/1/edit
  def edit
  end

  # POST /trail_mixes
  # POST /trail_mixes.json
  def create
    @trail_mix = TrailMix.new(trail_mix_params)

    respond_to do |format|
      if @trail_mix.save
        format.html { redirect_to @trail_mix, notice: 'Trail mix was successfully created.' }
        format.json { render :show, status: :created, location: @trail_mix }
      else
        format.html { render :new }
        format.json { render json: @trail_mix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trail_mixes/1
  # PATCH/PUT /trail_mixes/1.json
  def update
    respond_to do |format|
      if @trail_mix.update(trail_mix_params)
        format.html { redirect_to @trail_mix, notice: 'Trail mix was successfully updated.' }
        format.json { render :show, status: :ok, location: @trail_mix }
      else
        format.html { render :edit }
        format.json { render json: @trail_mix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trail_mixes/1
  # DELETE /trail_mixes/1.json
  def destroy
    @trail_mix.destroy
    respond_to do |format|
      format.html { redirect_to trail_mixes_url, notice: 'Trail mix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trail_mix
      @trail_mix = TrailMix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trail_mix_params
      params.require(:trail_mix).permit(:name, :ingredients)
    end
end
