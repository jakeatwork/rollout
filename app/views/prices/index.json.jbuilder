json.array!(@prices) do |price|
  json.extract! price, :id, :type, :cost
  json.url price_url(price, format: :json)
end
