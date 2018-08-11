json.extract! event, :id, :title, :date_start, :time_from, :time_to, :location, :host_name, :host_contact, :content, :created_at, :updated_at
json.url event_url(event, format: :json)
