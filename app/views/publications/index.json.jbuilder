json.array!(@publications) do |publication|
  json.extract! publication, :id, :project_id, :title, :link
  json.url publication_url(publication, format: :json)
end
