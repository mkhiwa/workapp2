json.extract! consultant_client, :id, :name, :contact, :email, :location, :request_by, :hourly_rate, :note, :created_at, :updated_at
json.url consultant_client_url(consultant_client, format: :json)
