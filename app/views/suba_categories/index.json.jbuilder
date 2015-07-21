json.array!(@suba_categories) do |suba_category|
  json.extract! suba_category, :id, :listing_type, :category_id
  json.url suba_category_url(suba_category, format: :json)
end
