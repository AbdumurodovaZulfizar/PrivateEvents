json.extract! event, :id, :name, :date, :location, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
