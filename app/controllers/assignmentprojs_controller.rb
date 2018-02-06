class AssignmentprojsController < ApplicationController
  before_action :set_assignmentproj, only: [:show, :edit, :update, :destroy]

  # GET /assignmentprojs
  # GET /assignmentprojs.json
  def index
    @assignmentprojs = Assignmentproj.all
  end

  # GET /assignmentprojs/1
  # GET /assignmentprojs/1.json
  def show
  end

  # GET /assignmentprojs/new
  def new
    @assignmentproj = Assignmentproj.new
  end

  # GET /assignmentprojs/1/edit
  def edit
  end

  # POST /assignmentprojs
  # POST /assignmentprojs.json
  def create
    @assignmentproj = Assignmentproj.new(assignmentproj_params)

    respond_to do |format|
      if @assignmentproj.save
        ua = UserAssignmentproj.new(assignmentproj_id: @assignmentproj.id,
          user_id: params[:user_id])
        ua.save
        format.html { redirect_to @assignmentproj, notice: 'Assignmentproj was successfully created.' }
        format.json { render :show, status: :created, location: @assignmentproj }
      else
        format.html { render :new }
        format.json { render json: @assignmentproj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignmentprojs/1
  # PATCH/PUT /assignmentprojs/1.json
  def update
    respond_to do |format|
      if @assignmentproj.update(assignmentproj_params)
        format.html { redirect_to @assignmentproj, notice: 'Assignmentproj was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignmentproj }
      else
        format.html { render :edit }
        format.json { render json: @assignmentproj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignmentprojs/1
  # DELETE /assignmentprojs/1.json
  def destroy
    @assignmentproj.destroy
    respond_to do |format|
      format.html { redirect_to assignmentprojs_url, notice: 'Assignmentproj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignmentproj
      @assignmentproj = Assignmentproj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignmentproj_params
      params.require(:assignmentproj).permit(:name, :description, :realized)
    end
end
