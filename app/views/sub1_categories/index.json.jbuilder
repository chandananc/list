json.array!(@sub1_categories) do |sub1_category|
  json.extract! sub1_category, :id, :listing_type, :category_id
  json.url sub1_category_url(sub1_category, format: :json)
end
