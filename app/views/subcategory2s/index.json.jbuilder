json.array!(@subcategory2s) do |subcategory2|
  json.extract! subcategory2, :id, :listing_status, :category_id
  json.url subcategory2_url(subcategory2, format: :json)
end
