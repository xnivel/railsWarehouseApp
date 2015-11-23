json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :note
  json.url product_url(product, format: :json)
end
