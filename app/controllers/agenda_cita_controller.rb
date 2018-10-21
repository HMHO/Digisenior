class AgendaCitaController < ApplicationController
  before_action :set_agenda_citum, only: [:show, :edit, :update, :destroy]

  # GET /agenda_cita
  # GET /agenda_cita.json
  def index
    @agenda_cita = AgendaCitum.all
  end

  # GET /agenda_cita/1
  # GET /agenda_cita/1.json
  def show
  end

  # GET /agenda_cita/new
  def new
    @agenda_citum = AgendaCitum.new
  end

  # GET /agenda_cita/1/edit
  def edit
  end

  # POST /agenda_cita
  # POST /agenda_cita.json
  def create
    @agenda_citum = AgendaCitum.new(agenda_citum_params)

    respond_to do |format|
      if @agenda_citum.save
        format.html { redirect_to @agenda_citum, notice: 'Agenda citum was successfully created.' }
        format.json { render :show, status: :created, location: @agenda_citum }
      else
        format.html { render :new }
        format.json { render json: @agenda_citum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agenda_cita/1
  # PATCH/PUT /agenda_cita/1.json
  def update
    respond_to do |format|
      if @agenda_citum.update(agenda_citum_params)
        format.html { redirect_to @agenda_citum, notice: 'Agenda citum was successfully updated.' }
        format.json { render :show, status: :ok, location: @agenda_citum }
      else
        format.html { render :edit }
        format.json { render json: @agenda_citum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda_cita/1
  # DELETE /agenda_cita/1.json
  def destroy
    @agenda_citum.destroy
    respond_to do |format|
      format.html { redirect_to agenda_cita_url, notice: 'Agenda citum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda_citum
      @agenda_citum = AgendaCitum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agenda_citum_params
      params.require(:agenda_citum).permit(:ips, :especialidad, :profesional, :fecha, :paciente)
    end
end
