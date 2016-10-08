class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :get_rooms_and_course, only: [:new, :edit]
  # GET /schedules
  # GET /schedules.json
  def index
    # @week = Time.now.strftime("%W")
    # @day_of_week = Time.now.strftime("%A")
    # @schedules = Schedule.where(
    #   "day_of_week = ? AND week_start <= ? AND week_end >= ?",
    #   @day_of_week, @week, @week).all
    @schedules = Schedule.all
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = current_user.schedules.build
  end

  # GET /schedules/1/edit
  def edit
    authorize @schedule
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = current_user.schedules.build(schedule_params)
    authorize @schedule
    if Schedule.dup_time?(@schedule) || Schedule.dup_class?(@schedule)
      redirect_back(fallback_location: session[:previous], alert: 'Conflict Time!')
    elsif @schedule.save
      redirect_to @schedule, notice: 'Schedule was successfully created.'
    else
      render 'new'
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    @schedule = current_user.schedules.build(schedule_params)
    authorize @schedule
    if Schedule.dup_time?(@schedule) || Schedule.dup_class?(@schedule)
      binding.pry
      redirect_back(fallback_location: session[:previous], alert: 'Conflict Time!')
    elsif @schedule.save
      redirect_to @schedule, notice: 'Schedule was successfully updated.'
    else
      render 'new'
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    authorize @schedule
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:subject, :description, :period_start, :period_end, :day_of_week, :week_start, :week_end, :year, :room_id, :course_id)
    end

    def get_rooms_and_course
      @rooms = Room.all
      @courses = Course.all
    end
end
