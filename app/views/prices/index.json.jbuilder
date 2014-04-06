json.array!(@prices) do |price|
  json.extract! price, :id, :price_name, :cost
  json.url price_url(price, format: :json)
end
