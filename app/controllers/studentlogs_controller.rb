class StudentlogsController < ApplicationController
  before_action :set_studentlog, only: [:show, :edit, :update, :destroy]

  # GET /studentlogs
  # GET /studentlogs.json
  def index
    @studentlogs = Studentlog.order("updated_at desc")
    if params[:student_id]
      @studentlogs = @studentlogs.where(:student_id => params[:student_id])
    end
  end

  # GET /studentlogs/1
  # GET /studentlogs/1.json
  def show
  end

  # GET /studentlogs/new
  def new
    @studentlog = Studentlog.new
    @studentlog.staff = current_staff
  end

  # GET /studentlogs/1/edit
  def edit
  end

  # POST /studentlogs
  # POST /studentlogs.json
  def create
    @studentlog = Studentlog.new(studentlog_params)
    @studentlog.staff = current_staff

    respond_to do |format|
      if @studentlog.save
        format.html { redirect_to @studentlog, notice: 'Studentlog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @studentlog }
      else
        format.html { render action: 'new' }
        format.json { render json: @studentlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentlogs/1
  # PATCH/PUT /studentlogs/1.json
  def update
    respond_to do |format|
      if @studentlog.update(studentlog_params)
        format.html { redirect_to @studentlog, notice: 'Studentlog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @studentlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentlogs/1
  # DELETE /studentlogs/1.json
  def destroy
    @studentlog.destroy
    respond_to do |format|
      format.html { redirect_to studentlogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentlog
      @studentlog = Studentlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentlog_params
      params.require(:studentlog).permit(:student_id, :sfaff_id, :contents)
    end
end
