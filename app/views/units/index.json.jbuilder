json.array!(@units) do |unit|
  json.extract! unit, :unit_name
  json.url unit_url(unit, format: :json)
end
