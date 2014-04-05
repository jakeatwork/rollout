json.array!(@launches) do |launch|
  json.extract! launch, :id, :beta, :betadate, :startdate
  json.url launch_url(launch, format: :json)
end
