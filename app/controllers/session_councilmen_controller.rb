class SessionCouncilmenController < ApplicationController
  before_action :set_session_councilman, only: [:show, :edit, :update, :destroy]


  def index
    @session_councilmen = SessionCouncilman.all
  end

  def show
  end

  def new
    # @session = Session.find(params[:session_id])
    @session = Session.find(params[:session_id])
    
    # @councilmen = Councilman.all
    # @councilmen.each do |c| 
    #   @session.session_councilmen.build councilman_id: c.id
    # end  

    
    @councilmen = Councilman.all
    @session_councilman = SessionCouncilman.new
  end

  def edit
  end

  def create
    @session = Session.find(params[:session_id])
    
    params[:session_councilman].each do |councilman_id, options|
      sc = @session.session_councilmen.find_by councilman_id: councilman_id
      if sc.nil?
        @session.session_councilmen.create councilman_id: councilman_id,
                                         note: options[:note],
                                         being: options[:being]
      else
        sc.update_attributes(note: options[:note], being: options[:being])  
      end    
    end 

    redirect_back(fallback_location: root_path)
    # @session_councilman = SessionCouncilman.new(session_councilman_params)

    # respond_to do |format|
    #   if @session_councilman.save
    #     format.html { redirect_to @session_councilman, notice: 'Session councilman was successfully created.' }
    #     format.json { render :show, status: :created, location: @session_councilman }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @session_councilman.errors, status: :unprocessable_entity }
    #   end
    # end
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

  def destroy
    @session_councilman.destroy
    respond_to do |format|
      format.html { redirect_to session_councilmen_url, notice: 'Session councilman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_session_councilman
      @session_councilman = SessionCouncilman.find(params[:id])
    end

    def session_councilman_params
      params.require(:session_councilman).permit(:being, :note)
    end
end
