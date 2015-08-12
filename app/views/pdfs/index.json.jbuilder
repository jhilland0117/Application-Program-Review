json.array!(@pdfs) do |pdf|
  json.extract! pdf, :url, :temp_url
  json.url pdf_url(pdf, format: :json)
end
