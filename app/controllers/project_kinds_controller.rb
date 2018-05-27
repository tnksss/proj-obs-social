class ProjectKindsController < ApplicationController
  before_action :set_project_kind, only: [:show, :edit, :update, :destroy]

  # GET /project_kinds
  # GET /project_kinds.json
  def index
    @project_kinds = ProjectKind.all
  end

  # GET /project_kinds/1
  # GET /project_kinds/1.json
  def show
  end

  # GET /project_kinds/new
  def new
    @project_kind = ProjectKind.new
  end

  # GET /project_kinds/1/edit
  def edit
  end

  # POST /project_kinds
  # POST /project_kinds.json
  def create
    @project_kind = ProjectKind.new(project_kind_params)

    respond_to do |format|
      if @project_kind.save
        format.html { redirect_to @project_kind, notice: 'Project kind was successfully created.' }
        format.json { render :show, status: :created, location: @project_kind }
      else
        format.html { render :new }
        format.json { render json: @project_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_kinds/1
  # PATCH/PUT /project_kinds/1.json
  def update
    respond_to do |format|
      if @project_kind.update(project_kind_params)
        format.html { redirect_to @project_kind, notice: 'Project kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_kind }
      else
        format.html { render :edit }
        format.json { render json: @project_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_kinds/1
  # DELETE /project_kinds/1.json
  def destroy
    @project_kind.destroy
    respond_to do |format|
      format.html { redirect_to project_kinds_url, notice: 'Project kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_kind
      @project_kind = ProjectKind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_kind_params
      params.require(:project_kind).permit(:kind, :description)
    end
end
