class FibresController < ApplicationController
  before_action :set_fibre, only: [:show, :edit, :update, :destroy]

  # GET /fibres
  # GET /fibres.json
  def index
    @fibres = Fibre.all

    @markers = @fibres.geocoded.map do |fibre|
      {
        lat: fibre.latitude,
        lng: fibre.longitude
      }
    end
  end

  # GET /fibres/1
  # GET /fibres/1.json
  def show
  end

  # GET /fibres/new
  def new
    @fibre = Fibre.new
  end

  # GET /fibres/1/edit
  def edit
  end

  # POST /fibres
  # POST /fibres.json
  def create
    @fibre = Fibre.new(fibre_params)

    respond_to do |format|
      if @fibre.save
        format.html { redirect_to @fibre, notice: 'Fibre was successfully created.' }
        format.json { render :show, status: :created, location: @fibre }
      else
        format.html { render :new }
        format.json { render json: @fibre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fibres/1
  # PATCH/PUT /fibres/1.json
  def update
    respond_to do |format|
      if @fibre.update(fibre_params)
        format.html { redirect_to @fibre, notice: 'Fibre was successfully updated.' }
        format.json { render :show, status: :ok, location: @fibre }
      else
        format.html { render :edit }
        format.json { render json: @fibre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fibres/1
  # DELETE /fibres/1.json
  def destroy
    @fibre.destroy
    respond_to do |format|
      format.html { redirect_to fibres_url, notice: 'Fibre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fibre
      @fibre = Fibre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fibre_params
      params.require(:fibre).permit(:serviceid, :address)
    end
end
