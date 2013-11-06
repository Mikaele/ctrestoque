class DetalhesController < ApplicationController
  before_action :set_detalhe, only: [:show, :edit, :update, :destroy]

  # GET /detalhes
  # GET /detalhes.json
  def index
    @detalhes = Detalhe.all
  end

  # GET /detalhes/1
  # GET /detalhes/1.json
  def show
  end

  # GET /detalhes/new
  def new
    @detalhe = Detalhe.new
  end

  # GET /detalhes/1/edit
  def edit
  end

  # POST /detalhes
  # POST /detalhes.json
  def create
    @detalhe = Detalhe.new(detalhe_params)

    respond_to do |format|
      if @detalhe.save
        format.html { redirect_to @detalhe, notice: 'Detalhe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @detalhe }
      else
        format.html { render action: 'new' }
        format.json { render json: @detalhe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalhes/1
  # PATCH/PUT /detalhes/1.json
  def update
    respond_to do |format|
      if @detalhe.update(detalhe_params)
        format.html { redirect_to @detalhe, notice: 'Detalhe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @detalhe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalhes/1
  # DELETE /detalhes/1.json
  def destroy
    @detalhe.destroy
    respond_to do |format|
      format.html { redirect_to detalhes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalhe
      @detalhe = Detalhe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalhe_params
      params.require(:detalhe).permit(:item_id_id, :quantidade)
    end
end
