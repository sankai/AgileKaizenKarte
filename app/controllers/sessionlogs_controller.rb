class SessionlogsController < ApplicationController
  before_action :set_sessionlog, only: [:show, :edit, :update, :destroy]

  # GET /sessionlogs
  # GET /sessionlogs.json
  def index
    @sessionlogs = Sessionlog.order("updated_at desc")
    if params[:classwork_id]
      @sessionlogs = @sessionlogs.where(:classwork_id => params[:classwork_id])
    end
  end

  # GET /sessionlogs/1
  # GET /sessionlogs/1.json
  def show
  end

  # GET /sessionlogs/new
  def new
    @sessionlog = Sessionlog.new
    @sessionlog.staff = current_staff
  end

  # GET /sessionlogs/1/edit
  def edit
  end

  # POST /sessionlogs
  # POST /sessionlogs.json
  def create
    @sessionlog = Sessionlog.new(sessionlog_params)
    @sessionlog.staff = current_staff

    respond_to do |format|
      if @sessionlog.save
        format.html { redirect_to @sessionlog, notice: 'Sessionlog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sessionlog }
      else
        format.html { render action: 'new' }
        format.json { render json: @sessionlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessionlogs/1
  # PATCH/PUT /sessionlogs/1.json
  def update
    respond_to do |format|
      if @sessionlog.update(sessionlog_params)
        format.html { redirect_to @sessionlog, notice: 'Sessionlog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sessionlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessionlogs/1
  # DELETE /sessionlogs/1.json
  def destroy
    @sessionlog.destroy
    respond_to do |format|
      format.html { redirect_to sessionlogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sessionlog
      @sessionlog = Sessionlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sessionlog_params
      params.require(:sessionlog).permit(:classwork_id, :sfaff_id, :student_id, :contents)
    end
end
