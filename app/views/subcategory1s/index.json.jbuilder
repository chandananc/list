json.array!(@subcategory1s) do |subcategory1|
  json.extract! subcategory1, :id, :listing_type, :category_id
  json.url subcategory1_url(subcategory1, format: :json)
end
