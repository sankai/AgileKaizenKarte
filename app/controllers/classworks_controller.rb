class ClassworksController < ApplicationController
  before_action :set_classwork, only: [:show, :edit, :update, :destroy]

  # GET /classworks
  # GET /classworks.json
  def index
    @classworks = Classwork.order("sessiondate desc")
  end

  # GET /classworks/1
  # GET /classworks/1.json
  def show
  end

  # GET /classworks/new
  def new
    @classwork = Classwork.new
  end

  # GET /classworks/1/edit
  def edit
  end

  # POST /classworks
  # POST /classworks.json
  def create
    @classwork = Classwork.new(classwork_params)

    respond_to do |format|
      if @classwork.save
        format.html { redirect_to @classwork, notice: 'Classwork was successfully created.' }
        format.json { render action: 'show', status: :created, location: @classwork }
      else
        format.html { render action: 'new' }
        format.json { render json: @classwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classworks/1
  # PATCH/PUT /classworks/1.json
  def update
    respond_to do |format|
      if @classwork.update(classwork_params)
        format.html { redirect_to @classwork, notice: 'Classwork was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @classwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classworks/1
  # DELETE /classworks/1.json
  def destroy
    @classwork.destroy
    respond_to do |format|
      format.html { redirect_to classworks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classwork
      @classwork = Classwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classwork_params
      params.require(:classwork).permit(:sessiondate, :term_id)
    end
end
