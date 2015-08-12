class SectionDataController < ApplicationController
  before_action :set_section_datum, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token, :only => [:destroy]
  #before_filter :authenticate_user!

  layout 'user'

  # GET /section_data
  # GET /section_data.json
  def index
    @section_data = SectionDatum.all
  end

  # GET /section_data/1
  # GET /section_data/1.json
  def show
    @section_datum=SectionDatum.find(params[:id])
  end

  # GET /section_data/new
  def new
    @section_datum = SectionDatum.new
  end

  # GET /section_data/1/edit
  def edit
  end

  # POST /section_data
  # POST /section_data.json
  def create
    @section_datum = SectionDatum.new(section_datum_params)

    respond_to do |format|
      if @section_datum.save
        format.html { redirect_to @section_datum, notice: 'Section datum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @section_datum }
      else
        format.html { render action: 'new' }
        format.json { render json: @section_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_data/1
  # PATCH/PUT /section_data/1.json
  def update
    respond_to do |format|
      if @section_datum.update(section_datum_params)
        format.html { redirect_to @section_datum, notice: 'Section datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @section_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_data/1
  # DELETE /section_data/1.json
  def destroy
    @section_datum.destroy
    respond_to do |format|
      format.html { redirect_to section_data_url }
      format.json { head :no_content }
    end
  end
  def mercury_update
    section_datum=SectionDatum.find(params[:id])
    section_datum.data=params[:content][:section_data_editor][:value]
    section_datum.save
    render :text => '{}'
   
 end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_datum
      @section_datum = SectionDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_datum_params
      params.require(:section_datum).permit(:data, :apr_report_id, :section_id)
    end
end
