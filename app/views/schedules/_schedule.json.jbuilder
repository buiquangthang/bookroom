json.extract! schedule, :id, :subject, :description, :period_start, :period_end, :day_of_week, :week_start, :week_end, :year, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)