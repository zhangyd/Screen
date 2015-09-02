class WritesController < ApplicationController
	before_action :set_write, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  before_action :authenticate_admin!

	def index
    @writes = Write.all
    @people = Person.all
    @publications = Publication.all
  end

	def show
  end

	# GET /projects/new
  def new
    @write = Write.new
    @people = Person.all
    @publications = Publication.all
  end

  def edit
    @people = Person.all
    @publications = Publication.all
  end

  def create
    @write = Write.new(write_params)

    respond_to do |format|
      if @write.save
        format.html { redirect_to @write, notice: 'Write was successfully created.' }
        format.json { render :show, status: :created, location: @write }
      else
        format.html { render :new }
        format.json { render json: @write.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @write.update(write_params)
        format.html { redirect_to @write, notice: 'Write was successfully updated.' }
        format.json { render :show, status: :ok, location: @write }
      else
        format.html { render :edit }
        format.json { render json: @write.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @write.destroy
    respond_to do |format|
      format.html { redirect_to writes_url, notice: 'Write was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_write
      @write = Write.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def write_params
      params.require(:write).permit(:person_id, :publication_id)
    end
end