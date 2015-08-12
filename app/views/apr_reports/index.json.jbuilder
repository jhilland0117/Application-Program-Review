json.array!(@apr_reports) do |apr_report|
  json.extract! apr_report, :name
  json.url apr_report_url(apr_report, format: :json)
end
