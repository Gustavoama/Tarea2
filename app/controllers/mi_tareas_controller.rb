class MiTareasController < ApplicationController
  before_action :set_mi_tarea, only: [:show, :edit, :update, :destroy]

  # GET /mi_tareas
  # GET /mi_tareas.json
  def index
    @mi_tareas = MiTarea.all
  end

  # GET /mi_tareas/1
  # GET /mi_tareas/1.json
  def show
  end

  # GET /mi_tareas/new
  def new
    @mi_tarea = MiTarea.new
  end

  # GET /mi_tareas/1/edit
  def edit
  end

  # POST /mi_tareas
  # POST /mi_tareas.json
  def create
    @mi_tarea = MiTarea.new(mi_tarea_params)

    respond_to do |format|
      if @mi_tarea.save
        format.html { redirect_to @mi_tarea, notice: 'Mi tarea was successfully created.' }
        format.json { render :show, status: :created, location: @mi_tarea }
      else
        format.html { render :new }
        format.json { render json: @mi_tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mi_tareas/1
  # PATCH/PUT /mi_tareas/1.json
  def update
    respond_to do |format|
      if @mi_tarea.update(mi_tarea_params)
        format.html { redirect_to @mi_tarea, notice: 'Mi tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @mi_tarea }
      else
        format.html { render :edit }
        format.json { render json: @mi_tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mi_tareas/1
  # DELETE /mi_tareas/1.json
  def destroy
    @mi_tarea.destroy
    respond_to do |format|
      format.html { redirect_to mi_tareas_url, notice: 'Mi tarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mi_tarea
      @mi_tarea = MiTarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mi_tarea_params
      params.require(:mi_tarea).permit(:Fecha, :Nombre, :Edad, :Direccion, :Comer, :Dormir)
    end
end
