require 'test_helper'

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule = schedules(:one)
  end

  test "should get index" do
    get schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_url
    assert_response :success
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post schedules_url, params: { schedule: { day_of_week: @schedule.day_of_week, description: @schedule.description, period_end: @schedule.period_end, period_start: @schedule.period_start, subject: @schedule.subject, week_end: @schedule.week_end, week_start: @schedule.week_start, year: @schedule.year } }
    end

    assert_redirected_to schedule_url(Schedule.last)
  end

  test "should show schedule" do
    get schedule_url(@schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_url(@schedule)
    assert_response :success
  end

  test "should update schedule" do
    patch schedule_url(@schedule), params: { schedule: { day_of_week: @schedule.day_of_week, description: @schedule.description, period_end: @schedule.period_end, period_start: @schedule.period_start, subject: @schedule.subject, week_end: @schedule.week_end, week_start: @schedule.week_start, year: @schedule.year } }
    assert_redirected_to schedule_url(@schedule)
  end

  test "should destroy schedule" do
    assert_difference('Schedule.count', -1) do
      delete schedule_url(@schedule)
    end

    assert_redirected_to schedules_url
  end
end
