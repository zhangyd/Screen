class WorksController < ApplicationController
	before_action :set_work, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, :only => [:new,:create,:destroy,:edit,:update]
  before_action :authenticate_admin!
  
	def index
    @works = Work.all
    @projects = Project.all
    @people = Person.all
  end

	def show
  end

	# GET /projects/new
  def new
    @work = Work.new
    @projects = Project.all
    @people = Person.all
  end

  def edit
    @projects = Project.all
    @people = Person.all
  end

  def create
    @work = Work.new(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to @work, notice: 'Work was successfully created.' }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to @work, notice: 'Work was successfully updated.' }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: 'Work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:project_id, :person_id)
    end

end