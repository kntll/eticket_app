json.array!(@tickets) do |ticket|
  json.extract! ticket, :pdf, :price, :user_id, :event_id
  json.url ticket_url(ticket, format: :json)
end