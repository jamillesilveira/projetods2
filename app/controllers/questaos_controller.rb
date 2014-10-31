class QuestaosController < ApplicationController
  before_action :set_questao, only: [:show, :edit, :update, :destroy]

  # GET /questaos
  # GET /questaos.json
  def index
    @questaos = Questao.all
  end

  # GET /questaos/1
  # GET /questaos/1.json
  def show
  end

  # GET /questaos/new
  def new
    @questao = Questao.new
  end

  # GET /questaos/1/edit
  def edit
  end

  # POST /questaos
  # POST /questaos.json
  def create
    @questao = Questao.new(questao_params)

    respond_to do |format|
      if @questao.save
        format.html { redirect_to @questao, notice: 'Questao was successfully created.' }
        format.json { render :show, status: :created, location: @questao }
      else
        format.html { render :new }
        format.json { render json: @questao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questaos/1
  # PATCH/PUT /questaos/1.json
  def update
    respond_to do |format|
      if @questao.update(questao_params)
        format.html { redirect_to @questao, notice: 'Questao was successfully updated.' }
        format.json { render :show, status: :ok, location: @questao }
      else
        format.html { render :edit }
        format.json { render json: @questao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questaos/1
  # DELETE /questaos/1.json
  def destroy
    @questao.destroy
    respond_to do |format|
      format.html { redirect_to questaos_url, notice: 'Questao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questao
      @questao = Questao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questao_params
      params.require(:questao).permit(:cod, :enunciado, :resposta, :pergunta)
    end
end
