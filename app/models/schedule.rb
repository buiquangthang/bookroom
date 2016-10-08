class Schedule < ApplicationRecord
  belongs_to :room
  belongs_to :user
  belongs_to :course

    def self.dup_time?(schedule)
    temp = Schedule.where(room_id: schedule.room_id, day_of_week: schedule.day_of_week, year: schedule.year)
    temp.each do |t|
      if (check_condition1(t.period_start, schedule.period_start, t.period_end) || check_condition1(t.period_start, schedule.period_start, t.period_end) || check_condition2(t.period_start, schedule.period_start, schedule.period_end, t.period_end)) && (check_condition1(t.week_start, schedule.week_start, t.week_end) || check_condition1(t.week_start, schedule.week_start, t.week_end) || check_condition2(t.week_start, schedule.week_start, schedule.week_end, t.week_end))
        return true
      end
    end
    return false
  end

  def self.dup_class?(schedule)
    temp = Schedule.where(course_id: schedule.course_id, day_of_week: schedule.day_of_week, year: schedule.year)
    temp.each do |t|
      if (check_condition1(t.period_start, schedule.period_start, t.period_end) || check_condition1(t.period_start, schedule.period_start, t.period_end) || check_condition2(t.period_start, schedule.period_start, schedule.period_end, t.period_end)) && (check_condition1(t.week_start, schedule.week_start, t.week_end) || check_condition1(t.week_start, schedule.week_start, t.week_end) || check_condition2(t.week_start, schedule.week_start, schedule.week_end, t.week_end))
        return true
      end
    end
    return false
  end

  def self.check_condition1(start, value, _end)
    if start <= value && value <= _end
      return true
    else
      return false
    end
  end

  def self.check_condition2(start, value_start, value_end, _end)
    if start > value_start && value_end > _end
      return true
    else
      return false
    end
  end
end
