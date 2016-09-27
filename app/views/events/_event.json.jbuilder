json.extract! event, :id, :title, :description, :time_start, :period, :created_at, :updated_at
json.url event_url(event, format: :json)