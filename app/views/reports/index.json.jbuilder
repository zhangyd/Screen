json.array!(@reports) do |report|
  json.extract! report, :id, :project_id, :headline, :content
  json.url report_url(report, format: :json)
end
