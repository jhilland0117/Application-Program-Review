class AprReportsController < ApplicationController
  before_action :set_apr_report, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token, :only => [:destroy]
  before_filter :authenticate_user!

  layout 'user'

  # GET /apr_reports
  # GET /apr_reports.json
  def index
    @apr_reports = AprReport.all
  end

  # GET /apr_reports/1
  # GET /apr_reports/1.json
  def show
  end

  # GET /apr_reports/new
  def new
    @apr_report = AprReport.new
  end

  # GET /apr_reports/1/edit
  def edit
  end

  # POST /apr_reports
  # POST /apr_reports.json
  def create
    @apr_report = AprReport.new(apr_report_params)

    respond_to do |format|
      if @apr_report.save
        format.html { redirect_to @apr_report, notice: 'Apr report was successfully created.' }
        format.json { render action: 'show', status: :created, location: @apr_report }
      else
        format.html { render action: 'new' }
        format.json { render json: @apr_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apr_reports/1
  # PATCH/PUT /apr_reports/1.json
  def update
    respond_to do |format|
      if @apr_report.update(apr_report_params)
        format.html { redirect_to @apr_report, notice: 'Apr report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @apr_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apr_reports/1
  # DELETE /apr_reports/1.json
  def destroy
    @apr_report.destroy
    respond_to do |format|
      format.html { redirect_to apr_reports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apr_report
      @apr_report = AprReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apr_report_params
      params.require(:apr_report).permit(:name, :unit_id, :type_id)
    end
end
