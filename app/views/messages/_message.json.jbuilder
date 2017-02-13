json.extract! message, :id, :title, :description, :created_at, :updated_at
json.url message_url(message, format: :json)