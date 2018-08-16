class ProjectsController < ApplicationController
  before_action :set_project, :set_meeting, :set_session_councilmen,
  only: [:show, :edit, :update, :destroy]
  after_action :set_result, only: [:update_votes]

  def index
    
    if params[:search]
      @projects = Project.search(params[:search]).paginate(:page => params[:page], :per_page => 5).order(name: :asc)
    else
      @projects = Project.all.paginate(:page => params[:page], :per_page => 5)
                         .order(name: :asc)
    end
    
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def votes    
    @project = Project.find(params[:project_id])
  end

  def votes
    @project = Project.find(params[:project_id])

    # Councilman.all.each do |c|
    Councilman.joins(:session_councilmen).
    where(:session_councilmen => { meeting_id: @project.meeting_id, present: true})
    .all.each do |c|
      @project.votes.find_or_create_by!(councilman_id: c.id)
    end
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        flash[:success] = "Pauta criada com sucesso!"
        format.html { redirect_to @project }
        format.json { render :show, status: :created, location: @project }
      else
        flash[:error] = "Existem dados incorretos! Por favor verifique."
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        flash[:success] = "Pauta atualizada com sucesso!"
        format.html { redirect_to @project }
        format.json { render :show, status: :ok, location: @project }
      else
        flash[:error] = "Existem dados incorretos! Por favor verifique."
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_votes
    @project = Project.find(params[:project_id])
    vote_params = params.require(:project).permit(votes_attributes: [:id, :vote])

    if @project.update(vote_params)
      flash[:success] = 'Votos atualizados com sucesso'
    else
      flash[:error] = 'Não foi possível atualizar os dados'
    end

    redirect_to @project
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: "Pauta removida com sucesso." }
      format.json { head :no_content }
    end
  end

  def quorum
    presentes = Councilman.joins(:session_councilmen)
          .where(:session_councilmen => {meeting_id: @project.meeting_id, present: true}).count
    
    quorum = presentes * 100 / Councilman.all.size
    return quorum
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_result
    if (quorum < 66)
      @project.postponed!
    else
      votes = @project.votes.group(:vote).count
      favoravel = votes['favoravel'] * 100 / votes.values.sum
      if favoravel > 50
        @project.approved!
      else
        @project.rejected!
      end
    end
  end

  
  
  def set_project
    @project = Project.find(params[:id])
  end


  def set_meeting
    @meeting = Meeting.find(@project.meeting_id)
  end

  def set_session_councilmen
    @session_councilmen = SessionCouncilman.find(@meeting.session_councilman_ids)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def project_params
    params.require(:project).permit(:meeting_id, :councilman_id, :name, :description,
                                    :project_kind_id, :start_project, :end_project, :result)
  end
end
