json.array!(@section_data) do |section_datum|
  json.extract! section_datum, :data
  json.url section_datum_url(section_datum, format: :json)
end
