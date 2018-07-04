class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  
  def index
    @sessions = Session.all.paginate(:page => params[:page], :per_page => 6)
  end

 
  def show
  end

 
  def new
    @session = Session.new
  end

  def edit
  end

  def create
    @session = Session.new(session_params)

    respond_to do |format|
      if @session.save
        format.html { redirect_to @session, notice: 'Session was successfully created.' }
        format.json { render :show, status: :created, location: @session }
      else
        format.html { render :new }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @session.update(session_params)
        format.html { redirect_to @session, notice: 'Session was successfully updated.' }
        format.json { render :show, status: :ok, location: @session }
      else
        format.html { render :edit }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @session.destroy
    respond_to do |format|
      format.html { redirect_to sessions_url, notice: 'Session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def projects    
    @session = Session.find(params[:session_id])
  end

  def presents
      @session = Session.find(params[:session_id])

      ## Cuidado com esse código, como lhe falei você precisa pensar nos mandatos 
      Councilman.all.each do |c|
        @session.session_councilmen.find_or_create_by!(councilman_id: c.id)
      end
  end

  def update_presents
    @session = Session.find(params[:session_id])
    sc_params = params.require(:session).permit(session_councilmen_attributes: [:id, :note, :present, :arrival, :leaving])

    if @session.update(sc_params)
      flash[:success] = 'Dados atualizados com sucesso'
    else
      flash[:error] = 'Não foi possível atualizar os dados'
    end

    redirect_back(fallback_location: root_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.require(:session).permit(:date, :start_session, :end_session, :note)
    end
end
