json.extract! room, :id, :name, :status, :quantity, :created_at, :updated_at
json.url room_url(room, format: :json)