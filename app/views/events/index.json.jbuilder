json.array!(@events) do |event|
  json.extract! event, :name, :venue, :date
  json.url event_url(event, format: :json)
end