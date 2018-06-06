class SessionCouncilmenController < ApplicationController
  before_action :set_session_councilman, only: [:show, :edit, :update, :destroy]


  # GET /session_councilmen
  # GET /session_councilmen.json
  def index
    @session_councilmen = SessionCouncilman.all
  end

  # GET /session_councilmen/1
  # GET /session_councilmen/1.json
  def show
  end

  # GET /session_councilmen/new
  def new
    
    @councilmen = Councilman.all
    @session_councilman = SessionCouncilman.new
  end

  # GET /session_councilmen/1/edit
  def edit
  end

  # POST /session_councilmen
  # POST /session_councilmen.json
  def create

    @session_councilman = SessionCouncilman.new(session_councilman_params)

    respond_to do |format|
      if @session_councilman.save
        format.html { redirect_to @session_councilman, notice: 'Session councilman was successfully created.' }
        format.json { render :show, status: :created, location: @session_councilman }
      else
        format.html { render :new }
        format.json { render json: @session_councilman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /session_councilmen/1
  # PATCH/PUT /session_councilmen/1.json
  def update
    respond_to do |format|
      if @session_councilman.update(session_councilman_params)
        format.html { redirect_to @session_councilman, notice: 'Session councilman was successfully updated.' }
        format.json { render :show, status: :ok, location: @session_councilman }
      else
        format.html { render :edit }
        format.json { render json: @session_councilman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_councilmen/1
  # DELETE /session_councilmen/1.json
  def destroy
    @session_councilman.destroy
    respond_to do |format|
      format.html { redirect_to session_councilmen_url, notice: 'Session councilman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_councilman
      @session_councilman = SessionCouncilman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_councilman_params
      params.require(:session_councilman).permit(:session_id, :councilman_id, :arrival, :leaving, :note)
    end
end
