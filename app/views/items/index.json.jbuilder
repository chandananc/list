json.array!(@items) do |item|
  json.extract! item, :id, :name, :sqft, :rooms, :built_year, :cost, :address, :category_id
  json.url item_url(item, format: :json)
end
