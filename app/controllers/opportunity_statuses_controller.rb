class OpportunityStatusesController < ApplicationController
  before_action :set_opportunity_status, only: %i[ show edit update destroy ]

  # GET /opportunity_statuses or /opportunity_statuses.json
  def index
    @opportunity_statuses = OpportunityStatus.all
  end

  # GET /opportunity_statuses/1 or /opportunity_statuses/1.json
  def show
  end

  # GET /opportunity_statuses/new
  def new
    @opportunity_status = OpportunityStatus.new
  end

  # GET /opportunity_statuses/1/edit
  def edit
  end

  # POST /opportunity_statuses or /opportunity_statuses.json
  def create
    @opportunity_status = OpportunityStatus.new(opportunity_status_params)

    respond_to do |format|
      if @opportunity_status.save
        format.html { redirect_to @opportunity_status, notice: "Opportunity status was successfully created." }
        format.json { render :show, status: :created, location: @opportunity_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @opportunity_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opportunity_statuses/1 or /opportunity_statuses/1.json
  def update
    respond_to do |format|
      if @opportunity_status.update(opportunity_status_params)
        format.html { redirect_to @opportunity_status, notice: "Opportunity status was successfully updated." }
        format.json { render :show, status: :ok, location: @opportunity_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @opportunity_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opportunity_statuses/1 or /opportunity_statuses/1.json
  def destroy
    @opportunity_status.destroy
    respond_to do |format|
      format.html { redirect_to opportunity_statuses_url, notice: "Opportunity status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opportunity_status
      @opportunity_status = OpportunityStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def opportunity_status_params
      params.require(:opportunity_status).permit(:opportunity_status_id, :oppotunity_status_name, :process)
    end
end
