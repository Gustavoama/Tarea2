class SusDatosController < ApplicationController
  before_action :set_sus_dato, only: [:show, :edit, :update, :destroy]

  # GET /sus_datos
  # GET /sus_datos.json
  def index
    @sus_datos = SusDato.all
  end

  # GET /sus_datos/1
  # GET /sus_datos/1.json
  def show
  end

  # GET /sus_datos/new
  def new
    @sus_dato = SusDato.new
  end

  # GET /sus_datos/1/edit
  def edit
  end

  # POST /sus_datos
  # POST /sus_datos.json
  def create
    @sus_dato = SusDato.new(sus_dato_params)

    respond_to do |format|
      if @sus_dato.save
        format.html { redirect_to @sus_dato, notice: 'Sus dato was successfully created.' }
        format.json { render :show, status: :created, location: @sus_dato }
      else
        format.html { render :new }
        format.json { render json: @sus_dato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sus_datos/1
  # PATCH/PUT /sus_datos/1.json
  def update
    respond_to do |format|
      if @sus_dato.update(sus_dato_params)
        format.html { redirect_to @sus_dato, notice: 'Sus dato was successfully updated.' }
        format.json { render :show, status: :ok, location: @sus_dato }
      else
        format.html { render :edit }
        format.json { render json: @sus_dato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sus_datos/1
  # DELETE /sus_datos/1.json
  def destroy
    @sus_dato.destroy
    respond_to do |format|
      format.html { redirect_to sus_datos_url, notice: 'Sus dato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sus_dato
      @sus_dato = SusDato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sus_dato_params
      params.require(:sus_dato).permit(:Fecha, :Nombre, :Edad, :Direccion, :Comer, :Dormir)
    end
end
