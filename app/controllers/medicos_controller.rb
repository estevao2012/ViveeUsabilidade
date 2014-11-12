class MedicosController < ApplicationController
  before_action :set_medico, only: [:show, :edit, :update, :destroy]

  # GET /medicos
  # GET /medicos.json
  def index 
    @medicos = Medico.all 
    unless medico_params.nil?
      @medicos = @medicos.where(nome: medico_params[:nome]) unless medico_params[:nome].nil? || medico_params[:nome].empty? || medico_params[:nome] == "" 
      @medicos = @medicos.where(especialidade: medico_params[:especialidade]) unless medico_params[:especialidade].nil? || medico_params[:especialidade].empty? || medico_params[:especialidade] == "" 
    end 
  end

  # GET /medicos/1
  # GET /medicos/1.json
  def show
    @avaliaca_medico = AvaliacaMedico.new medico: @medico
  end

  # GET /medicos/new
  def new
    @medico = Medico.new
  end

  # GET /medicos/1/edit
  def edit
  end

  # POST /medicos
  # POST /medicos.json
  def create
    @medico = Medico.new(medico_params)

    respond_to do |format|
      if @medico.save
        format.html { redirect_to @medico, notice: 'Medico was successfully created.' }
        format.json { render :show, status: :created, location: @medico }
      else
        format.html { render :new }
        format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicos/1
  # PATCH/PUT /medicos/1.json
  def update
    respond_to do |format|
      if @medico.update(medico_params)
        format.html { redirect_to @medico, notice: 'Medico was successfully updated.' }
        format.json { render :show, status: :ok, location: @medico }
      else
        format.html { render :edit }
        format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicos/1
  # DELETE /medicos/1.json
  def destroy
    @medico.destroy
    respond_to do |format|
      format.html { redirect_to medicos_url, notice: 'Medico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medico
      @medico = Medico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medico_params 
      params.require(:medico).permit(:nome, :especialidade, :avatar) if params[:medico]
    end
end
