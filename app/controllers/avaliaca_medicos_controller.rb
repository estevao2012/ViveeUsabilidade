class AvaliacaMedicosController < ApplicationController
  before_action :set_avaliaca_medico, only: [:show, :edit, :update, :destroy]

  # GET /avaliaca_medicos
  # GET /avaliaca_medicos.json
  def index
    @avaliaca_medicos = AvaliacaMedico.all
  end

  # GET /avaliaca_medicos/1
  # GET /avaliaca_medicos/1.json
  def show
  end

  # GET /avaliaca_medicos/new
  def new
    @avaliaca_medico = AvaliacaMedico.new
  end

  # GET /avaliaca_medicos/1/edit
  def edit
  end

  # POST /avaliaca_medicos
  # POST /avaliaca_medicos.json
  def create
    @avaliaca_medico = AvaliacaMedico.new(avaliaca_medico_params)

    respond_to do |format|
      if @avaliaca_medico.save
        format.html { redirect_to :back, notice: 'Avaliaca medico was successfully created.' }
        format.json { render :show, status: :created, location: @avaliaca_medico }
      else
        format.html { render :new }
        format.json { render json: @avaliaca_medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaliaca_medicos/1
  # PATCH/PUT /avaliaca_medicos/1.json
  def update
    respond_to do |format|
      if @avaliaca_medico.update(avaliaca_medico_params)
        format.html { redirect_to @avaliaca_medico, notice: 'Avaliaca medico was successfully updated.' }
        format.json { render :show, status: :ok, location: @avaliaca_medico }
      else
        format.html { render :edit }
        format.json { render json: @avaliaca_medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliaca_medicos/1
  # DELETE /avaliaca_medicos/1.json
  def destroy
    @avaliaca_medico.destroy
    respond_to do |format|
      format.html { redirect_to avaliaca_medicos_url, notice: 'Avaliaca medico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaliaca_medico
      @avaliaca_medico = AvaliacaMedico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avaliaca_medico_params
      params.require(:avaliaca_medico).permit(:medico_id, :titulo, :texto, :rating)
    end
end
