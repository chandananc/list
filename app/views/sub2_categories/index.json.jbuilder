json.array!(@sub2_categories) do |sub2_category|
  json.extract! sub2_category, :id, :listing_status, :category_id
  json.url sub2_category_url(sub2_category, format: :json)
end
