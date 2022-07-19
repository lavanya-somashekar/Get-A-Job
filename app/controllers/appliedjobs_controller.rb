class AppliedjobsController < ApplicationController
  before_action :set_appliedjob, only: %i[ show edit update destroy ]

  # GET /appliedjobs or /appliedjobs.json
  def index
    @appliedjobs = Appliedjob.all
  end

  # GET /appliedjobs/1 or /appliedjobs/1.json
  def show
  end

  # GET /appliedjobs/new
  def new
    @appliedjob = Appliedjob.new
  end

  # GET /appliedjobs/1/edit
  def edit
  end

  # POST /appliedjobs or /appliedjobs.json
  def create
    @appliedjob = Appliedjob.new(appliedjob_params)

    respond_to do |format|
      if @appliedjob.save
        format.html { redirect_to appliedjob_url(@appliedjob), notice: "Appliedjob was successfully created." }
        format.json { render :show, status: :created, location: @appliedjob }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appliedjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appliedjobs/1 or /appliedjobs/1.json
  def update
    respond_to do |format|
      if @appliedjob.update(appliedjob_params)
        format.html { redirect_to appliedjob_url(@appliedjob), notice: "Appliedjob was successfully updated." }
        format.json { render :show, status: :ok, location: @appliedjob }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appliedjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appliedjobs/1 or /appliedjobs/1.json
  def destroy
    @appliedjob.destroy

    respond_to do |format|
      format.html { redirect_to appliedjobs_url, notice: "Appliedjob was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appliedjob
      @appliedjob = Appliedjob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appliedjob_params
      params.require(:appliedjob).permit(:status, :job_id, :user_id, :resume)
    end
end
