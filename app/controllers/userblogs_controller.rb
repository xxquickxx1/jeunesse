class UserblogsController < ApplicationController
  before_action :authenticate_user!, except: :show
  before_action :set_template
  before_action :set_userblog, only: [:show, :edit, :update, :destroy]
  before_action :to_param, only: [:create]
  
  layout 'account'
  # GET /userblogs
  # GET /userblogs.json
  def index
    @userblogs = @template.userblogs.all
  end

  # GET /userblogs/1
  # GET /userblogs/1.json
  def show
   @page_title = @userblog.seo_title.capitalize
   @page_description = @userblog.meta_description.capitalize
   @page_keywords = @userblog.tags

  end

  # GET /userblogs/new
  def new
    @userblog = @template.userblogs.new
  end

  # GET /userblogs/1/edit
  def edit
  end

  # POST /userblogs
  # POST /userblogs.json
  def create
    @template1 = current_user.templates.find(params[:template_id])
    @userblog = @template1.userblogs.new(userblog_params)

    respond_to do |format|
      if @userblog.save
        format.html { redirect_to template_userblogs_path(@template), notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @userblog }
      else
        format.html { render :new }
        format.json { render json: @userblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userblogs/1
  # PATCH/PUT /userblogs/1.json
  def update
    respond_to do |format|
      if @userblog.update(userblog_params)
        format.html { redirect_to template_userblogs_path(@template), notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @userblog }
      else
        format.html { render :edit }
        format.json { render json: @userblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userblogs/1
  # DELETE /userblogs/1.json
  def destroy
    @userblog.destroy
    respond_to do |format|
      format.html { redirect_to template_userblogs_path(@template), notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_template
      @template = current_user.templates.find(params[:template_id])
    end
    def set_userblog
      @userblog = @template.userblogs.friendly.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def userblog_params
      params.require(:userblog).permit(:title, :subtitle, :intro, :description, :tags, :seo_title, :meta_description, :template_id)
    end
end
