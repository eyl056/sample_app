class LeadActivitiesController < ApplicationController
  before_action :set_lead_activity, only: %i[ show edit update destroy ]

  # GET /lead_activities or /lead_activities.json
  def index
    @lead_activities = LeadActivity.all
  end

  # GET /lead_activities/1 or /lead_activities/1.json
  def show
  end

  # GET /lead_activities/new
  def new
    @lead_activity = LeadActivity.new
  end

  # GET /lead_activities/1/edit
  def edit
  end

  # POST /lead_activities or /lead_activities.json
  def create
    @lead_activity = LeadActivity.new(lead_activity_params)

    respond_to do |format|
      if @lead_activity.save
        format.html { redirect_to @lead_activity, notice: "Lead activity was successfully created." }
        format.json { render :show, status: :created, location: @lead_activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lead_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lead_activities/1 or /lead_activities/1.json
  def update
    respond_to do |format|
      if @lead_activity.update(lead_activity_params)
        format.html { redirect_to @lead_activity, notice: "Lead activity was successfully updated." }
        format.json { render :show, status: :ok, location: @lead_activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lead_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lead_activities/1 or /lead_activities/1.json
  def destroy
    @lead_activity.destroy
    respond_to do |format|
      format.html { redirect_to lead_activities_url, notice: "Lead activity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead_activity
      @lead_activity = LeadActivity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lead_activity_params
      params.require(:lead_activity).permit(:lead_activity_id, :activity_type_id, :created_by, :created_at, :lead_notes_content, :lead_email_group_id, :lead_email_order, :lead_email_order, :lead_email_thread_number, :lead_email_from, :lead_email_to, :lead_email_title, :lead_email_content)
    end
end
