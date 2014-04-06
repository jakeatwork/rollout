json.array!(@divisions) do |division|
  json.extract! division, :id, :d_name
  json.url division_url(division, format: :json)
end
