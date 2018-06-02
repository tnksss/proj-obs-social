class CouncilmenController < ApplicationController
  before_action :set_councilman, only: [:show, :edit, :update, :destroy]

  # GET /councilmen
  # GET /councilmen.json
  def index
    @councilmen = Councilman.all.paginate(:page => params[:page], :per_page => 6)

  end

  # GET /councilmen/1
  # GET /councilmen/1.json
  def show
  end

  # GET /councilmen/new
  def new
    @councilman = Councilman.new
  end

  # GET /councilmen/1/edit
  def edit
  end

  # POST /councilmen
  # POST /councilmen.json
  def create
    @councilman = Councilman.new(councilman_params)

    respond_to do |format|
      if @councilman.save
        flash[:success] = "Novo vereador adicionado!"
        format.html { redirect_to @councilman }
        format.json { render :show, status: :created, location: @councilman }
      else
        flash[:error] = "Houve algum problema, reveja os dados inseridos!"
        format.html { render :new }
        format.json { render json: @councilman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /councilmen/1
  # PATCH/PUT /councilmen/1.json
  def update
    respond_to do |format|
      if @councilman.update(councilman_params)
        format.html { redirect_to @councilman, notice: "Councilman was successfully updated." }
        format.json { render :show, status: :ok, location: @councilman }
      else
        flash[:error] = "Houve algum problema, reveja os dados inseridos !"

        format.html { render :edit }
        format.json { render json: @councilman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /councilmen/1
  # DELETE /councilmen/1.json
  def destroy
    @councilman.destroy
    respond_to do |format|
      format.html { redirect_to councilmen_url, notice: "Councilman was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_councilman
    @councilman = Councilman.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def councilman_params
    params.require(:councilman).permit(:name, :nickname, :political_party, :political_position, :avatar)
  end
end
