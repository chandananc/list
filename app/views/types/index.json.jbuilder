json.array!(@types) do |type|
  json.extract! type, :id, :listing_type
  json.url type_url(type, format: :json)
end
