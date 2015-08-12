json.array!(@criterions) do |criterion|
  json.extract! criterion, :criterion_number, :name, :description
  json.url criterion_url(criterion, format: :json)
end
