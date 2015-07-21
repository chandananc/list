json.array!(@statuses) do |status|
  json.extract! status, :id, :listing_status
  json.url status_url(status, format: :json)
end
