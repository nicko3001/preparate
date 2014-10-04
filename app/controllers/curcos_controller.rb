class CurcosController < ApplicationController
  before_action :set_curco, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  # GET /curcos
  # GET /curcos.json
  def index
    @curcos = Curco.all
  end

  # GET /curcos/1
  # GET /curcos/1.json
  def show
  end

  # GET /curcos/new
  def new
    @curco = Curco.new
  end

  # GET /curcos/1/edit
  def edit
  end

  # POST /curcos
  # POST /curcos.json
  def create
    @curco = Curco.new(curco_params)

    respond_to do |format|
      if @curco.save
        format.html { redirect_to @curco, notice: 'Curco was successfully created.' }
        format.json { render :show, status: :created, location: @curco }
      else
        format.html { render :new }
        format.json { render json: @curco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curcos/1
  # PATCH/PUT /curcos/1.json
  def update
    respond_to do |format|
      if @curco.update(curco_params)
        format.html { redirect_to @curco, notice: 'Curco was successfully updated.' }
        format.json { render :show, status: :ok, location: @curco }
      else
        format.html { render :edit }
        format.json { render json: @curco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curcos/1
  # DELETE /curcos/1.json
  def destroy
    @curco.destroy
    respond_to do |format|
      format.html { redirect_to curcos_url, notice: 'Curco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curco
      @curco = Curco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curco_params
      params.require(:curco).permit(:titulo, :descripcion, :precio, :Imagen, :Contenido)
    end
end
