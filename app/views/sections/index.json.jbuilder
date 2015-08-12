json.array!(@sections) do |section|
  json.extract! section, :section_number, :description
  json.url section_url(section, format: :json)
end
