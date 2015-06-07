class CourseitemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_courseitem, only: [:show, :edit, :update, :destroy]
  before_action :set_course
  layout 'account'
  # GET /courseitems
  # GET /courseitems.json
  def index
    @courseitems = @course.courseitems.all
  end

  # GET /courseitems/1
  # GET /courseitems/1.json
  def show
  end

  # GET /courseitems/new
  def new
    @courseitem = @course.courseitems.new
  end

  # GET /courseitems/1/edit
  def edit
  end

  # POST /courseitems
  # POST /courseitems.json
  def create
    @courseitem = @course.courseitems.new(courseitem_params)

    respond_to do |format|
      if @courseitem.save
        format.html { redirect_to course_courseitems_path(@course), notice: 'Courseitem was successfully created.' }
        format.json { render :show, status: :created, location: @courseitem }
      else
        format.html { render :new }
        format.json { render json: @courseitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courseitems/1
  # PATCH/PUT /courseitems/1.json
  def update
    respond_to do |format|
      if @courseitem.update(courseitem_params)
        format.html { redirect_to course_courseitems_path(@course), notice: 'Courseitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @courseitem }
      else
        format.html { render :edit }
        format.json { render json: @courseitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courseitems/1
  # DELETE /courseitems/1.json
  def destroy
    @courseitem.destroy
    respond_to do |format|
      format.html { redirect_to course_courseitems_url, notice: 'Courseitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_courseitem
      @courseitem = Courseitem.find(params[:id])
    end

    def set_course
      @course = Course.find(params[:course_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def courseitem_params
      params.require(:courseitem).permit(:title, :intro, :image, :publish, :course_id, :description, :time)
    end
end
