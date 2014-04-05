json.array!(@clients) do |client|
  json.extract! client, :id, :name, :division, :region
  json.url client_url(client, format: :json)
end
