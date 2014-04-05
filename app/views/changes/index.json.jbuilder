json.array!(@changes) do |change|
  json.extract! change, :id, :date, :note
  json.url change_url(change, format: :json)
end
