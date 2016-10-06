class CadastroPlanoDeVoosController < ApplicationController
  before_action :set_cadastro_plano_de_voo, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_plano_de_voos
  # GET /cadastro_plano_de_voos.json
  def index
    @cadastro_plano_de_voos = CadastroPlanoDeVoo.all
  end

  # GET /cadastro_plano_de_voos/1
  # GET /cadastro_plano_de_voos/1.json
  def show
  end

  # GET /cadastro_plano_de_voos/new
  def new
    @cadastro_plano_de_voo = CadastroPlanoDeVoo.new
  end

  # GET /cadastro_plano_de_voos/1/edit
  def edit
  end

  # POST /cadastro_plano_de_voos
  # POST /cadastro_plano_de_voos.json
  def create
    @cadastro_plano_de_voo = CadastroPlanoDeVoo.new(cadastro_plano_de_voo_params)

    respond_to do |format|
      if @cadastro_plano_de_voo.save
        format.html { redirect_to @cadastro_plano_de_voo, notice: 'Cadastro plano de voo was successfully created.' }
        format.json { render :show, status: :created, location: @cadastro_plano_de_voo }
      else
        format.html { render :new }
        format.json { render json: @cadastro_plano_de_voo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_plano_de_voos/1
  # PATCH/PUT /cadastro_plano_de_voos/1.json
  def update
    respond_to do |format|
      if @cadastro_plano_de_voo.update(cadastro_plano_de_voo_params)
        format.html { redirect_to @cadastro_plano_de_voo, notice: 'Cadastro plano de voo was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_plano_de_voo }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_plano_de_voo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_plano_de_voos/1
  # DELETE /cadastro_plano_de_voos/1.json
  def destroy
    @cadastro_plano_de_voo.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_plano_de_voos_url, notice: 'Cadastro plano de voo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_plano_de_voo
      @cadastro_plano_de_voo = CadastroPlanoDeVoo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_plano_de_voo_params
      params.require(:cadastro_plano_de_voo).permit(:objetivos, :frequencia_voo, :duracao_voo, :numero_estacoes, :localizacao_estacoes, :transferencia, :local_decolagem, :requisitos_decolagem, :requisitos_pouso, :rota, :carga_util, :altura_maxima, :local_destino, :data_voo, :codigo_chamada, :regras_voo, :tipo_operacao, :id_operador)
    end
end
